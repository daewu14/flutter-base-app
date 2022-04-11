import 'package:base_knowledge/blocs/splash/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// createdby Daewu Bintara
/// Monday, 11/04/22 09:56
/// Enjoy coding ☕

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SplashBloc, SplashState>(
        listener: (_, state) {

          if (state is SplashStateLoaded) {

          }

          if (state is SplashStateFailed) {

          }

        },
        builder: (_, state) {

          return const Center(child: Text("Splash Screen"));
        },
      ),
    );
  }
}
