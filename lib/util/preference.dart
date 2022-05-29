import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtil {
  static const favourites = "favourites";

  Future<String> getFavouriteIds() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(favourites) ?? "";
  }

  Future<void> setFavouriteIds(String ids) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(favourites, ids);
  }
}
