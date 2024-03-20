part of 'switch_account_bloc.dart';

sealed class SwitchAccountEvent extends Equatable {
  const SwitchAccountEvent();

  @override
  List<Object> get props => [];
}

class GetLinkedAccountsEvent extends SwitchAccountEvent {
  const GetLinkedAccountsEvent({required this.gymId, required this.parentSlot});
  final String gymId;
  final Slot parentSlot;

  @override
  List<Object> get props => [gymId, parentSlot];
}

class SwitchDifferentAccount extends SwitchAccountEvent {
  const SwitchDifferentAccount({required this.slot});
  final Slot slot;

  @override
  List<Object> get props => [slot];
}
