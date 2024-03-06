part of 'session_contracts_bloc.dart';

class SessionContractsState extends Equatable {
  const SessionContractsState({
    this.selectedSessionContractId,
    this.selectedSessionContractName,
    this.type = Enum$SessionContractBookingType.PREVIOUS,
    this.sessionContractsStatus = SessionContractsStatus.initial,
    this.bookedPTSessionStatus = BookedPTSessionStatus.initial,
    this.submitStatus = SubmitStatus.initial,
    this.sessionContracts = const [],
    this.previousPTSessions = const [],
    this.upcomingPTSessions = const [],
    this.cancelledPTSessions = const [],
    this.todayPTSessions = const [],
    this.tabIndex = 0,
  });
  final String? selectedSessionContractId;
  final String? selectedSessionContractName;
  final Enum$SessionContractBookingType type;
  final SessionContractsStatus sessionContractsStatus;
  final BookedPTSessionStatus bookedPTSessionStatus;
  final SubmitStatus? submitStatus;
  final int tabIndex;
  final List<Query$PurchasedSessionContractsForGym$sessionContractByAuth$list?>?
      sessionContracts;
  final List<Query$BookedPTSessions$sessionContractBookings$list>
      previousPTSessions;
  final List<Query$BookedPTSessions$sessionContractBookings$list>
      upcomingPTSessions;
  final List<Query$BookedPTSessions$sessionContractBookings$list>
      cancelledPTSessions;
  final List<Query$BookedPTSessions$sessionContractBookings$list>
      todayPTSessions;

  SessionContractsState copyWith({
    String? selectedSessionContractId,
    String? selectedSessionContractName,
    Enum$SessionContractBookingType? type,
    SessionContractsStatus? sessionContractsStatus,
    BookedPTSessionStatus? bookedPTSessionStatus,
    SubmitStatus? submitStatus,
    int? tabIndex,
    List<Query$PurchasedSessionContractsForGym$sessionContractByAuth$list?>?
        sessionContracts,
    List<Query$BookedPTSessions$sessionContractBookings$list>?
        previousPTSessions,
    List<Query$BookedPTSessions$sessionContractBookings$list>?
        upcomingPTSessions,
    List<Query$BookedPTSessions$sessionContractBookings$list>?
        cancelledPTSessions,
    List<Query$BookedPTSessions$sessionContractBookings$list>? todayPTSessions,
  }) {
    return SessionContractsState(
      selectedSessionContractId:
          selectedSessionContractId ?? this.selectedSessionContractId,
      selectedSessionContractName:
          selectedSessionContractName ?? this.selectedSessionContractName,
      type: type ?? this.type,
      sessionContractsStatus:
          sessionContractsStatus ?? this.sessionContractsStatus,
      submitStatus: submitStatus,
      tabIndex: tabIndex ?? this.tabIndex,
      bookedPTSessionStatus:
          bookedPTSessionStatus ?? this.bookedPTSessionStatus,
      sessionContracts: sessionContracts ?? this.sessionContracts,
      previousPTSessions: previousPTSessions ?? this.previousPTSessions,
      upcomingPTSessions: upcomingPTSessions ?? this.upcomingPTSessions,
      cancelledPTSessions: cancelledPTSessions ?? this.cancelledPTSessions,
      todayPTSessions: todayPTSessions ?? this.todayPTSessions,
    );
  }

  @override
  List<Object?> get props => [
        selectedSessionContractId,
        selectedSessionContractName,
        sessionContractsStatus,
        type,
        bookedPTSessionStatus,
        submitStatus,
        sessionContracts,
        previousPTSessions,
        upcomingPTSessions,
        cancelledPTSessions,
        todayPTSessions,
      ];
}

final class SessionContractsInitial extends SessionContractsState {}

enum SessionContractsStatus { initial, loading, success, failure }

enum BookedPTSessionStatus { initial, loading, success, failure, empty }

enum SubmitStatus { initial, loading, success, failure }
