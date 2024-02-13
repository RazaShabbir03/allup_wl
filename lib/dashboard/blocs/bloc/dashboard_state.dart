part of 'dashboard_bloc.dart';

class DashboardState extends Equatable {
  const DashboardState(
      {this.user,
      this.gymBanners = const [],
      this.gymMembershipInfo,
      this.dashboardStatus = DashboardStatus.initial,
      this.gymId,
      this.refreshDashboardStatus = RefreshDashboardStatus.initial});

  final Query$UserByAuth$userByAuth$user? user;
  final Query$GymMembershipInfo? gymMembershipInfo;
  final List<Query$GymBanners$gymBanners$list?> gymBanners;
  final DashboardStatus dashboardStatus;
  final RefreshDashboardStatus? refreshDashboardStatus;
  final String? gymId;

  //create a copyWith method
  DashboardState copyWith(
      {Query$UserByAuth$userByAuth$user? user,
      Query$GymMembershipInfo? gymMembershipInfo,
      DashboardStatus? dashboardStatus,
      RefreshDashboardStatus? refreshDashboardStatus,
      List<Query$GymBanners$gymBanners$list?>? gymBanners,
      String? gymId}) {
    return DashboardState(
      user: user ?? this.user,
      gymMembershipInfo: gymMembershipInfo ?? this.gymMembershipInfo,
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
        gymId,
        refreshDashboardStatus,
        gymMembershipInfo,
        gymBanners
      ];
  factory DashboardState.fromJson(Map<String, dynamic> map) {
    return DashboardState(
      gymBanners: (map['gymBanners'] as List?)
              ?.map((e) => e == null
                  ? null
                  : Query$GymBanners$gymBanners$list.fromJson(
                      e as Map<String, dynamic>))
              .toList() ??
          [],
      gymMembershipInfo: map['gymMembershipInfo'] != null
          ? Query$GymMembershipInfo.fromJson(
              map['gymMembershipInfo'] as Map<String, dynamic>)
          : null,
      user: map['user'] != null
          ? Query$UserByAuth$userByAuth$user.fromJson(
              map['user'] as Map<String, dynamic>)
          : null,
      dashboardStatus: map['dashboardStatus'] != null
          ? _parseDashboardStatus(map['dashboardStatus'] as String)
          : DashboardStatus.initial,
      gymId: map['gymId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'gymBanners': gymBanners.map((e) => e?.toJson()).toList(),
      'gymMembershipInfo': gymMembershipInfo?.toJson(),
      'user': user?.toJson(),
      'gymId': gymId,
      'dashboardStatus': _dashboardStatusToString(dashboardStatus),
    };
  }
}

DashboardStatus _parseDashboardStatus(String status) {
  switch (status) {
    case 'loading':
      return DashboardStatus.loading;
    case 'success':
      return DashboardStatus.success;
    case 'error':
      return DashboardStatus.error;
    default:
      return DashboardStatus.initial;
  }
}

String _dashboardStatusToString(DashboardStatus status) {
  switch (status) {
    case DashboardStatus.loading:
      return 'loading';
    case DashboardStatus.success:
      return 'success';
    case DashboardStatus.error:
      return 'error';
    default:
      return 'initial';
  }
}

final class DashboardInitial extends DashboardState {}
