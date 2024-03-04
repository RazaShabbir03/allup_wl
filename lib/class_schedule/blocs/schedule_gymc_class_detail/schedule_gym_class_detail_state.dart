part of 'schedule_gym_class_detail_bloc.dart';

class ScheduleGymClassDetailState extends Equatable {
  const ScheduleGymClassDetailState({
    this.status = ScheduleGymClassDetailStatus.initial,
    this.isBooked = false,
  });
  final ScheduleGymClassDetailStatus status;
  final bool isBooked;

  ScheduleGymClassDetailState copyWith({
    ScheduleGymClassDetailStatus? status,
    bool? isBooked,
  }) {
    return ScheduleGymClassDetailState(
      status: status ?? this.status,
      isBooked: isBooked ?? this.isBooked,
    );
  }

  @override
  List<Object> get props => [status, isBooked];
}

enum ScheduleGymClassDetailStatus { initial, loading, loaded, error }

final class ScheduleGymClassDetailInitial extends ScheduleGymClassDetailState {}
