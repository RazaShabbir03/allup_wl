part of 'dashboard_bloc.dart';

class DashboardState extends Equatable {
  const DashboardState(
      {this.user,
      this.gymBanners = const [],
      this.classCategories = const [],
      this.gymMembershipInfo,
      this.dashboardStatus = DashboardStatus.initial,
      this.gymId,
      this.purchasedMembershipResponse,
      this.refreshDashboardStatus = RefreshDashboardStatus.initial});

  final Query$UserByAuth$userByAuth$user? user;
  final Query$GymMembershipInfo? gymMembershipInfo;
  final List<Query$GymBanners$gymBanners$list?> gymBanners;
  final DashboardStatus dashboardStatus;
  final RefreshDashboardStatus? refreshDashboardStatus;
  final List<Query$GymClassesByCategory$gymClassesByCategoryV2$list?>
      classCategories;
  final String? gymId;
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
      DashboardStatus? dashboardStatus,
      RefreshDashboardStatus? refreshDashboardStatus,
      List<Query$GymBanners$gymBanners$list?>? gymBanners,
      String? gymId}) {
    return DashboardState(
      purchasedMembershipResponse:
          purchasedMembershipResponse ?? this.purchasedMembershipResponse,
      user: user ?? this.user,
      gymMembershipInfo: gymMembershipInfo ?? this.gymMembershipInfo,
      classCategories: classCategories ?? this.classCategories,
      dashboardStatus: dashboardStatus ?? this.dashboardStatus,
      gymId: gymId ?? this.gymId,
      refreshDashboardStatus: refreshDashboardStatus,
      gymBanners: gymBanners ?? this.gymBanners,
    );
  }

  @override
  List<Object?> get props => [
        user,
        dashboardStatus,
        purchasedMembershipResponse,
        classCategories,
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
