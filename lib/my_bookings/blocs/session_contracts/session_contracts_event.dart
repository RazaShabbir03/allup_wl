part of 'session_contracts_bloc.dart';

sealed class SessionContractsEvent extends Equatable {
  const SessionContractsEvent();

  @override
  List<Object> get props => [];
}

class FetchSessionContracts extends SessionContractsEvent {
  FetchSessionContracts({
    required this.gymId,
  });
  final String gymId;

  @override
  List<Object> get props => [gymId];
}

class SetSessionContract extends SessionContractsEvent {
  SetSessionContract({
    required this.sessionContract,
  });
  final Query$PurchasedSessionContractsForGym$sessionContractByAuth$list
      sessionContract;

  @override
  List<Object> get props => [sessionContract];
}

class TabEvent extends SessionContractsEvent {
  const TabEvent({
    required this.index,
  });
  final int index;

  @override
  List<Object> get props => [index];
}

class GetPreviousSessionContract extends SessionContractsEvent {
  const GetPreviousSessionContract();

  @override
  List<Object> get props => [];
}

class GetTodaySessionContract extends SessionContractsEvent {
  const GetTodaySessionContract();

  @override
  List<Object> get props => [];
}

class GetUpcomingSessionContract extends SessionContractsEvent {
  const GetUpcomingSessionContract();

  @override
  List<Object> get props => [];
}

class GetCancelledSessionContract extends SessionContractsEvent {
  const GetCancelledSessionContract();

  @override
  List<Object> get props => [];
}

class CancelBookedPT extends SessionContractsEvent {
  const CancelBookedPT({required this.customerPrivateCoachSessionId});
  final String customerPrivateCoachSessionId;

  @override
  List<Object> get props => [customerPrivateCoachSessionId];
}
