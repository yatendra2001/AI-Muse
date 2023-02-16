import 'package:ai_muse/pages/pages.dart';
import 'package:ai_muse/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main(List<String> args) async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.aiImageRoute,
      routes: {
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.aiImageRoute: (context) => AIImagePage(),
        MyRoutes.nftMintRoute: (context) => MintNFTPage(title: "MY NFT")
      },
    );
  }
}
