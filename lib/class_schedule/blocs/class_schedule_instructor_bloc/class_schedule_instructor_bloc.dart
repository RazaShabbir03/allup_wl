import 'package:allup_user_app/class_schedule/repositories/schedule_gym_class_instructor_repository.dart';
import 'package:allup_user_app/class_schedule/schemas/scheduled_gym_classes.graphql.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';

part 'class_schedule_instructor_event.dart';
part 'class_schedule_instructor_state.dart';

class ClassScheduleInstructorBloc
    extends Bloc<ClassScheduleInstructorEvent, ClassScheduleInstructorState> {
  ClassScheduleInstructorBloc({
    required this.repository,
  }) : super(ClassScheduleInstructorInitial()) {
    on<FetchClassScheduleInstructorEvent>((event, emit) async {
      emit(state.copyWith(
        selectedDate: event.forDate,
        fetchStatus: ClassScheduleInstructorStatus.loading,
        gymId: event.gymId,
        instructorId: event.instructorId,
      ));
      try {
        final gymClasses = await repository.getGymClassesByInstructor(
          instructorId: event.instructorId,
          forDate: state.selectedDate!,
          gymId: event.gymId,
        );
        if (gymClasses.gymClassesScheduledV2.list!.isEmpty) {
          emit(
              state.copyWith(fetchStatus: ClassScheduleInstructorStatus.empty));
        } else {
          emit(
            state.copyWith(
              fetchStatus: ClassScheduleInstructorStatus.loaded,
              gymClasses: gymClasses.gymClassesScheduledV2.list,
            ),
          );
        }
        if (emit.isDone) return;
      } catch (e) {
        emit(state.copyWith(fetchStatus: ClassScheduleInstructorStatus.error));
      }
    });

    on<ChangeSelectedDate>((event, emit) async {
      emit(state.copyWith(selectedDate: event.selectedDate));
      add(FetchClassScheduleInstructorEvent(
        forDate: event.selectedDate,
        gymId: state.gymId!,
        instructorId: state.instructorId!,
      ));
    }, transformer: restartable());
  }
  final ScheduleGymClassInstructorRepository repository;
}
