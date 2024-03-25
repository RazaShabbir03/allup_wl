part of 'tab_gym_classes_bloc.dart';

sealed class TabGymClassesEvent extends Equatable {
  const TabGymClassesEvent();

  @override
  List<Object> get props => [];
}

class GetTabScheduledGymClassesEvent extends TabGymClassesEvent {
  const GetTabScheduledGymClassesEvent(
      {required this.gymId, required this.forDate});
  final String gymId;
  final DateTime forDate;

  @override
  List<Object> get props => [gymId, forDate];
}

class ChangeSelectedDate extends TabGymClassesEvent {
  const ChangeSelectedDate({required this.selectedDate});
  final DateTime selectedDate;

  @override
  List<Object> get props => [selectedDate];
}

class TabEvent extends TabGymClassesEvent {
  const TabEvent({required this.tabIndex});
  final int tabIndex;

  @override
  List<Object> get props => [tabIndex];
}

class GetTabScheduledGymClassesByCategoryEvent extends TabGymClassesEvent {
  const GetTabScheduledGymClassesByCategoryEvent({required this.gymId});
  final String gymId;

  @override
  List<Object> get props => [gymId];
}

class GetTabScheduledGymClassesByInstructorEvent extends TabGymClassesEvent {
  const GetTabScheduledGymClassesByInstructorEvent({required this.gymId});
  final String gymId;

  @override
  List<Object> get props => [gymId];
}
