import 'dart:async';

import 'package:base_knowledge/base/xx_base.dart';
import 'package:base_knowledge/models/data_splash.dart';
import 'package:base_knowledge/repositories/splash_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_storage/get_storage.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {

  final SplashRepo splashRepo;

  SplashBloc({required this.splashRepo}) : super(SplashInitial()) {

    on<SplashEventLoad>((event, emit) async {
      emit(SplashStateLoading());
      var v = await splashRepo.fetch();
      var res = v.response;
      if (res.statusCode != 200) {
        emit(SplashStateFailed(res.statusMessage ?? ""));
        return;
      }
      if (v.data.status == false) {
        emit(SplashStateSignOut(v.data));
        return;
      }

      GetStorage().write(MyConfig.TOKEN_STRING_KEY, v.data.token);

      emit(SplashStateLoaded(v.data));
    });
  }
}
