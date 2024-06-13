import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:world_of_journey/screens/homePage.dart';
import 'package:world_of_journey/screens/loginPage.dart';
import 'package:world_of_journey/screens/select.dart';
import 'package:world_of_journey/screens/signupPage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onInit() {
    super.onInit();
    firebaseUser = Rx<User?>(_auth.currentUser);
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => SignupPage());
    } else {
      Get.offAll(() => LoginPage());
    }
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      // User created successfully, navigate to the home page
      Get.offAll(() => LoginPage());
    } on FirebaseAuthException catch (e) {
      print('FIREBASE AUTH EXCEPTION - ${e.message}');
      rethrow;
    } catch (e) {
      print('EXCEPTION - $e');
      rethrow;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      // User logged in successfully, navigate to the home page
      Get.offAll(() => Select());
    } on FirebaseAuthException catch (e) {
      print('FIREBASE AUTH EXCEPTION - ${e.message}');
    } catch (e) {
      print('EXCEPTION - $e');
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
    // After logging out, navigate to the signup page
    Get.offAll(() => SignupPage());
  }
}
