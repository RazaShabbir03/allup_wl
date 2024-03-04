import 'dart:async';
import 'dart:io';

import 'package:graphql/client.dart';

class CustomAuthLink extends Link {
  CustomAuthLink({
    this.token,
  });
  final String? token;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    // Some logic here

    // TIP: do not forget getting new Request instance!
    print('token: $token');
    final req = request.updateContextEntry<HttpLinkHeaders>(
      (HttpLinkHeaders? headers) => HttpLinkHeaders(
        headers: <String, String>{
          // put oldest headers
          ...headers?.headers ?? <String, String>{},
          // and add a new headers
          //conditonally add token
          'Authorization': token == null ? '' : token!,
          'x-token-type': 'API',
          'x-app-source': Platform.isIOS ? 'IOS' : 'ANDROID',
        },
      ),
    );

    // and "return" new Request with updated headers
    yield* forward!(req);
  }
}
