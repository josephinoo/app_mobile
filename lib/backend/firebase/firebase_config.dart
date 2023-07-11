import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCA6PONBgBXqmWDsF4nmoasBdVYtUYYGmI",
            authDomain: "amamantapp-72641.firebaseapp.com",
            projectId: "amamantapp-72641",
            storageBucket: "amamantapp-72641.appspot.com",
            messagingSenderId: "518183249670",
            appId: "1:518183249670:web:a94afb9fce3302e8f8a087",
            measurementId: "G-6M8ZNCRRWD"));
  } else {
    await Firebase.initializeApp();
  }
}
