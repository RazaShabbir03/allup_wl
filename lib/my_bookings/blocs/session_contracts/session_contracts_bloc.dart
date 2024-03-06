import 'package:allup_user_app/my_bookings/repositories/session_contract_repository.dart';
import 'package:allup_user_app/my_bookings/schemas/booked_pt_sessions.graphql.dart';
import 'package:allup_user_app/my_bookings/schemas/purchase_session_contract.graphql.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';

part 'session_contracts_event.dart';
part 'session_contracts_state.dart';

class SessionContractsBloc
    extends Bloc<SessionContractsEvent, SessionContractsState> {
  SessionContractsBloc({
    required this.repository,
  }) : super(SessionContractsInitial()) {
    on<FetchSessionContracts>((event, emit) async {
      emit(
        state.copyWith(
          sessionContractsStatus: SessionContractsStatus.loading,
          bookedPTSessionStatus: BookedPTSessionStatus.loading,
        ),
      );
      try {
        final sessionContracts = await repository.getSessionContract(
          gymId: event.gymId,
        );
        if (sessionContracts.sessionContractByAuth.list != null &&
            sessionContracts.sessionContractByAuth.list!.isNotEmpty) {
          emit(
            state.copyWith(
              selectedSessionContractName: sessionContracts
                  .sessionContractByAuth.list?.first?.service.name,
              selectedSessionContractId:
                  sessionContracts.sessionContractByAuth.list?.first?.id,
              sessionContractsStatus: SessionContractsStatus.success,
              sessionContracts: sessionContracts.sessionContractByAuth.list,
            ),
          );
          add(const TabEvent(index: 0));
        } else {
          emit(
            state.copyWith(
              sessionContractsStatus: SessionContractsStatus.success,
              sessionContracts: sessionContracts.sessionContractByAuth.list,
              bookedPTSessionStatus: BookedPTSessionStatus.empty,
            ),
          );
        }
      } catch (e) {
        emit(
          state.copyWith(
            sessionContractsStatus: SessionContractsStatus.failure,
          ),
        );
      }
    });

    on<CancelBookedPT>((event, emit) async {
      emit(
        state.copyWith(
          submitStatus: SubmitStatus.loading,
          bookedPTSessionStatus: BookedPTSessionStatus.loading,
        ),
      );
      try {
        await repository.addInstructorEvent(
            type: Enum$InstructorSessionEventType.CANCELED,
            customerPrivateCoachSessionId: event.customerPrivateCoachSessionId);
        emit(
          state.copyWith(
            submitStatus: SubmitStatus.success,
          ),
        );
        add(TabEvent(index: state.tabIndex));
      } catch (e) {
        emit(
          state.copyWith(
            submitStatus: SubmitStatus.failure,
            bookedPTSessionStatus: BookedPTSessionStatus.failure,
          ),
        );
      }
    });

    on<SetSessionContract>((event, emit) {
      emit(
        state.copyWith(
          selectedSessionContractName: event.sessionContract.service.name,
          selectedSessionContractId: event.sessionContract.id,
        ),
      );
      add(TabEvent(index: state.tabIndex));
    });

    on<TabEvent>(
      (event, emit) {
        emit(
          state.copyWith(
            tabIndex: event.index,
            bookedPTSessionStatus: BookedPTSessionStatus.loading,
            type: Enum$SessionContractBookingType.values[event.index],
          ),
        );
        switch (event.index) {
          case 0:
            add(GetPreviousSessionContract());
          case 1:
            add(GetTodaySessionContract());
          case 2:
            add(GetUpcomingSessionContract());
          case 3:
            add(GetCancelledSessionContract());
        }
      },
      transformer: restartable(),
    );

    on<GetPreviousSessionContract>(
      (event, emit) async {
        emit(
          state.copyWith(
            type: Enum$SessionContractBookingType.PREVIOUS,
          ),
        );
        try {
          final bookedPTSessions = await repository.getBookedPTSessions(
              sessionContractId: state.selectedSessionContractId!,
              type: state.type);

          emit(
            state.copyWith(
              bookedPTSessionStatus: BookedPTSessionStatus.success,
              previousPTSessions: bookedPTSessions.sessionContractBookings.list,
            ),
          );
        } catch (e) {
          emit(
            state.copyWith(
              bookedPTSessionStatus: BookedPTSessionStatus.failure,
            ),
          );
        }
      },
    );

    on<GetTodaySessionContract>(
      (event, emit) async {
        emit(
          state.copyWith(
            type: Enum$SessionContractBookingType.TODAY,
          ),
        );
        try {
          final bookedPTSessions = await repository.getBookedPTSessions(
              sessionContractId: state.selectedSessionContractId!,
              type: state.type);

          emit(
            state.copyWith(
              bookedPTSessionStatus: BookedPTSessionStatus.success,
              todayPTSessions: bookedPTSessions.sessionContractBookings.list,
            ),
          );
        } catch (e) {
          emit(
            state.copyWith(
              bookedPTSessionStatus: BookedPTSessionStatus.failure,
            ),
          );
        }
      },
    );

    on<GetUpcomingSessionContract>(
      (event, emit) async {
        emit(
          state.copyWith(
            type: Enum$SessionContractBookingType.UPCOMING,
          ),
        );
        try {
          final bookedPTSessions = await repository.getBookedPTSessions(
              sessionContractId: state.selectedSessionContractId!,
              type: state.type);

          emit(
            state.copyWith(
              bookedPTSessionStatus: BookedPTSessionStatus.success,
              upcomingPTSessions: bookedPTSessions.sessionContractBookings.list,
            ),
          );
        } catch (e) {
          emit(
            state.copyWith(
              bookedPTSessionStatus: BookedPTSessionStatus.failure,
            ),
          );
        }
      },
    );

    on<GetCancelledSessionContract>(
      (event, emit) async {
        emit(
          state.copyWith(
            type: Enum$SessionContractBookingType.CANCELED,
          ),
        );
        try {
          final bookedPTSessions = await repository.getBookedPTSessions(
              sessionContractId: state.selectedSessionContractId!,
              type: state.type);

          emit(
            state.copyWith(
              bookedPTSessionStatus: BookedPTSessionStatus.success,
              cancelledPTSessions:
                  bookedPTSessions.sessionContractBookings.list,
            ),
          );
        } catch (e) {
          emit(
            state.copyWith(
              bookedPTSessionStatus: BookedPTSessionStatus.failure,
            ),
          );
        }
      },
    );
  }
  final SessionContractRepository repository;
}
