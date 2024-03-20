part of 'class_schedule_instructor_bloc.dart';

class ClassScheduleInstructorEvent extends Equatable {
  const ClassScheduleInstructorEvent();

  @override
  List<Object> get props => [];
}

class FetchClassScheduleInstructorEvent extends ClassScheduleInstructorEvent {
  const FetchClassScheduleInstructorEvent(
      {required this.instructorId, required this.gymId, required this.forDate});
  final String instructorId;
  final String gymId;
  final DateTime forDate;

  @override
  List<Object> get props => [instructorId, gymId, forDate];
}


class ChangeSelectedDate extends ClassScheduleInstructorEvent {
  const ChangeSelectedDate({required this.selectedDate});
  final DateTime selectedDate;

  @override
  List<Object> get props => [selectedDate];
}
