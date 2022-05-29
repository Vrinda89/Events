import 'package:events_book/model/eventitem.dart';
import 'package:events_book/util/app_text_styles.dart';
import 'package:events_book/view/home/event_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../util/date_formatter.dart';
import '../../util/palette.dart';
import '../../viewmodel/home_provider.dart';

class EventDetailsScreen extends StatefulWidget {
  final EventItem eventItem;

  const EventDetailsScreen({
    Key? key,
    required this.eventItem,
  }) : super(key: key);

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HomeScreenProvider>(context);
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        title: Text(widget.eventItem.event?.venue?.name ?? "",
            style: AppTextStyle.textStyle22Bold()),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.lightBlue,
          ),
          onPressed: () {
            Navigator.pop(
                context,
                dataProvider.eventsListItems.firstWhere((element) =>
                    element.event?.id == widget.eventItem.event?.id));
          },
        ),
        actions: [
          InkWell(
            onTap: () {
              dataProvider.updateFavorite(widget.eventItem);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                width: 20,
                height: 20,
                color: Palette.buttonRed,
                image: dataProvider.eventsListItems
                        .firstWhere((element) =>
                            element.event?.id == widget.eventItem.event?.id)
                        .isFavourite
                    ? const AssetImage('images/favourite.png')
                    : const AssetImage('images/ic_unselected.png'),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EventImage(
                url: widget.eventItem.event?.performers?.first.image,
                width: MediaQuery.of(context).size.width,
                boxFit: BoxFit.fitWidth),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                DateFormatter().getFormattedUTC(
                    widget.eventItem.event?.datetime_utc ?? ""),
                style: AppTextStyle.textStyle22Bold(),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                widget.eventItem.event?.venue?.display_location ?? "",
                style: AppTextStyle.textStyle14Normal(
                    textColor: Palette.textFieldSecondary),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
