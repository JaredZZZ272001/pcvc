import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBD37oDxcAZU3ybv_7WBxjJlaqzYPbNXw8",
            authDomain: "pcvc-ae145.firebaseapp.com",
            projectId: "pcvc-ae145",
            storageBucket: "pcvc-ae145.appspot.com",
            messagingSenderId: "562749372461",
            appId: "1:562749372461:web:473c873cab154d2691e0a4",
            measurementId: "G-710DSD2YRK"));
  } else {
    await Firebase.initializeApp();
  }
}
