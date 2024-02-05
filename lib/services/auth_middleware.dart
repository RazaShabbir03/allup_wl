import 'package:graphql/client.dart';

class AuthMiddleware extends AuthLink {
  AuthMiddleware({required this.token, Link? link})
      : _link = link,
        super(getToken: () async => token);
  final Link? _link;
  final String token;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    try {
      Stream<Response> response = _link!.request(request, forward);
      await for (Response event in response) {
        if (event.errors != null &&
            event.errors!.isNotEmpty &&
            event.errors!.first.extensions != null &&
            event.errors!.first.extensions!['code'] != null &&
            event.errors!.first.extensions!.containsKey('code') &&
            event.errors!.first.extensions!['code'] == 'UNAUTHENTICATED') {
          final updatedRequest = request.updateContextEntry<HttpLinkHeaders>(
            (headers) => HttpLinkHeaders(
              headers: <String, String>{
                ...headers?.headers ??
                    <String, String>{
                      'Content-Type': 'application/json',
                      'Authorization': token,
                    },
                'Authorization': token,
              },
            ),
          );
          if (forward != null) {
            await for (final result in forward(updatedRequest)) {
              try {
                // final tokenHeaders = _tokenHeader(refreshedToken);
                yield* forward(request.updateContextEntry<HttpLinkHeaders>(
                  (headers) => HttpLinkHeaders(
                    headers: {
                      ...headers?.headers ?? <String, String>{},
                    }..addAll({
                        "Authorization": token,
                      }),
                  ),
                ));
              } catch (_) {
                yield result;
              }
            }
          }
          yield* _link!.request(request, forward);
        } else {
          yield event;
        }
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
  }
}
