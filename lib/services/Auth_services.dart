// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class Auth_Service {
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   final GoogleSignIn _googlesignin = GoogleSignIn();

//   void googlesignin() async {
//     final FirebaseAuth auth = FirebaseAuth.instance;
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//     final GoogleSignInAuthentication? googleAuth =
//         await googleUser?.authentication;

//     if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
//       // Create a new credential
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth?.accessToken,
//         idToken: googleAuth?.idToken,
//       );
//       UserCredential userCredential =
//           await auth.signInWithCredential(credential);

//       // if you want to do specific task like storing information in firestore
//       // only for new users using google sign in (since there are no two options
//       // for google sign in and google sign up, only one as of now),
//       // do the following:

//       if (userCredential.user != null) {
//         if (userCredential.additionalUserInfo!.isNewUser) {
//           // checkUserExistAdmission(context);
//         } else {
//           // checkUserExistAdmission(context);
//         }
//       }
//     }
//   }
// }
