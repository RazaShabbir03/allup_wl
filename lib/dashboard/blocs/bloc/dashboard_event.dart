part of 'dashboard_bloc.dart';

sealed class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object> get props => [];
}

enum DashboardStatus { initial, loading, success, error }

enum RefreshDashboardStatus { initial, loading, success, error }

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
