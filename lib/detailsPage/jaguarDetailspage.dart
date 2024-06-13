import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:world_of_journey/detailsPage/orderConfirmPage.dart';

class JaguarDetailsPage extends StatefulWidget {
  const JaguarDetailsPage({super.key});

  @override
  State<JaguarDetailsPage> createState() => _JaguarDetailsPageState();
}

class _JaguarDetailsPageState extends State<JaguarDetailsPage> {
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) => {
          if (!isAllowed)
            {AwesomeNotifications().requestPermissionToSendNotifications()}
        });
    super.initState();
  }

  showNotification() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 10,
            channelKey: 'basic_channel',
            title: "You booked to buy Jaguar car",
            body: "Our Sales person will call you - Thankyou!!"));
  }

  showRentNotification() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 10,
            channelKey: 'basic_channel',
            title: "You booked to Rent Jaguar car",
            body: "Our Rental manager will call you - Thankyou!!"));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                // height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: 90,
                              height: 20,
                              child: Text(
                                "Available",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            GradientText(
                              "Jaguar SF",
                              colors: [
                                Color(0xFFFF1000),
                                Color(0xFF2508FF),
                              ],
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/jaguarcar.png",
                          fit: BoxFit.contain,
                          height: 55,
                          width: 55,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Hero(
                      tag: "Jaguar car",
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: <Color>[
                                  const Color.fromARGB(255, 190, 132, 153),
                                  Colors.pink
                                ]),
                            borderRadius: new BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "\₹1699",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "per day",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  "assets/jaguarcar.png",
                                  fit: BoxFit.contain,
                                  height: 150,
                                  width: 150,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[100],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 75,
                              width: 75,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Icon(
                                    Icons.usb,
                                    size: 35,
                                    color: Colors.blue[700],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Automatic",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.blue[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.pink[100],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 75,
                              width: 75,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Icon(
                                    Icons.people,
                                    size: 35,
                                    color: Colors.pink[700],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Hatch Back",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.pink[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange[100],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 75,
                              width: 75,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Icon(
                                    Icons.network_check,
                                    size: 35,
                                    color: Colors.orange[700],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "40.2Kmpl",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.orange[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 75,
                              width: 75,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Icon(
                                    Icons.local_gas_station,
                                    size: 35,
                                    color: Colors.green[700],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Petrol",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.green[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 2.5,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xFF2508FF),
                          Color(0xFFFF1000)
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 159, 152, 209),
                                  Color.fromARGB(255, 22, 218, 221),
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                          ),
                          child: Row(
                            children: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Get.to(
                  OrderConfirmedPage(),
                );
                                  showNotification();
                                },
                                child: Text("Buy Now",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(43, 247, 2, 1)),
                                    textAlign: TextAlign.center),
                              ),
                              Icon(Icons.navigate_next,
                                  color: Color.fromARGB(255, 39, 191, 9)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GradientText(
                          "Renting Charges",
                          colors: [
                            Color(0xFFFF1000),
                            Color(0xFF2508FF),
                          ],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFF2508FF),
                                  Color(0xFFFF1000),
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                          ),
                          child: Row(
                            children: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Get.to(
                  OrderConfirmedPage(),
                );
                                  showRentNotification();
                                },
                                child: Text(
                                  "Rent Now",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                              Icon(Icons.navigate_next, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                child: Expanded(
                  child: ListView(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 75,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.departure_board,
                                      size: 35,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 7.5,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Per Day Charge",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Random",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "+\t\t\₹1699",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.trending_up,
                                      size: 15,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 75,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.event_available,
                                      size: 35,
                                      color: Colors.pink,
                                    ),
                                    SizedBox(
                                      width: 7.5,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Monthly Charge",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "1-6 months",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "-\t\t\₹3999",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.trending_down,
                                      size: 15,
                                      color: Colors.green,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 75,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.public,
                                      size: 35,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 7.5,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "External Ride",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Inter State",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "+\t\t\₹5999",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.trending_up,
                                      size: 15,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
