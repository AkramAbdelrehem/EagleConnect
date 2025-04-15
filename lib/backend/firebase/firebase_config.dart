import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAHtB5GqVu55HOz_bPH3uBlg_wUw8p_L5A",
            authDomain: "eagleconnect-7f45e.firebaseapp.com",
            projectId: "eagleconnect-7f45e",
            storageBucket: "eagleconnect-7f45e.firebasestorage.app",
            messagingSenderId: "144812187649",
            appId: "1:144812187649:web:12a0e277a3de5f444ee000",
            measurementId: "G-GCMZZGPYJQ"));
  } else {
    await Firebase.initializeApp();
  }
}
