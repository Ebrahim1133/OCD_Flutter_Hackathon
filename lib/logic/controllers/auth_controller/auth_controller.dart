import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ocd/routes/routes.dart';

class AuthController extends GetxController {
  bool isVisibilty = false;
  bool isCheckBox = false;
  var displayUserName = ''.obs;
  var displayUserEmail = ''.obs;

  var isSignedIn = false;
  final GetStorage authBox = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  void visibility() {
    isVisibilty = !isVisibilty;

    update();
  }

  void checkBox() {
    isCheckBox = !isCheckBox;

    update();
  }

  void signUpUsingFirebase({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      //   await auth
      //       .createUserWithEmailAndPassword(email: email, password: password)
      //       .then((value) {
      //     displayUserName.value = name;
      //     auth.currentUser!.updateDisplayName(name);
      //   });
      //
      //   update();
      //
      //   Get.offNamed(Routes.mainScreen);
      // } on FirebaseAuthException catch (error) {
      //   String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
      //   String message = '';
      //
      //   if (error.code == 'weak-password') {
      //     message = ' Provided Password is too weak.. ';
      //   } else if (error.code == 'email-already-in-use') {
      //     message = ' Account Already exists for that email.. ';
      //   } else {
      //     message = error.message.toString();
      //   }
      //
      //   Get.snackbar(
      //     title,
      //     message,
      //     snackPosition: SnackPosition.BOTTOM,
      //     backgroundColor: Colors.green,
      //     colorText: Colors.white,
      //   );
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }

  void logInUsingFirebase({
    required String email,
    required String password,
  }) async {
    try {
      //   await auth
      //       .signInWithEmailAndPassword(email: email, password: password)
      //       .then((value) =>
      //           displayUserName.value = auth.currentUser!.displayName!);
      //
      //   isSignedIn = true;
      //   authBox.write("auth", isSignedIn);
      //
      //   update();
      //   Get.offNamed(Routes.mainScreen);
      // } on FirebaseAuthException catch (error) {
      //   String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
      //   String message = '';
      //
      //   if (error.code == 'user-not-found') {
      //     message =
      //         ' Account does not exists for that $email.. Create your account by signing up..';
      //   } else if (error.code == 'wrong-password') {
      //     message = ' Invalid Password... PLease try again! ';
      //   } else {
      //     message = error.message.toString();
      //   }
      //   Get.snackbar(
      //     title,
      //     message,
      //     snackPosition: SnackPosition.BOTTOM,
      //     backgroundColor: Colors.green,
      //     colorText: Colors.white,
      //   );
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }

  void resetPassword(String email) async {
    try {
      //   await auth.sendPasswordResetEmail(email: email);
      //
      //   update();
      //   Get.back();
      // } on FirebaseAuthException catch (error) {
      //   String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
      //   String message = '';
      //
      //   if (error.code == 'user-not-found') {
      //     message =
      //         ' Account does not exists for that $email.. Create your account by signing up..';
      //   } else {
      //     message = error.message.toString();
      //   }
      //   Get.snackbar(
      //     title,
      //     message,
      //     snackPosition: SnackPosition.BOTTOM,
      //     backgroundColor: Colors.green,
      //     colorText: Colors.white,
      //   );
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }

  void signOutFromApp() async {
    try {
      // await auth.signOut();
      // await googleSignIn.signOut();
      // displayUserName.value = '';
      // //displayUserEmail.value = '';
      // isSignedIn = false;
      // authBox.remove("auth");
      // update();

      Get.offNamed(Routes.loginScreen);
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }

  void updataProfile({
    required String name,
  }) async {
    try {
      //
      // auth.currentUser!.updateDisplayName(name).then((value) => {
      //   displayUserName.value = name,
      //   update()
      //
      // });
      // // auth.currentUser!.updatePassword(password).then((value) => {print("successful")});

    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }
}
