part of 'scheduled_gym_classes_bloc.dart';

class ScheduledGymClassesState extends Equatable {
  const ScheduledGymClassesState({
    this.status = ScheduledGymClassesStatus.initial,
    this.gymClasses = const [],
    this.selectedDate,
    this.gymId,
    this.categoryId,
  });
  final ScheduledGymClassesStatus status;
  final List<Query$ScheduledGymClasses$gymClassesScheduledV2$list> gymClasses;
  final DateTime? selectedDate;
  final String? gymId;
  final String? categoryId;

  //create a copyWith method
  ScheduledGymClassesState copyWith({
    ScheduledGymClassesStatus? status,
    List<Query$ScheduledGymClasses$gymClassesScheduledV2$list>? gymClasses,
    DateTime? selectedDate,
    String? gymId,
    String? categoryId,
  }) {
    return ScheduledGymClassesState(
      status: status ?? this.status,
      gymClasses: gymClasses ?? this.gymClasses,
      selectedDate: selectedDate ?? this.selectedDate,
      gymId: gymId ?? this.gymId,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  @override
  List<Object?> get props =>
      [status, gymClasses, selectedDate, gymId, categoryId];
}

final class ScheduledGymClassesInitial extends ScheduledGymClassesState {}

enum ScheduledGymClassesStatus { initial, loading, success, error }
