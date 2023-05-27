import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthController extends GetxController {
  GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount? currentuser;
  @override
  void onInit() {
    googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      currentuser = account;
    });
    if (currentuser != null) {
      googleSignIn.signInSilently();
    }

    super.onInit();
  }

  Future<void> signIn() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      // !Create a new credential for appwrite login
    } catch (error) {
      print(error);
    }
  }

  Future<void> signOut() async {
    googleSignIn.disconnect();
    //! appwrite logout
  }
}
