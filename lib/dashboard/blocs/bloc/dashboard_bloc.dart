import 'package:allup_user_app/constants/app_constants.dart';
import 'package:allup_user_app/dashboard/repositories/dashboard_repository.dart';
import 'package:allup_user_app/dashboard/schemas/gym_banners.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/gym_classes_by_categories.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/gym_membership_info.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/purchase_memberhip.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/user_by_auth.graphql.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc({required this.repository}) : super(DashboardInitial()) {
    on<GetDashboardEvents>((event, emit) async {
      emit(
        state.copyWith(
          dashboardStatus: DashboardStatus.loading,
          gymId: event.gymId,
        ),
      );
      try {
        final userByAuthResponse =
            await repository.getUserByAuth(gymId: event.gymId);
        final purchasedMembershipResponse =
            await repository.getPurchasedGymMemberships(
          gymId: event.gymId,
          appId: AppConstants.appId,
        );

        final gymBannersResponse =
            await repository.getGymBanners(gymId: event.gymId);
        final classCategoryResponse = await repository.getClassCategories(
          gymId: event.gymId,
        );
        final gymMembershipDetailsResponse =
            await repository.getGymMembershipDetails(
          gymId: event.gymId,
          appId: AppConstants.appId,
        );

        final groupMembers =
            purchasedMembershipResponse.memberships?.data?.groupMemberships;
        final singleMembers =
            purchasedMembershipResponse.memberships?.data?.singleMemberships;
        final sessionPacks =
            purchasedMembershipResponse.memberships?.data?.sessionPacks;
        final banners = gymBannersResponse.gymBanners.list;
        final gymMembershipInfoResponse = await repository.getGymMembershipInfo(
          gymId: event.gymId,
          smId: singleMembers != null
              ? singleMembers.isNotEmpty
                  ? purchasedMembershipResponse
                      .memberships?.data?.singleMemberships?.first?.id
                  : null
              : null,
          gmId: groupMembers != null
              ? groupMembers.isNotEmpty
                  ? groupMembers.first?.id
                  : null
              : null,
          memId: (singleMembers != null
                  ? singleMembers.isNotEmpty
                      ? purchasedMembershipResponse
                          .memberships?.data?.singleMemberships?.first?.id
                      : groupMembers != null
                          ? groupMembers.isNotEmpty
                              ? groupMembers.first?.id
                              : sessionPacks != null
                                  ? sessionPacks.isNotEmpty
                                      ? sessionPacks.first?.id
                                      : null
                                  : null
                          : null
                  : '') ??
              '',
        );

        emit(
          state.copyWith(
            displayPicture: userByAuthResponse.userByAuth.user?.photo,
            fullName:
                '${userByAuthResponse.userByAuth.user!.firstName} ${userByAuthResponse.userByAuth.user?.lastName ?? ''}',
            purchasedMembershipResponse:
                gymMembershipDetailsResponse.memberships?.data,
            classCategories: classCategoryResponse.gymClassesByCategoryV2.list,
            gymBanners: banners,
            gymMembershipInfo: gymMembershipInfoResponse,
            gymId: event.gymId,
            user: userByAuthResponse.userByAuth.user,
            dashboardStatus: DashboardStatus.success,
          ),
        );
      } catch (e) {
        emit(state.copyWith(dashboardStatus: DashboardStatus.error));
      }
    });

    on<RefreshDashboardFromTerminatedApp>((event, emit) async {
      emit(
        state.copyWith(
          refreshDashboardStatus: RefreshDashboardStatus.loading,
        ),
      );
      try {
        final userByAuthResponse =
            await repository.getUserByAuth(gymId: event.gymId);
        final purchasedMembershipResponse =
            await repository.getPurchasedGymMemberships(
          gymId: event.gymId,
          appId: AppConstants.appId,
        );
        final gymBannersResponse =
            await repository.getGymBanners(gymId: event.gymId);
        final classCategoryResponse = await repository.getClassCategories(
          gymId: event.gymId,
        );
        final gymMembershipDetailsResponse =
            await repository.getGymMembershipDetails(
          gymId: event.gymId,
          appId: AppConstants.appId,
        );
        final banners = gymBannersResponse.gymBanners.list;
        final groupMembers =
            purchasedMembershipResponse.memberships?.data?.groupMemberships;
        final singleMembers =
            purchasedMembershipResponse.memberships?.data?.singleMemberships;
        final sessionPacks =
            purchasedMembershipResponse.memberships?.data?.sessionPacks;
        final gymMembershipInfoResponse = await repository.getGymMembershipInfo(
          gymId: event.gymId,
          smId: singleMembers != null
              ? singleMembers.isNotEmpty
                  ? purchasedMembershipResponse
                      .memberships?.data?.singleMemberships?.first?.id
                  : null
              : null,
          gmId: groupMembers != null
              ? groupMembers.isNotEmpty
                  ? groupMembers.first?.id
                  : null
              : null,
          memId: (singleMembers != null
                  ? singleMembers.isNotEmpty
                      ? purchasedMembershipResponse
                          .memberships?.data?.singleMemberships?.first?.id
                      : groupMembers != null
                          ? groupMembers.isNotEmpty
                              ? groupMembers.first?.id
                              : sessionPacks != null
                                  ? sessionPacks.isNotEmpty
                                      ? sessionPacks.first?.id
                                      : null
                                  : null
                          : null
                  : '') ??
              '',
        );

        emit(
          state.copyWith(
            gymId: event.gymId,
            displayPicture: userByAuthResponse.userByAuth.user?.photo,
            fullName:
                '${userByAuthResponse.userByAuth.user!.firstName} ${userByAuthResponse.userByAuth.user?.lastName ?? ''}',
            purchasedMembershipResponse:
                gymMembershipDetailsResponse.memberships?.data,
            classCategories: classCategoryResponse.gymClassesByCategoryV2.list,
            refreshDashboardStatus: RefreshDashboardStatus.success,
            gymBanners: banners,
            gymMembershipInfo: gymMembershipInfoResponse,
            user: userByAuthResponse.userByAuth.user,
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(
            refreshDashboardStatus: RefreshDashboardStatus.error,
          ),
        );
      }
    });

    on<RefreshDashboard>((event, emit) async {
      emit(
        state.copyWith(
          refreshDashboardStatus: RefreshDashboardStatus.loading,
        ),
      );
      try {
        final userByAuthResponse =
            await repository.getUserByAuth(gymId: event.gymId);
        final purchasedMembershipResponse =
            await repository.getPurchasedGymMemberships(
          gymId: event.gymId,
          userId: state.childAccountId,
          appId: AppConstants.appId,
        );
        final gymBannersResponse =
            await repository.getGymBanners(gymId: event.gymId);
        final classCategoryResponse = await repository.getClassCategories(
          gymId: event.gymId,
        );
        final gymMembershipDetailsResponse =
            await repository.getGymMembershipDetails(
          gymId: event.gymId,
          appId: AppConstants.appId,
        );
        final banners = gymBannersResponse.gymBanners.list;
        final groupMembers =
            purchasedMembershipResponse.memberships?.data?.groupMemberships;
        final singleMembers =
            purchasedMembershipResponse.memberships?.data?.singleMemberships;
        final sessionPacks =
            purchasedMembershipResponse.memberships?.data?.sessionPacks;
        final gymMembershipInfoResponse = await repository.getGymMembershipInfo(
          gymId: event.gymId,
          smId: singleMembers != null
              ? singleMembers.isNotEmpty
                  ? purchasedMembershipResponse
                      .memberships?.data?.singleMemberships?.first?.id
                  : null
              : null,
          gmId: groupMembers != null
              ? groupMembers.isNotEmpty
                  ? groupMembers.first?.id
                  : null
              : null,
          memId: (singleMembers != null
                  ? singleMembers.isNotEmpty
                      ? purchasedMembershipResponse
                          .memberships?.data?.singleMemberships?.first?.id
                      : groupMembers != null
                          ? groupMembers.isNotEmpty
                              ? groupMembers.first?.id
                              : sessionPacks != null
                                  ? sessionPacks.isNotEmpty
                                      ? sessionPacks.first?.id
                                      : null
                                  : null
                          : null
                  : '') ??
              '',
        );

        emit(
          state.copyWith(
            purchasedMembershipResponse:
                gymMembershipDetailsResponse.memberships?.data,
            classCategories: classCategoryResponse.gymClassesByCategoryV2.list,
            refreshDashboardStatus: RefreshDashboardStatus.success,
            gymBanners: banners,
            gymMembershipInfo: gymMembershipInfoResponse,
            user: userByAuthResponse.userByAuth.user,
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(
            refreshDashboardStatus: RefreshDashboardStatus.error,
          ),
        );
      }
    });

    on<SwitchAccountDashboardRefresh>((event, emit) async {
      emit(
        state.copyWith(
          switchAccountDashboardStatus: SwitchAccountDashboardStatus.loading,
        ),
      );
      try {
        emit(
          state.copyWith(
            displayPicture: event.displayPicture,
            fullName: event.fullName,
            childAccountId: event.userId,
            purchasedMembershipResponse:
                event.purchasedMembershipResponse.memberships?.data,
            switchAccountDashboardStatus: SwitchAccountDashboardStatus.success,
            gymMembershipInfo: event.gymMembershipInfo,
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(
            switchAccountDashboardStatus: SwitchAccountDashboardStatus.error,
          ),
        );
      }
    });
    on<SignOutEventDashboard>((event, emit) async {
      emit(state.copyWith(childAccountId: ''));
    });
  }

  final DashboardRepository repository;

  //Below code for hydrated bloc if we ever need it

  // @override
  // DashboardState? fromJson(Map<String, dynamic> json) {
  //   try {
  //     return DashboardState.fromJson(json);
  //   } catch (_) {
  //     return null;
  //   }
  // }

  // @override
  // Map<String, dynamic>? toJson(DashboardState state) {
  //   try {
  //     return state.toJson();
  //   } catch (_) {
  //     return null;
  //   }
  // }
}
