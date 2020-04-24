import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:verOne/components/navigationBar.dart';
import 'package:verOne/constants.dart';

bool onPressed;

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: NavigationBar(),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                children: [
                  Container(
                    //refactor this
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.only(
                      //   topRight: Radius.circular(30),
                      // ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            offset: Offset(0.0, 0.75))
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: Color(kSepterateBorder)))),
                          child: Icon(FlutterIcons.logout_ant),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Color(kSepterateBorder),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                ),
                                Text(
                                  'Juzo Suzumia',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
