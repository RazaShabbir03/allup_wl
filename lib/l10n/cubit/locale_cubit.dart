import 'package:allup_user_app/widgets/cache_helper.dart';
import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocalState> {
  LocaleCubit() : super(LocalInitState());

  Future<void> changeLanguage(String locale) async {
    await CacheHelper.cacheLanguage(locale);
    emit(ChangeLocalState(locale: Locale(locale)));
  }

  void getSavedLanguage() {
    final cachedLanguageCode = CacheHelper.getCachedLanguage();
    emit(ChangeLocalState(locale: Locale(cachedLanguageCode)));
  }

  void changeLanguageFromLocale(Locale locale) {
    emit(ChangeLocalState(locale: locale));
  }

  //get language code
  String getLanguageCode() {
    return state is ChangeLocalState
        ? (state as ChangeLocalState).locale.languageCode
        : 'en';
  }
}
