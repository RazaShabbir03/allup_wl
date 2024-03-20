part of 'class_schedule_instructor_bloc.dart';

class ClassScheduleInstructorState extends Equatable {
  const ClassScheduleInstructorState({
    this.selectedDate,
    this.fetchStatus = ClassScheduleInstructorStatus.loading,
    this.gymClasses = const [],
    this.gymId,
    this.instructorId,
  });
  final DateTime? selectedDate;
  final ClassScheduleInstructorStatus fetchStatus;
  final List<Query$ScheduledGymClasses$gymClassesScheduledV2$list> gymClasses;
  final String? gymId;
  final String? instructorId;

  ClassScheduleInstructorState copyWith(
      {DateTime? selectedDate,
      ClassScheduleInstructorStatus? fetchStatus,
      List<Query$ScheduledGymClasses$gymClassesScheduledV2$list>? gymClasses,
      String? gymId,
      String? instructorId}) {
    return ClassScheduleInstructorState(
        selectedDate: selectedDate ?? this.selectedDate,
        fetchStatus: fetchStatus ?? this.fetchStatus,
        gymClasses: gymClasses ?? this.gymClasses,
        gymId: gymId ?? this.gymId,
        instructorId: instructorId ?? this.instructorId);
  }

  @override
  List<Object?> get props =>
      [selectedDate, fetchStatus, gymClasses, gymId, instructorId];
}

final class ClassScheduleInstructorInitial
    extends ClassScheduleInstructorState {}

enum ClassScheduleInstructorStatus { loading, loaded, error, empty }
