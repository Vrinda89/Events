import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:events_book/api/api_events.dart';
import 'package:events_book/util/preference.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/eventitem.dart';
import '../model/response.dart';

class HomeScreenProvider with ChangeNotifier {
  List<EventItem> eventsListItems = [];
  String query = "";
  bool isSuffixVisible = false;
  bool isSearchButton = true;
  bool isNetworkAvailable = true;
  bool isLoading = false;

  int perPage = 15;
  int pageNo = 1;
  int total = 0;

  void fetchEvents() async {
    getEvents(false);
  }

  void searchEvents() async {
    pageNo = 1;
    getEvents(false);

  }

  void getEvents(bool isSearch) async {
    var isConnected = await isNetworkConnected();
    if (!isConnected) {
      isNetworkAvailable = false;
      notifyListeners();
      return;
    } else {
      isNetworkAvailable = true;
    }
    _showOrHideLoading(true);

    http.Response response;
    if (isSearch) {
      response = await http.get(ApiEvents().search(query, perPage, pageNo));
    } else {
      response = await http.get(ApiEvents().events(perPage, pageNo));
    }
    if (response.statusCode == 200) {
      updateResponse(response);
      _showOrHideLoading(false);
      if (isSearch) isSearchButton = false;
    } else {
      _showOrHideLoading(false);
      if (isSearch) isSearchButton = false;
      throw Exception('Failed to load events');
    }
  }

  void updateResponse(http.Response response) async {
    var decode = json.decode(response.body);
    Response response2 = Response.fromJson(decode);
    total = response2.meta?.total ?? 0;
    List<int> ids = await getFavouritesId();
    if (pageNo == 1) eventsListItems.clear();
    response2.events?.forEach((element) {
      eventsListItems.add(EventItem(element, ids.contains(element.id)));
    });
    notifyListeners();
  }

  Future<List<int>> getFavouritesId() async {
    List<int> ids = [];
    String favouritesTxt = await PreferenceUtil().getFavouriteIds();
    if (favouritesTxt.isNotEmpty) {
      var favourites = List<int>.from(jsonDecode(favouritesTxt));
      ids.addAll(favourites);
    }
    return ids;
  }

  void setSearchQuery(String value) {
    query = value;
    isSuffixVisible = value.isNotEmpty;
    notifyListeners();
  }

  Future<bool> isNetworkConnected() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi);
  }

  void _showOrHideLoading(bool loading) {
    isLoading = loading;
    notifyListeners();
  }

  void resetSearch(bool isSearchEnabled) {
    isSearchButton = isSearchEnabled;
    notifyListeners();
  }

  Future<void> addOrRemoveFavourites(int? id) async {
    try {
      if (id == null) {
        return;
      }
      String favouritesTxt = await PreferenceUtil().getFavouriteIds();
      if (favouritesTxt.isNotEmpty) {
        var favourites = List<int>.from(jsonDecode(favouritesTxt));
        if (favourites.contains(id)) {
          favourites.remove(id);
        } else {
          favourites.add(id);
        }
        await PreferenceUtil().setFavouriteIds(jsonEncode(favourites));
      } else {
        List<int> list = [];
        list.add(id);
        await PreferenceUtil().setFavouriteIds(jsonEncode(list));
      }
    } catch (ex) {
      if (kDebugMode) {
        print(ex);
      }
    }
  }

  void updateFavorite(EventItem events) {
    addOrRemoveFavourites(events.event?.id);
    eventsListItems
        .firstWhere((element) => element.event?.id == events.event?.id)
        .isFavourite = !events.isFavourite;
    notifyListeners();
  }

  void loadMore() {
    if (hasNextPage()) {
      pageNo += 1;
      fetchEvents();
    }
  }

  bool hasNextPage() {
    return total > 0 && (pageNo * perPage < total);
  }

  void enableSearchButton() {
    isSearchButton = true;
    notifyListeners();
  }
}
