import 'package:allup_user_app/my_bookings/repositories/my_classes_repository.dart';
import 'package:allup_user_app/my_bookings/schemas/booked_gym_classes.graphql.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'my_classes_event.dart';
part 'my_classes_state.dart';

class MyClassesBloc extends Bloc<MyClassesEvent, MyClassesState> {
  MyClassesBloc({required this.repository}) : super(MyClassesInitial()) {
    on<FetchMyClasses>((event, emit) async {
      emit(state.copyWith(
        status: FetchMyClassesStatus.loading,
        selectedGymId: event.gymId,
        timeZoneIdentifier: event.timeZoneIdentifier,
        location: event.location,
      ));
      try {
        final classes = await repository.getMyClasses(
          type: state.periodType,
          gymId: event.gymId,
          timeZoneIdentifier: event.timeZoneIdentifier,
          location: event.location,
        );
        emit(state.copyWith(
          classes: classes.membershipGymClassesV2.list,
          status: FetchMyClassesStatus.success,
        ));
      } catch (e) {
        emit(state.copyWith(status: FetchMyClassesStatus.error));
      }
    });

    on<SetPeriodType>((event, emit) {
      emit(state.copyWith(periodType: event.periodType));
      add(FetchMyClasses(
          gymId: state.selectedGymId!,
          timeZoneIdentifier: state.timeZoneIdentifier!,
          location: state.location!));
    });
  }
  final MyClassesRepository repository;
}
