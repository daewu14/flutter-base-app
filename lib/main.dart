import 'package:base_knowledge/routers/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'blocs/splash/splash_bloc.dart';
import 'repositories/splash_repo.dart';
import 'routers/router_name.dart';

/// createdby Daewu Bintara
/// Monday, 20/12/21 23:22
/// Enjoy coding ☕
///
void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SplashBloc(splashRepo: SplashRepo())
            ..add(SplashEventLoad()),
        ),
      ],
      child: const MaterialApp(
        initialRoute: RouterName.splash,
        onGenerateRoute: Pages.generateRoute,
      ),
    );
  }
}
