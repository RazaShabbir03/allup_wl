import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/auth/repositories/auth_repository.dart';
import 'package:allup_user_app/dashboard/blocs/bloc/dashboard_bloc.dart';
import 'package:allup_user_app/dashboard/repositories/dashboard_repository.dart';
import 'package:allup_user_app/l10n/cubit/locale_cubit.dart';
import 'package:allup_user_app/l10n/l10n.dart';
import 'package:allup_user_app/routes/routes.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';
import 'package:allup_user_app/services/navigation_service.dart';
import 'package:allup_user_app/theme/app_colors.dart';
import 'package:allup_user_app/theme/c_theme.dart';
import 'package:allup_user_app/theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LocaleCubit()..getSavedLanguage(),
      child: ScreenUtilInit(
        designSize: const Size(428, 948),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) => BlocBuilder<LocaleCubit, LocalState>(
          builder: (context, state) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => AuthBloc(
                    authRepository: AuthRepository(
                      client: GraphQLService.instance,
                    ),
                  ),
                ),
                BlocProvider(
                  create: (context) => DashboardBloc(
                      repository:
                          DashboardRepository(client: GraphQLService.instance)),
                ),
              ],
              child: MaterialApp.router(
                routeInformationParser: router.routeInformationParser,
                routeInformationProvider: router.routeInformationProvider,
                routerDelegate: router.routerDelegate,
                scaffoldMessengerKey: NavigationService.scaffoldMessengerKey,
                debugShowCheckedModeBanner: false,
                theme: ThemeModeLight.themeData(context),
                locale: Locale(
                    BlocProvider.of<LocaleCubit>(context).currentLanguageCode),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                localeResolutionCallback: (currentLocal, supportedLocales) {
                  for (final locale in supportedLocales) {
                    if (currentLocal != null &&
                        currentLocal.languageCode == locale.languageCode) {
                      return currentLocal;
                    }
                  }
                  return supportedLocales.first;
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
