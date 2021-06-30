import 'package:flutter/widgets.dart';
import 'package:todolist_app/screens/task_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => TaskScreen(),
  // '/registration': (BuildContext context) => RegistrationScreen(),
  // '/login': (BuildContext context) => LoginScreen(),
  // '/chat': (BuildContext context) => ChatScreen()
};
