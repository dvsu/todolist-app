import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil().setWidth(MediaQuery.of(context).size.width);
    ScreenUtil().setHeight(MediaQuery.of(context).size.height);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff3BF2EB),
              Color(0xff6C41E4),
              Color(0xffFE9B38),
            ],
            stops: [
              0.0,
              0.2,
              0.5,
            ],
            begin: Alignment(-0.8, -1.0),
            end: Alignment(1.0, 1.2),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 0.1.sh.toInt(),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      color: Color(0xff6C41E4),
                      size: 30.0,
                    )),
              ),
              Expanded(
                flex: 0.2.sh.toInt(),
                child: Container(
                  child: Text(
                    'Todo List',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Barlow',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0.7.sh.toInt(),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
