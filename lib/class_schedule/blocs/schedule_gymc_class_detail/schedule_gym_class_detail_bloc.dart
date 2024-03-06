import 'package:allup_user_app/class_schedule/repositories/schedule_gym_class_detail_repository.dart';
import 'package:allup_user_app/scalars.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'schedule_gym_class_detail_event.dart';
part 'schedule_gym_class_detail_state.dart';

class ScheduleGymClassDetailBloc
    extends Bloc<ScheduleGymClassDetailEvent, ScheduleGymClassDetailState> {
  ScheduleGymClassDetailBloc({
    required this.repository,
  }) : super(ScheduleGymClassDetailInitial()) {
    on<FetchClassDetails>((event, emit) async {
      emit(state.copyWith(status: ScheduleGymClassDetailStatus.loading));

      try {
        final classDetails = await repository.getScheduleGymClassDetail(
          scheduleId: event.scheduleId,
          bookedFor: event.bookedFor,
          bookedTime: event.bookedTime,
        );
        emit(
          state.copyWith(
            status: ScheduleGymClassDetailStatus.loaded,
            isBooked: classDetails.gymClassIsAlreadyBookedV2.booked,
          ),
        );
      } catch (e) {
        emit(state.copyWith(status: ScheduleGymClassDetailStatus.error));
      }
    });
  }
  final ScheduleGymClassDetailRepository repository;
}
