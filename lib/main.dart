import 'package:artivatic_test/core/repository/home_repository.dart';
import 'package:artivatic_test/features/home/bloc/home_bloc.dart';
import 'package:artivatic_test/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'on_generate_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: HomeBloc(HomeRepository()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artivatic Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: OnGenerateRoute.route,
      routes: {
        "/": (context) => const HomePage(),
      },
    );
  }
}
