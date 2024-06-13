import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:world_of_journey/screens/select.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController password1 = new TextEditingController();
  TextEditingController password2= new TextEditingController();
  bool isPasswordVisible=false;
  bool isnewPasswordVisible=false;
  void loginAuth(){
      String login_password="Kiran";
      String _password1,_Password2;
      _password1=password1.text.toString();
      _Password2=password2.text.toString();

      if(_password1.isEmpty){
        Fluttertoast.showToast(msg: "Please Enter new password",toastLength: Toast.LENGTH_LONG);
      }
      else if(_Password2.isEmpty){
        Fluttertoast.showToast(msg: "Confirm new password",toastLength: Toast.LENGTH_LONG);
      }
      else{
        if((_password1.compareTo(login_password)==0)&&(_Password2.compareTo(login_password)==0))
        {

         Fluttertoast.showToast(msg: "Password changed",toastLength: Toast.LENGTH_LONG);
         Get.to(Select());
        }  
        else{
          Fluttertoast.showToast(msg: "Not matched",toastLength: Toast.LENGTH_LONG);

        }
      }
  }
  
  void togglePassword1Visibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;

    });
  }
void togglePassword2Visibility() {
    setState(() {
      isnewPasswordVisible = !isnewPasswordVisible;

    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body:Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color:Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0,3),
                  ),
                ],
              ),
              child: TextField(
                controller: password1,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    
                  ),
                  hintText: "Enter new password",
                  labelText: "new password",
                  prefixIcon: Icon(Icons.lock), // Prefix icon
                  suffixIcon: IconButton(
                  icon: Icon(isPasswordVisible ? Icons.visibility_off : Icons.visibility),
                  onPressed: togglePassword1Visibility,
                ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  
                ),
              ),
            ),
                  ),
      Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color:Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0,3),
                  ),
                ],
              ),
              child: TextField(
                controller: password2,
                obscureText: !isnewPasswordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
              
                  ),
                  hintText: "Confirm new password",
                  labelText: "Confirm new password",
                  prefixIcon: Icon(Icons.lock), // Prefix icon
                  suffixIcon: IconButton(
                  icon: Icon(isnewPasswordVisible ? Icons.visibility_off : Icons.visibility),
                  onPressed: togglePassword2Visibility,
                ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
              ),
            ),
                  ),
                  Padding(
             padding: const EdgeInsets.all(8.0),
             child:SizedBox(width:double.infinity,
             height:50,
             child: ElevatedButton(
              onPressed: (){
               
               loginAuth();
                     },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.amber,
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
          

             child: Text("Change password")
             ),
             ),
           ),
                  
                  ],
          ),
        ),
      )
    );
 
  }
}