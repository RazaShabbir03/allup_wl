import 'package:allup_user_app/my_bookings/schemas/add_instructor_event.graphql.dart';
import 'package:allup_user_app/my_bookings/schemas/booked_pt_sessions.graphql.dart';
import 'package:allup_user_app/my_bookings/schemas/purchase_session_contract.graphql.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';

class SessionContractRepository {
  const SessionContractRepository({required this.client});
  final GraphQLService client;

  Future<Query$PurchasedSessionContractsForGym> getSessionContract(
      {required String gymId}) async {
    final response =
        await client.getclient.query$PurchasedSessionContractsForGym(
      Options$Query$PurchasedSessionContractsForGym(
        variables: Variables$Query$PurchasedSessionContractsForGym(
          params: Input$SessionContractFilter(
            gymId: gymId,
            isPaid: true,
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

  Future<Query$BookedPTSessions> getBookedPTSessions(
      {required String sessionContractId,
      required Enum$SessionContractBookingType type}) async {
    final response = await client.getclient.query$BookedPTSessions(
      Options$Query$BookedPTSessions(
          variables: Variables$Query$BookedPTSessions(
              params: Input$SessionContractBookingsParams(
                  timeZoneIdentifier: 'Asia/Karachi',
                  sessionContractId: sessionContractId,
                  type: type),
              paging: Input$PaginatorInput(limit: 999, page: 1))),
    );
    final data = response.parsedData;
    if (data == null) {
      throw Exception();
    } else {
      return data;
    }
  }

  Future<Mutation$addIntructorEvent> addInstructorEvent(
      {required String customerPrivateCoachSessionId,
      required Enum$InstructorSessionEventType type}) async {
    final response = await client.getclient.mutate$addIntructorEvent(
      Options$Mutation$addIntructorEvent(
        variables: Variables$Mutation$addIntructorEvent(
          input: Input$AddIntructorEventInput(
            eventType: type,
            customerPrivateCoachSessionId: customerPrivateCoachSessionId,
          ),
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
