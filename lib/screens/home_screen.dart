import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Color(0xFF0A0E21),
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.file_present),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Icon(Icons.menu_open),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40.0, right: 20.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage(
                            'https://wisnuwiry.space/img/avatar.webp'),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(bottom: 20.0, left: 20.0),
                child: Text('Hi Ghulam', style: kLabelTextStyle),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: 20.0, left: 20.0),
                child: Text('6 Tasks are pending', style: kNumberTextStyle),
              ),
            ],
          ),
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: kActiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(bottom: 80.0, left: 20.0),
                        child: Text(
                          'Mobile App Design',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(233, 233, 233, 1.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.0, left: 20.0),
                        child: Text(
                          'Mike and Anita',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromRGBO(233, 233, 233, 1.0),
                              fontWeight: FontWeight.w100),
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 60.0, left: 18.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://ik.imagekit.io/ionicfirebaseapp/getflutter/tr:dpr-auto,tr:w-auto/2020/02/square--2--1.png'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 60.0, left: 48.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://ik.imagekit.io/ionicfirebaseapp/getflutter/tr:dpr-auto,tr:w-auto/2020/02/circular--1--1.png'),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 60.0, left: 345.0),
                              child: Text(
                                'Now',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color.fromRGBO(233, 233, 233, 1.0),
                                    fontWeight: FontWeight.w100),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Monthly Review',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(233, 233, 233, 1.0),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0),
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.lightBlue[300],
                  child: IconButton(
                    icon: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30)), // if you need this
                    color: kActiveCardColour,
                    child: Container(
                      height: 200.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '22',
                            style: kLabelTextStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Done',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 10.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: kActiveCardColour,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      width: 20.0,
                      height: 80.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '7',
                            style: kLabelTextStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'In Progress',
                            style: kNumberTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: kActiveCardColour,
                    child: Container(
                      width: 20.0,
                      height: 80.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '10',
                            style: kLabelTextStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Ongoing',
                            style: kNumberTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: kActiveCardColour,
                    child: Container(
                      width: 20.0,
                      height: 200.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '12',
                            style: kLabelTextStyle,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Waiting for Review',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 10.0,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
