import 'package:allup_user_app/class_schedule/schemas/gym_class_is_already_booked.graphql.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';

class ScheduleGymClassDetailRepository {
  ScheduleGymClassDetailRepository({required this.client});
  final GraphQLService client;
  Future<Query$GymClassIsAlreadyBookedV2> getScheduleGymClassDetail(
      {required String scheduleId,
      required String bookedFor,
      required String bookedTime}) async {
    final response = await client.getclient.query$GymClassIsAlreadyBookedV2(
        Options$Query$GymClassIsAlreadyBookedV2(
      variables: Variables$Query$GymClassIsAlreadyBookedV2(
        scheduleId: scheduleId,
        bookedFor: bookedFor,
        bookedTime: bookedTime,
      ),
    ));

    final data = response.parsedData;
    if (data == null) {
      throw Exception();
    } else {
      return data;
    }
  }
}
