import 'package:intl/intl.dart';

class Messages {

  /* !! method name 과 'name' property 는 일치 해야 함. !! */

  String get widgetMessage => Intl.message("widget message",
    name: "widgetMessage"
  );

  String get appName => Intl.message("Pomangam",
    name: "appName"
  );
}