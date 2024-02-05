part of 'locale_cubit.dart';

abstract class LocalState {}

class LocalInitState extends LocalState {}

class ChangeLocalState extends LocalState {
  ChangeLocalState({required this.locale});
  final Locale locale;
}
