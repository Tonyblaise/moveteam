import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDGB-j90jsxwd9T6VxuOwe8kcIQBQ_Q52o",
            authDomain: "moveteam-f5672.firebaseapp.com",
            projectId: "moveteam-f5672",
            storageBucket: "moveteam-f5672.appspot.com",
            messagingSenderId: "539035257791",
            appId: "1:539035257791:web:6419443e3d09780ed3ef0a",
            measurementId: "G-26NSE25VVE"));
  } else {
    await Firebase.initializeApp();
  }
}
