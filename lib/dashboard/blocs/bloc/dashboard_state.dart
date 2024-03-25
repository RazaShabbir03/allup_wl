part of 'dashboard_bloc.dart';

class DashboardState extends Equatable {
  const DashboardState(
      {this.user,
      this.gymBanners = const [],
      this.classCategories = const [],
      this.gymMembershipInfo,
      this.dashboardStatus = DashboardStatus.initial,
      this.gymId,
      this.fullName,
      this.displayPicture,
      this.purchasedMembershipResponse,
      this.childAccountId,
      this.switchAccountDashboardStatus = SwitchAccountDashboardStatus.initial,
      this.refreshDashboardStatus = RefreshDashboardStatus.initial});

  final Query$UserByAuth$userByAuth$user? user;
  final Query$GymMembershipInfo? gymMembershipInfo;
  final List<Query$GymBanners$gymBanners$list?> gymBanners;
  final DashboardStatus dashboardStatus;
  final RefreshDashboardStatus? refreshDashboardStatus;
  final SwitchAccountDashboardStatus? switchAccountDashboardStatus;
  final List<Query$GymClassesByCategory$gymClassesByCategoryV2$list?>
      classCategories;
  final String? fullName;
  final String? displayPicture;
  final String? gymId;
  final String? childAccountId;
  final Query$PurchasedGymMemberships$memberships$data?
      purchasedMembershipResponse;

  //create a copyWith method
  DashboardState copyWith(
      {Query$UserByAuth$userByAuth$user? user,
      Query$GymMembershipInfo? gymMembershipInfo,
      List<Query$GymClassesByCategory$gymClassesByCategoryV2$list?>?
          classCategories,
      Query$PurchasedGymMemberships$memberships$data?
          purchasedMembershipResponse,
      String? fullName,
      String? displayPicture,
      DashboardStatus? dashboardStatus,
      RefreshDashboardStatus? refreshDashboardStatus,
      SwitchAccountDashboardStatus? switchAccountDashboardStatus,
      List<Query$GymBanners$gymBanners$list?>? gymBanners,
      String? childAccountId,
      String? gymId}) {
    return DashboardState(
      childAccountId: childAccountId ?? this.childAccountId,
      purchasedMembershipResponse:
          purchasedMembershipResponse ?? this.purchasedMembershipResponse,
      user: user ?? this.user,
      gymMembershipInfo: gymMembershipInfo ?? this.gymMembershipInfo,
      fullName: fullName ?? this.fullName,
      displayPicture: displayPicture ?? this.displayPicture,
      classCategories: classCategories ?? this.classCategories,
      dashboardStatus: dashboardStatus ?? this.dashboardStatus,
      switchAccountDashboardStatus: switchAccountDashboardStatus,
      gymId: gymId ?? this.gymId,
      refreshDashboardStatus: refreshDashboardStatus,
      gymBanners: gymBanners ?? this.gymBanners,
    );
  }

  @override
  List<Object?> get props => [
        user,
        dashboardStatus,
        switchAccountDashboardStatus,
        purchasedMembershipResponse,
        classCategories,
        displayPicture,
        fullName,
        childAccountId,
        gymId,
        refreshDashboardStatus,
        gymMembershipInfo,
        gymBanners
      ];

  //Below code for hydrated bloc if we ever need it

  // factory DashboardState.fromJson(Map<String, dynamic> map) {
  //   return DashboardState(
  //     classCategories: (map['classCategories'] as List?)
  //             ?.map((e) => e == null
  //                 ? null
  //                 : Query$GymClassesByCategory$gymClassesByCategoryV2$list
  //                     .fromJson(e as Map<String, dynamic>))
  //             .toList() ??
  //         [],
  //     gymBanners: (map['gymBanners'] as List?)
  //             ?.map((e) => e == null
  //                 ? null
  //                 : Query$GymBanners$gymBanners$list.fromJson(
  //                     e as Map<String, dynamic>))
  //             .toList() ??
  //         [],
  //     gymMembershipInfo: map['gymMembershipInfo'] != null
  //         ? Query$GymMembershipInfo.fromJson(
  //             map['gymMembershipInfo'] as Map<String, dynamic>)
  //         : null,
  //     user: map['user'] != null
  //         ? Query$UserByAuth$userByAuth$user.fromJson(
  //             map['user'] as Map<String, dynamic>)
  //         : null,
  //     // dashboardStatus: map['dashboardStatus'] != null
  //     //     ? _parseDashboardStatus(map['dashboardStatus'] as String)
  //     //     : DashboardStatus.initial,
  //     gymId: map['gymId'] as String?,
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'classCategories': classCategories.map((e) => e?.toJson()).toList(),
  //     'gymBanners': gymBanners.map((e) => e?.toJson()).toList(),
  //     'gymMembershipInfo': gymMembershipInfo?.toJson(),
  //     'user': user?.toJson(),
  //     'gymId': gymId,
  //     // 'dashboardStatus': _dashboardStatusToString(dashboardStatus),
  //   };
  // }
}

// DashboardStatus _parseDashboardStatus(String status) {
//   switch (status) {
//     case 'loading':
//       return DashboardStatus.loading;
//     case 'success':
//       return DashboardStatus.success;
//     case 'error':
//       return DashboardStatus.error;
//     default:
//       return DashboardStatus.initial;
//   }
// }

// String _dashboardStatusToString(DashboardStatus status) {
//   switch (status) {
//     case DashboardStatus.loading:
//       return 'loading';
//     case DashboardStatus.success:
//       return 'success';
//     case DashboardStatus.error:
//       return 'error';
//     default:
//       return 'initial';
//   }
// }

final class DashboardInitial extends DashboardState {}

enum DashboardStatus { initial, loading, success, error }

enum RefreshDashboardStatus { initial, loading, success, error }

enum SwitchAccountDashboardStatus { initial, loading, success, error }
