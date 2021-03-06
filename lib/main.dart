import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/theme/themes.dart';
import 'package:todolist_app/routes.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/data/tasks.dart';

void main() => runApp(TodoListApp());

class TodoListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Tasks(),
      //builder: (context) => TaskData(),
      child: ScreenUtilInit(
        designSize: ScreenUtil.defaultSize,
        builder: () => MaterialApp(
          builder: (context, widget) {
            return MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget ?? Container(),
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'ToDoList App',
          theme: customLightThemeData(),
          initialRoute: '/',
          routes: routes,
        ),
      ),
    );
  }
}
