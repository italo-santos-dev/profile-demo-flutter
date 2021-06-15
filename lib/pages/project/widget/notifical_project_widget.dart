import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificalProjectWidget extends StatefulWidget {
  const NotificalProjectWidget({Key? key}) : super(key: key);

  @override
  _NotificalProjectWidgetState createState() => _NotificalProjectWidgetState();
}

class _NotificalProjectWidgetState extends State<NotificalProjectWidget> {
  // late AndroidFlutterLocalNotificationsPlugin localNotification;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   var androidInitialize = new AndroidInitializationSettings('ic_launcher');
  //   var iOSIntialize = new IOSInitializationSettings();
  //   var initialzationSettings = new InitializationSettings(
  //       android: androidInitialize, iOS: iOSIntialize);

  //   localNotification = new FlutterLocalNotificationsPlugin()
  //       as AndroidFlutterLocalNotificationsPlugin;
  //   localNotification.initialize(initialzationSettings);
  // }

  // Future _showNotification() async {
  //   var androidDetails = new AndroidNotificationDetails(
  //     "channelId",
  //     "Local Notification",
  //     "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod veniam, quis nostrud exercitation.",
  //     importance: Importance.high,
  //   );
  //   var iosDetails = new IOSNotificationDetails();
  //   var generalNotificationDetails = new NotificationDetails(
  //     android: androidDetails,
  //     iOS: iosDetails,
  //   );
  //   await localNotification.show(
  //     0,
  //     "Notif Title",
  //     "The body of the Notification",
  //     generalNotificationDetails,
  //   );
  // }

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOS = new IOSInitializationSettings();
    var initSetttings = new InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(payload) async {
    debugPrint("payload : $payload");
    await showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text('Notification'),
        content: new Text('$payload'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Click the button to recieve a notification"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showNotification,
        child: Icon(Icons.notifications),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: new AppBar(
  //       title: new Text('Flutter Local Notification'),
  //     ),
  //     body: new Center(
  //       child: new RaisedButton(
  //         onPressed: showNotification,
  //         child: new Text(
  //           'Tap To Get a Notification',
  //           style: Theme.of(context).textTheme.headline,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  showNotification() async {
    var android = new AndroidNotificationDetails(
        'channel id', 'channel NAME', 'CHANNEL DESCRIPTION',
        priority: Priority.high, importance: Importance.max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: iOS);
    await flutterLocalNotificationsPlugin.show(
        0, 'New Tutorial', 'Local Notification', platform,
        payload: 'AndroidCoding.in');
  }
}
