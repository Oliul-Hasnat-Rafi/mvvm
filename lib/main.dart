import 'package:flutter/material.dart';
import 'package:mvvm/utils/Routes/Routes.dart';
import 'package:mvvm/utils/Routes/Routes_Name.dart';
import 'package:mvvm/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthviewModel()),
        ChangeNotifierProvider(create: (_) => AuthviewModel())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RoutesName.Home,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
