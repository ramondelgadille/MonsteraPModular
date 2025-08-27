import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCuWyyczjDO1Vs-GFRNdwvJE7Tm8kksDhQ",
            authDomain: "monstera-pm.firebaseapp.com",
            projectId: "monstera-pm",
            storageBucket: "monstera-pm.firebasestorage.app",
            messagingSenderId: "45240849473",
            appId: "1:45240849473:web:815e502476ed86db7562c0",
            measurementId: "G-VP19RHQLSF"));
  } else {
    await Firebase.initializeApp();
  }
}
