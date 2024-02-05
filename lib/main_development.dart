import 'package:allup_user_app/app/app.dart';
import 'package:allup_user_app/bootstrap.dart';
import 'package:allup_user_app/services/flavor_config.dart';

void main() {
  FlavorConfig(
    authEndpoint: 'https://api.sandbox.checkout.com/tokens',
    paymentAuthUrl: 'pk_test_df99ee83-b208-41de-9d5e-bb39c266d4d8',
    flavor: Flavor.development,
    values: FlavorValues(baseUrl: 'https://dev-api.allupfitness.com/graphql'),
  );
  bootstrap(() => const App());
}
