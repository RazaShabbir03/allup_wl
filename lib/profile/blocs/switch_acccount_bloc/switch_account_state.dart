part of 'switch_account_bloc.dart';

class SwitchAccountState extends Equatable {
  const SwitchAccountState({
    this.switchAccountStatus = SwitchAccountStatus.loading,
    this.fetchStatus = SwitchAccountFetchStatus.loading,
    this.slots = const [],
    this.selectedSlot,
    this.selectedGymId,
    this.switchAccountErrorMessage,
  });
  final SwitchAccountStatus? switchAccountStatus;
  final SwitchAccountFetchStatus fetchStatus;
  final List<Slot> slots;
  final Slot? selectedSlot;
  final String? selectedGymId;
  final String? switchAccountErrorMessage;

  //copyWith
  SwitchAccountState copyWith({
    SwitchAccountStatus? switchAccountStatus,
    SwitchAccountFetchStatus? fetchStatus,
    List<Slot>? slots,
    Slot? selectedSlot,
    String? selectedGymId,
    String? switchAccountErrorMessage,
  }) {
    return SwitchAccountState(
      switchAccountStatus: switchAccountStatus,
      fetchStatus: fetchStatus ?? this.fetchStatus,
      slots: slots ?? this.slots,
      selectedSlot: selectedSlot ?? this.selectedSlot,
      selectedGymId: selectedGymId ?? this.selectedGymId,
      switchAccountErrorMessage: switchAccountErrorMessage,
    );
  }

  @override
  List<Object?> get props => [
        switchAccountStatus,
        fetchStatus,
        slots,
        selectedSlot,
        selectedGymId,
        switchAccountErrorMessage
      ];
}

final class SwitchAccountInitial extends SwitchAccountState {}

enum SwitchAccountStatus { loading, success, error }

enum SwitchAccountFetchStatus { loading, success, error }
