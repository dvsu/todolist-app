import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil().setWidth(MediaQuery.of(context).size.width);
    ScreenUtil().setHeight(MediaQuery.of(context).size.height);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff6C41E4),
        child: Icon(Icons.add_rounded),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xff3BF2EB),
              Color(0xff6C41E4),
              Color(0xffFE9B38),
            ],
            stops: [
              0.25,
              0.6,
              1.4,
            ],
            center: Alignment(1.0, 0.4),
            radius: 1.8,
            // begin: Alignment(-0.8, -1.0),
            // end: Alignment(1.0, 1.2),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 0.1.sh.toInt(),
                child: Padding(
                  padding: EdgeInsets.only(left: 0.05.sw),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        color: Color(0xff6C41E4),
                        size: 30.0,
                      )),
                ),
              ),
              Expanded(
                flex: 0.075.sh.toInt(),
                child: Padding(
                  padding: EdgeInsets.only(left: 0.05.sw, bottom: 0.005.sh),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'TODO LIST',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Barlow',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0.075.sh.toInt(),
                child: Padding(
                  padding: EdgeInsets.only(left: 0.05.sw, top: 0.005.sh),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '12 tasks remaining',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Barlow',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0.75.sh.toInt(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x22121212),
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(
                          'My task 1',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Barlow',
                          ),
                        ),
                        leading: Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        hoverColor: Colors.blue,
                        tileColor: Colors.green,
                        selectedTileColor: Colors.greenAccent,
                      ),
                      ListTile(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
