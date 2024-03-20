import 'package:allup_user_app/class_schedule/schemas/scheduled_gym_classes.graphql.dart';
import 'package:allup_user_app/scalars.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';
import 'package:graphql/client.dart';

class ScheduleGymClassInstructorRepository {
  ScheduleGymClassInstructorRepository({required this.client});
  final GraphQLService client;

  Future<Query$ScheduledGymClasses> getGymClassesByInstructor(
      {required String instructorId,
      required DateTime forDate,
      required String gymId}) async {
    final response = await client.getclient.query$ScheduledGymClasses(
      Options$Query$ScheduledGymClasses(
        fetchPolicy: FetchPolicy.noCache,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$ScheduledGymClasses(
          params: Input$GymClassesScheduledInputV2(
            instructorId: instructorId,
            location: Input$GISLocationInput(
                latitude: 25.09619, longitude: 55.167413),
            gymId: gymId,
            forDate: Date(forDate),
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
