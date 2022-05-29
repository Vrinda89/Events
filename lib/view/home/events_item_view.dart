import 'package:events_book/model/eventitem.dart';
import 'package:events_book/util/app_text_styles.dart';
import 'package:events_book/util/palette.dart';
import 'package:events_book/view/home/event_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../util/date_formatter.dart';
import '../../viewmodel/home_provider.dart';

class EventsItemView extends StatelessWidget {
  final EventItem? eventsItem;
  final Function(EventItem) onClickChanged;

  const EventsItemView({super.key, this.eventsItem, required this.onClickChanged});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (eventsItem != null) {
          onClickChanged.call(eventsItem!);
        }
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Palette.divider)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      EventImage(
                        url: eventsItem?.event?.performers?.first.image,
                        width: 80.0,
                        height: 80.0,
                      ),
                       Visibility(
                        visible: eventsItem?.isFavourite ?? false,
                        child: const Positioned(
                          left: -2,
                          top: -2,
                          child: Image(
                            width: 20,
                            height: 20,
                            color: Palette.buttonRed,
                            image: AssetImage('images/favourite.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(eventsItem?.event?.venue?.name ?? "",
                              style: AppTextStyle.textStyle22Bold()),
                          const SizedBox(height: 5),
                          Text(eventsItem?.event?.venue?.display_location ?? "",
                              style: AppTextStyle.textStyle14Normal()),
                          const SizedBox(height: 5),
                          Text(DateFormatter()
                                  .getFormattedUTC(eventsItem?.event?.datetime_utc ?? ""),
                              style: AppTextStyle.textStyle14Normal())
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
