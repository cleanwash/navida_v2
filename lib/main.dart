import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:navida_v2/core/routing/router.dart';
import 'package:navida_v2/firebase_options.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

//kakao login
  KakaoSdk.init(
    nativeAppKey: 'fad5927a32e17a28cfe76daf0bbcf2ea',
    javaScriptAppKey: '7b4b061aede105b99ad50cd00bd143e5',
  );
  //firebase login
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
