part of 'switch_account_bloc.dart';

class SwitchAccountState extends Equatable {
  const SwitchAccountState({
    this.switchAccountStatus = SwitchAccountStatus.loading,
    this.fetchStatus = SwitchAccountFetchStatus.loading,
    this.purchasedMembershipResponse,
    this.slots = const [],
    this.selectedSlot,
    this.selectedGymId,
    this.switchAccountErrorMessage,
    this.gymMembershipInfo,
  });
  final SwitchAccountStatus? switchAccountStatus;
  final SwitchAccountFetchStatus fetchStatus;
  final List<Slot> slots;
  final Slot? selectedSlot;
  final String? selectedGymId;
  final String? switchAccountErrorMessage;
  final Query$PurchasedGymMemberships? purchasedMembershipResponse;
  final Query$GymMembershipInfo? gymMembershipInfo;

  //copyWith
  SwitchAccountState copyWith({
    SwitchAccountStatus? switchAccountStatus,
    SwitchAccountFetchStatus? fetchStatus,
    List<Slot>? slots,
    Slot? selectedSlot,
    String? selectedGymId,
    String? switchAccountErrorMessage,
    Query$PurchasedGymMemberships? purchasedMembershipResponse,
    Query$GymMembershipInfo? gymMembershipInfo,
  }) {
    return SwitchAccountState(
      switchAccountStatus: switchAccountStatus,
      fetchStatus: fetchStatus ?? this.fetchStatus,
      slots: slots ?? this.slots,
      selectedSlot: selectedSlot ?? this.selectedSlot,
      selectedGymId: selectedGymId ?? this.selectedGymId,
      switchAccountErrorMessage: switchAccountErrorMessage,
      purchasedMembershipResponse: purchasedMembershipResponse,
      gymMembershipInfo: gymMembershipInfo,
    );
  }

  @override
  List<Object?> get props => [
        switchAccountStatus,
        fetchStatus,
        slots,
        purchasedMembershipResponse,
        selectedSlot,
        selectedGymId,
        switchAccountErrorMessage,
        gymMembershipInfo,
      ];
}

final class SwitchAccountInitial extends SwitchAccountState {}

enum SwitchAccountStatus { loading, success, error }

enum SwitchAccountFetchStatus { loading, success, error }
