part of 'dashboard_bloc.dart';

sealed class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object> get props => [];
}

class GetDashboardEvents extends DashboardEvent {
  const GetDashboardEvents({required this.gymId});
  final String gymId;

  @override
  List<Object> get props => [gymId];
}

class RefreshDashboard extends DashboardEvent {
  const RefreshDashboard({
    required this.gymId,
  });
  final String gymId;
}

class RefreshDashboardFromTerminatedApp extends DashboardEvent {
  const RefreshDashboardFromTerminatedApp({
    required this.gymId,
  });
  final String gymId;
}

class SwitchAccountDashboardRefresh extends DashboardEvent {
  const SwitchAccountDashboardRefresh(
      {required this.purchasedMembershipResponse,
      required this.fullName,
      required this.gymMembershipInfo,
      this.displayPicture,
      this.userId});
  final Query$PurchasedGymMemberships purchasedMembershipResponse;
  final Query$GymMembershipInfo? gymMembershipInfo;
  final String fullName;
  final String? userId;
  final String? displayPicture;
}

class SignOutEventDashboard extends DashboardEvent {
  const SignOutEventDashboard();
}
