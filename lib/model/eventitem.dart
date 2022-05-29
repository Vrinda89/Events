import 'package:events_book/model/events.dart';

class EventItem {
  Events? event;
  bool isFavourite = true;

  EventItem(this.event, this.isFavourite);
}
