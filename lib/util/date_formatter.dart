import 'package:intl/intl.dart';

class DateFormatter{
 String getFormattedUTC(String date) {
   var temp = DateTime.parse('${date}Z');
   var utc = temp.toUtc();
   var formattedDate=DateFormat("EEE dd MMM yyyy hh:mm:ss a ").format(utc);
   return formattedDate;}

}