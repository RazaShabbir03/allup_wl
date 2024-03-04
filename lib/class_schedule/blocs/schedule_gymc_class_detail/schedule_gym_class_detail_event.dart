part of 'schedule_gym_class_detail_bloc.dart';

sealed class ScheduleGymClassDetailEvent extends Equatable {
  const ScheduleGymClassDetailEvent();

  @override
  List<Object> get props => [];
}

class FetchClassDetails extends ScheduleGymClassDetailEvent {
  const FetchClassDetails({
    required this.scheduleId,
    required this.bookedFor,
    required this.bookedTime,
  });
  final String scheduleId;
  final String bookedFor;
  final String bookedTime;
  @override
  List<Object> get props => [scheduleId, bookedFor, bookedTime];
}
