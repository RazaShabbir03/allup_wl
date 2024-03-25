import 'package:allup_user_app/class_schedule/repositories/scheduled_gym_classes_repository.dart';
import 'package:allup_user_app/class_schedule/schemas/scheduled_gym_classes.graphql.dart';
import 'package:allup_user_app/scalars.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:allup_user_app/utils/helper_functions.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';

part 'scheduled_gym_classes_event.dart';
part 'scheduled_gym_classes_state.dart';

class ScheduledGymClassesBloc
    extends Bloc<ScheduledGymClassesEvent, ScheduledGymClassesState> {
  ScheduledGymClassesBloc({
    required this.repository,
  }) : super(ScheduledGymClassesInitial()) {
    on<GetScheduledGymClasses>(
      (event, emit) async {
        emit(state.copyWith(
            status: ScheduledGymClassesStatus.loading,
            categoryId: event.categoryId,
            gymId: event.gymId,
            selectedDate: event.forDate));
        try {
          final gymClasses = await repository.getScheduledGymClasses(
            gymId: event.gymId,
            forDate: Date(event.forDate),
            location: event.location,
            timeZoneIdentifier: event.timeZoneIdentifier,
            instructorId: event.instructorId,
            categoryId: event.categoryId,
          );
          emit(
            state.copyWith(
              selectedDate: event.forDate,
              status: ScheduledGymClassesStatus.success,
              gymClasses: gymClasses.gymClassesScheduledV2.list,
            ),
          );
          if (emit.isDone) return;
        } catch (e) {
          emit(state.copyWith(status: ScheduledGymClassesStatus.error));
        }
      },
      transformer: restartable(),
    );
    on<ChangeSelectedDate>((event, emit) async {
      emit(state.copyWith(selectedDate: event.selectedDate));
      add(GetScheduledGymClasses(
        gymId: state.gymId!,
        forDate: event.selectedDate,
        // location: event.location,
        // timeZoneIdentifier: event.timeZoneIdentifier,
        // instructorId: event.instructorId,
        categoryId: state.categoryId,
      ));
    }, transformer: restartable());
  }
  final ScheduledGymClassesRepository repository;
}
