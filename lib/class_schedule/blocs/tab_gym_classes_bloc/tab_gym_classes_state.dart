part of 'tab_gym_classes_bloc.dart';

class TabGymClassesState extends Equatable {
  final TabGymClassesStatus fetchStatus;
  final List<Query$ScheduledGymClasses$gymClassesScheduledV2$list> gymClasses;
  final List<Query$GymClassesByCategory$gymClassesByCategoryV2$list>
      gymClassesByCategory;
  final List<Query$personalTrainersInGym$instructors$list>
      gymClassesByInstructor;
  final DateTime? selectedDate;
  final String? gymId;
  const TabGymClassesState({
    this.fetchStatus = TabGymClassesStatus.loading,
    this.gymClasses = const [],
    this.gymClassesByCategory = const [],
    this.gymClassesByInstructor = const [],
    this.selectedDate,
    this.gymId,
  });

  TabGymClassesState copyWith({
    TabGymClassesStatus? fetchStatus,
    List<Query$ScheduledGymClasses$gymClassesScheduledV2$list>? gymClasses,
    List<Query$GymClassesByCategory$gymClassesByCategoryV2$list>?
        gymClassesByCategory,
    List<Query$personalTrainersInGym$instructors$list>? gymClassesByInstructor,
    DateTime? selectedDate,
    String? gymId,
  }) {
    return TabGymClassesState(
      fetchStatus: fetchStatus ?? this.fetchStatus,
      gymClasses: gymClasses ?? this.gymClasses,
      gymClassesByCategory: gymClassesByCategory ?? this.gymClassesByCategory,
      gymClassesByInstructor:
          gymClassesByInstructor ?? this.gymClassesByInstructor,
      selectedDate: selectedDate ?? this.selectedDate,
      gymId: gymId ?? this.gymId,
    );
  }

  @override
  List<Object?> get props => [
        fetchStatus,
        gymClasses,
        selectedDate,
        gymId,
        gymClassesByCategory,
        gymClassesByInstructor
      ];
}

final class TabGymClassesInitial extends TabGymClassesState {}

enum TabGymClassesStatus { loading, loaded, error, empty }
