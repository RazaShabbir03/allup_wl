import 'package:allup_user_app/dashboard/schemas/country.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/gym_banners.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/gym_classes_by_categories.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/gym_membership_info.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/purchase_memberhip.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/user_by_auth.graphql.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';

class DashboardRepository {
  DashboardRepository({required this.client});
  final GraphQLService client;
  Future<Query$Country> getCountry({required String id}) async {
    final response = await client.getclient.query$Country(
      Options$Query$Country(
        variables: Variables$Query$Country(
          id: id,
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

  Future<Query$UserByAuth> getUserByAuth({required String gymId}) async {
    final response = await client.getclient.query$UserByAuth(
      Options$Query$UserByAuth(),
    );
    final data = response.parsedData;
    if (data == null) {
      throw Exception();
    } else {
      return data;
    }
  }

  Future<Query$GymMembershipInfo> getGymMembershipInfo(
      {required String gymId,
      required String memId,
      String? gmId,
      String? smId}) async {
    final response = await client.getclient.query$GymMembershipInfo(
      Options$Query$GymMembershipInfo(
        variables: Variables$Query$GymMembershipInfo(
          memId: memId,
          gymId: gymId,
          smId: smId,
          gmId: gmId,
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

  Future<Query$PurchasedGymMemberships> getPurchasedGymMemberships(
      {required String gymId, required String appId}) async {
    final response = await client.getclient.query$PurchasedGymMemberships(
      Options$Query$PurchasedGymMemberships(
        variables: Variables$Query$PurchasedGymMemberships(
            filter:
                Input$GetMembershipsQueryFilter(gymId: gymId, appId: appId)),
      ),
    );
    final data = response.parsedData;
    if (data == null) {
      throw Exception();
    } else {
      return data;
    }
  }

  Future<Query$GymBanners> getGymBanners({required String gymId}) async {
    final response = await client.getclient.query$GymBanners(
      Options$Query$GymBanners(
          variables: Variables$Query$GymBanners(
        params: Input$GymBannerFilter(gymId: gymId),
        paging: Input$PaginatorInput(page: 1, limit: 100),
      )),
    );
    final data = response.parsedData;
    if (data == null) {
      throw Exception();
    } else {
      return data;
    }
  }

  Future<Query$GymClassesByCategory> getClassCategories(
      {required String gymId}) async {
    final response = await client.getclient.query$GymClassesByCategory(
      Options$Query$GymClassesByCategory(
        variables: Variables$Query$GymClassesByCategory(
          gymId: gymId,
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

  Future<Query$PurchasedGymMemberships> getGymMembershipDetails(
      {required String gymId, required String appId}) async {
    final response = await client.getclient.query$PurchasedGymMemberships(
      Options$Query$PurchasedGymMemberships(
        variables: Variables$Query$PurchasedGymMemberships(
          filter: Input$GetMembershipsQueryFilter(gymId: gymId, appId: appId),
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
