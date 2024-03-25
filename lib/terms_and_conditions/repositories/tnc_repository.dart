import 'package:allup_user_app/services/graph_ql_service.dart';
import 'package:allup_user_app/terms_and_conditions/schemas/gym_tnc_by_id.graphql.dart';

class TnCRepository {
  TnCRepository({required this.client});
  final GraphQLService client;

  Future<Query$gymTnCById> getTnC({
    required String gymId,
  }) async {
    final response = await client.getclient.query$gymTnCById(
      Options$Query$gymTnCById(
        variables: Variables$Query$gymTnCById(
          id: gymId,
        ),
      ),
    );
    final data = response.parsedData;
    if (data == null) {
      throw Exception();
    } else {
      return data;
    }
  }
}
