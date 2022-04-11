part of 'splash_bloc.dart';

abstract class SplashState extends Equatable {
  const SplashState();
}

class SplashInitial extends SplashState {
  @override
  List<Object> get props => [];
}

class SplashStateLoading extends SplashState {
  @override
  List<Object> get props => [];
}

class SplashStateFailed extends SplashState {
  final String text;
  const SplashStateFailed(this.text);
  @override
  List<Object> get props => [text];
}

class SplashStateLoaded extends SplashState {
  final DataSplash data;
  const SplashStateLoaded(this.data);
  @override
  List<Object> get props => [data];
}

class SplashStateSignOut extends SplashState {
  final DataSplash data;
  const SplashStateSignOut(this.data);
  @override
  List<Object> get props => [data];
}