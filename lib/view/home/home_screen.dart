import 'package:events_book/model/eventitem.dart';
import 'package:events_book/view/details/event_details.dart';
import 'package:events_book/view/home/events_item_view.dart';
import 'package:events_book/view/home/search_bar.dart';
import 'package:events_book/view/widgets/network_error_screen.dart';
import 'package:events_book/viewmodel/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final dataProvider = Provider.of<HomeScreenProvider>(context, listen: false);
    dataProvider.fetchEvents();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        dataProvider.loadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HomeScreenProvider>(context);
    return Scaffold(
        appBar: const SearchBar(),
        body: Stack(
          children: [
            Container(
              child: dataProvider.isNetworkAvailable
                  ? SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ListView.builder(
                              scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: dataProvider.eventsListItems.length,
                              itemBuilder: (ctx, i) {
                                return EventsItemView(
                                  eventsItem: dataProvider.eventsListItems[i],
                                  onClickChanged: (events) {
                                    navigateToDetailScreen(events);
                                  },
                                );
                              }),
                        ],
                      ),
                    )
                  : NetworkErrorScreen(
                      onClick: () {
                        dataProvider.fetchEvents();
                      },
                    ),
            ),
            Visibility(
              visible: dataProvider.isLoading,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ));
  }

  void navigateToDetailScreen(EventItem eventItem) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => EventDetailsScreen(eventItem: eventItem)));
  }
}
