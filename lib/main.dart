import 'package:events_book/util/palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/home/home_screen.dart';
import 'viewmodel/home_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MultiProvider(
      providers: [
         ChangeNotifierProvider.value(value: HomeScreenProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Events',
        theme: theme.copyWith(
          appBarTheme: const AppBarTheme(),
          primaryColor: Palette.primaryColor,
          colorScheme:
          theme.colorScheme.copyWith(secondary: Palette.primaryColor),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(title: ""),
        },
      ),
    );
  }
}




