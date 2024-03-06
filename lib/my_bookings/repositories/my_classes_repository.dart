import 'package:allup_user_app/my_bookings/schemas/booked_gym_classes.graphql.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';

class MyClassesRepository {
  final GraphQLService client;
  MyClassesRepository({required this.client});

  Future<Query$BookedGymClasses> getMyClasses({
    required String gymId,
    required Enum$MembershipGymClassPeriodType type,
    required Input$GISLocationInput location,
    required String timeZoneIdentifier,
  }) async {
    final response = await client.getclient.query$BookedGymClasses(
      Options$Query$BookedGymClasses(
        variables: Variables$Query$BookedGymClasses(
          params: Input$MembershipGymClassesInput(
            location: location,
            timeZoneIdentifier: timeZoneIdentifier,
            gymId: gymId,
            type: type,
          ),
          paging: Input$PaginatorInput(limit: 999, page: 1),
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
