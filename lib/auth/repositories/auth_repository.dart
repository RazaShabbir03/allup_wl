import 'package:allup_user_app/auth/schemas/brand_list.graphql.dart';
import 'package:allup_user_app/auth/schemas/send_otp_auth.graphql.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';

class AuthRepository {
  AuthRepository({required this.client});
  final GraphQLService client;

  Future<Mutation$SendOTPAuth> sendOTP({
    required String contactNumber,
    required String gymId,
  }) async {
    final response = await client.getclient.mutate$SendOTPAuth(
      Options$Mutation$SendOTPAuth(
        variables: Variables$Mutation$SendOTPAuth(
          input: Input$sendOTPInput(
            contactNumber: contactNumber,
            gymId: gymId,
          ),
        ),
      ),
    );
    return response.parsedData!;
  }

  Future<Query$BrandsList> getBrandsList({
    required String appId,
  }) async {
    final response = await client.getclient.query$BrandsList(
      Options$Query$BrandsList(
          variables: Variables$Query$BrandsList(
              params: Input$BrandsFilter(appId: appId))),
    );
    return response.parsedData!;
  }
}
