import 'package:flutter/material.dart';
import 'package:providersample/home.dart';
import 'package:providersample/provider.dart';
import 'package:providersample/secondPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "hello"),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case SecondPage.page:
            return MaterialPageRoute(
              builder: (BuildContext context) {
                SecondPage obj = settings.arguments as SecondPage;
                return ChangeNotifierProvider(
                  create: (_) => LoginProvider(),
                  child: SecondPage(
                    val: obj.val,
                  ),
                );
              },
            );
        }
      },
    );
  }
}
