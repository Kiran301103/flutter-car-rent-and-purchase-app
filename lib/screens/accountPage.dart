import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:world_of_journey/screens/loginPage.dart';
import 'package:world_of_journey/screens/loginPage.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Container(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/user.png',
                    width: 150,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Kiran",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "kiran301103@gmail.com",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('8870292116',
                      style: TextStyle(
                        fontSize: 18,
                      ))),
              ListTile(
                  leading: Icon(Icons.email),
                  title: Text('kiran301103@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                      ))),
              ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text('30/11/2003',
                      style: TextStyle(
                        fontSize: 18,
                      ))),
              Divider(
                thickness: 1,
              ),
              Card(
                child: ListTile(
                  onTap: () {
                    Get.off(LoginPage());
                  },
                  leading: Icon(Icons.logout),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                color: Colors.red[200],
                child: ListTile(
                  onTap: () {
                    Get.off(LoginPage());
                  },
                  leading: Icon(Icons.logout),
                  title: Text(
                    'Delete Account',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
