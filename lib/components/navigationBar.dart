import 'package:flutter/material.dart';
import 'package:verOne/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';

bool isExpanded = false;

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color(kNavBarColor),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              child: Container(
                height: 150,
                child: Image.asset('images/logo.png'),
              ),
            ),
            NavBarChild(
              title: 'DashBoard',
              iconData: FlutterIcons.dashboard_mdi,
            ),
            ListView(shrinkWrap: true, children: [
              ExpansionTile(
                title: Text(
                  'Sales',
                  style: TextStyle(
                      color: Color(kNavBarTextColor),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Feather.dollar_sign,
                  color: Color(kNavBarTextColor),
                ),
                children: [
                  NavBarChild(
                    title: 'Sales',
                    iconData: FontAwesome5Solid.dollar_sign,
                  ),
                  NavBarChild(
                    title: 'History',
                    iconData: FlutterIcons.history_mdi,
                  ),
                ],
              ),
            ]),
            ListView(shrinkWrap: true, children: [
              ExpansionTile(
                title: Text(
                  'Purchases',
                  style: TextStyle(
                      color: Color(kNavBarTextColor),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  EvilIcons.cart,
                  color: Color(kNavBarTextColor),
                ),
                children: [
                  NavBarChild(
                    title: 'Purchase',
                    iconData: FlutterIcons.add_shopping_cart_mdi,
                  ),
                  NavBarChild(
                    title: 'History',
                    iconData: FlutterIcons.history_mdi,
                  ),
                ],
              ),
            ]),
            ListView(shrinkWrap: true, children: [
              ExpansionTile(
                title: Text(
                  'Stock',
                  style: TextStyle(
                      color: Color(kNavBarTextColor),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Entypo.dropbox,
                  color: Color(kNavBarTextColor),
                ),
                children: [
                  NavBarChild(
                    title: 'Add Stock',
                    iconData: FlutterIcons.add_box_mdi,
                  ),
                  NavBarChild(
                    title: 'Stock Details',
                    iconData: FlutterIcons.file_document_mco,
                  ),
                ],
              ),
            ]),
            ListView(shrinkWrap: true, children: [
              ExpansionTile(
                title: Text(
                  'Customer',
                  style: TextStyle(
                      color: Color(kNavBarTextColor),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  AntDesign.user,
                  color: Color(kNavBarTextColor),
                ),
                children: [
                  NavBarChild(
                    title: 'Add Customer',
                    iconData: Feather.user_plus,
                  ),
                  NavBarChild(
                    title: 'Details',
                    iconData: Feather.users,
                  ),
                ],
              ),
            ]),
            ListView(shrinkWrap: true, children: [
              ExpansionTile(
                title: Text(
                  'Seller',
                  style: TextStyle(
                      color: Color(kNavBarTextColor),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Entypo.shop,
                  color: Color(kNavBarTextColor),
                ),
                children: [
                  NavBarChild(
                    title: 'Add Seller',
                    iconData: FlutterIcons.add_mdi,
                  ),
                  NavBarChild(
                    title: 'Details',
                    iconData: Feather.users,
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

//customize child
class NavBarChild extends StatefulWidget {
  NavBarChild({this.title, this.iconData, this.onPressed});
  final String title;
  final IconData iconData;
  final Function onPressed;
  @override
  _NavBarChildState createState() => _NavBarChildState();
}

class _NavBarChildState extends State<NavBarChild> {
  @override
  Widget build(BuildContext context) {
    String title = widget.title;
    IconData iconData = widget.iconData;
    Function onPressed = widget.onPressed;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: FlatButton(
            onPressed: onPressed,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Icon(
                    iconData,
                    color: Color(kNavBarTextColor),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    title,
                    style: kNavBarTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
