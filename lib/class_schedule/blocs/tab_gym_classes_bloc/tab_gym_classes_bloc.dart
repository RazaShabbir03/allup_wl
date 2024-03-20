import 'package:allup_user_app/class_schedule/repositories/scheduled_gym_classes_repository.dart';
import 'package:allup_user_app/class_schedule/schemas/personal_trainers_in_gym.graphql.dart';
import 'package:allup_user_app/class_schedule/schemas/scheduled_gym_classes.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/gym_classes_by_categories.graphql.dart';
import 'package:allup_user_app/scalars.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';

part 'tab_gym_classes_event.dart';
part 'tab_gym_classes_state.dart';

class TabGymClassesBloc extends Bloc<TabGymClassesEvent, TabGymClassesState> {
  TabGymClassesBloc({
    required this.repository,
  }) : super(TabGymClassesInitial()) {
    on<GetTabScheduledGymClassesEvent>(
      (event, emit) async {
        emit(state.copyWith(
            fetchStatus: TabGymClassesStatus.loading,
            gymId: event.gymId,
            selectedDate: event.forDate));
        try {
          final gymClasses = await repository.getScheduledGymClasses(
            gymId: event.gymId,
            forDate: Date(event.forDate),
          );

          if (gymClasses.gymClassesScheduledV2.list!.isEmpty) {
            emit(state.copyWith(fetchStatus: TabGymClassesStatus.empty));
          } else {
            emit(
              state.copyWith(
                fetchStatus: TabGymClassesStatus.loaded,
                gymClasses: gymClasses.gymClassesScheduledV2.list,
              ),
            );
          }

          if (emit.isDone) return;
        } catch (e) {
          emit(state.copyWith(fetchStatus: TabGymClassesStatus.error));
        }
      },
      transformer: restartable(),
    );
    on<ChangeSelectedDate>((event, emit) async {
      emit(state.copyWith(selectedDate: event.selectedDate));
      add(GetTabScheduledGymClassesEvent(
        gymId: state.gymId!,
        forDate: event.selectedDate,
      ));
    }, transformer: restartable());

    on<TabEvent>((event, emit) async {
      emit(state.copyWith(fetchStatus: TabGymClassesStatus.loading));
      if (event.tabIndex == 0) {
        add(GetTabScheduledGymClassesEvent(
          gymId: state.gymId!,
          forDate: state.selectedDate!,
        ));
      } else if (event.tabIndex == 1) {
        add(GetTabScheduledGymClassesByInstructorEvent(
          gymId: state.gymId!,
        ));
      } else if (event.tabIndex == 2) {
        add(GetTabScheduledGymClassesByCategoryEvent(
          gymId: state.gymId!,
        ));
      }
    }, transformer: restartable());

    on<GetTabScheduledGymClassesByCategoryEvent>(
      (event, emit) async {
        emit(state.copyWith(fetchStatus: TabGymClassesStatus.loading));
        try {
          final categories = await repository.getClassCategories(
            gymId: event.gymId,
          );
          emit(
            state.copyWith(
              fetchStatus: TabGymClassesStatus.loaded,
              gymClassesByCategory: categories.gymClassesByCategoryV2.list,
            ),
          );
          if (emit.isDone) return;
        } catch (e) {
          emit(state.copyWith(fetchStatus: TabGymClassesStatus.error));
        }
      },
      transformer: restartable(),
    );

    on<GetTabScheduledGymClassesByInstructorEvent>(
      (event, emit) async {
        emit(state.copyWith(fetchStatus: TabGymClassesStatus.loading));
        try {
          final instructors = await repository.getPersonalTrainersInGym(
            gymId: event.gymId,
          );
          emit(
            state.copyWith(
              fetchStatus: TabGymClassesStatus.loaded,
              gymClassesByInstructor: instructors.instructors.list,
            ),
          );
          if (emit.isDone) return;
        } catch (e) {
          emit(state.copyWith(fetchStatus: TabGymClassesStatus.error));
        }
      },
      transformer: restartable(),
    );
  }
  final ScheduledGymClassesRepository repository;
}
