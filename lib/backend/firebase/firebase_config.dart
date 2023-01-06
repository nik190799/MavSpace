import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDL2Lid1eV-licAhJc3Rf55XlVTiQWsdNo",
            authDomain: "mavspace.firebaseapp.com",
            projectId: "mavspace",
            storageBucket: "mavspace.appspot.com",
            messagingSenderId: "879167394554",
            appId: "1:879167394554:web:1afa499652ce362b89af43"));
  } else {
    await Firebase.initializeApp();
  }
}
