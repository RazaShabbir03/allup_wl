import 'package:allup_user_app/app/app.dart';
import 'package:allup_user_app/bootstrap.dart';
import 'package:allup_user_app/services/flavor_config.dart';

void main() {
  FlavorConfig(
    authEndpoint: 'https://api.live.checkout.com/tokens',
    paymentAuthUrl: 'pk_bbc912bd-bf94-4141-a94c-91e7d1c0a075',
    flavor: Flavor.production,
    values: FlavorValues(baseUrl: 'https://api.allupfitness.com/graphql'),
  );
  bootstrap(() => const App());
}
