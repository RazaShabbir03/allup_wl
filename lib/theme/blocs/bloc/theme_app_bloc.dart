import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_app_event.dart';
part 'theme_app_state.dart';

class ThemeAppBloc extends Bloc<ThemeAppEvent, ThemeAppState> {
  ThemeAppBloc() : super(ThemeAppInitial()) {
    on<ThemeAppEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
