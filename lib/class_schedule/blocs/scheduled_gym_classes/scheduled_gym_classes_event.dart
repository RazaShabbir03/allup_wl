part of 'scheduled_gym_classes_bloc.dart';

sealed class ScheduledGymClassesEvent extends Equatable {
  const ScheduledGymClassesEvent();
}

class GetScheduledGymClasses extends ScheduledGymClassesEvent {
  const GetScheduledGymClasses({
    required this.gymId,
    required this.forDate,
    this.location,
    this.timeZoneIdentifier,
    this.instructorId,
    this.categoryId,
  });
  final String gymId;
  final DateTime forDate;
  final Input$GISLocationInput? location;
  final String? timeZoneIdentifier;
  final String? instructorId;
  final String? categoryId;

  @override
  List<Object?> get props =>
      [gymId, forDate, location, timeZoneIdentifier, instructorId, categoryId];
}

///For changing selected Date for scheduled class
class ChangeSelectedDate extends ScheduledGymClassesEvent {
  const ChangeSelectedDate({
    required this.selectedDate,
  });
  final DateTime selectedDate;

  @override
  List<Object> get props => [selectedDate];
}
