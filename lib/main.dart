import 'package:flutter/foundation.dart';
import 'package:uwi_attendance/routes.dart';
import 'package:uwi_attendance/screens/splash_screen/splash_screen.dart';
import 'package:uwi_attendance/screens/home_screen/home_screen.dart';
import 'package:uwi_attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyDg_3tGAXFUtLEVt08R1k4mb09p-bxb8k4",
      authDomain: "uwiattendance.firebaseapp.com",
      databaseURL: "https://uwiattendance-default-rtdb.firebaseio.com",
      projectId: "uwiattendance",
      storageBucket: "uwiattendance.appspot.com",
      messagingSenderId: "829951688754",
      appId: "1:829951688754:web:e26ecfe6c78090d3d33c2b",
      measurementId: "G-3BPNEZLBSB",
    ));
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //it requires 3 parameters
    //context, orientation, device
    //it always requires, see plugin documentation
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UWI',
        theme: CustomTheme().baseTheme,
        //initial route is splash screen
        //mean first screen
        initialRoute: HomeScreen.routeName,
        //define the routes file here in order to access the routes any where all over the app
        routes: routes,
      );
    });
  }
}
