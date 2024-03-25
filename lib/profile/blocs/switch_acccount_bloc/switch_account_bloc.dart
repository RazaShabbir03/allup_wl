import 'package:allup_user_app/constants/app_constants.dart';
import 'package:allup_user_app/dashboard/schemas/gym_membership_info.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/purchase_memberhip.graphql.dart';
import 'package:allup_user_app/profile/repositories/switch_account_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_account_event.dart';
part 'switch_account_state.dart';

class SwitchAccountBloc extends Bloc<SwitchAccountEvent, SwitchAccountState> {
  SwitchAccountBloc({
    required this.repository,
  }) : super(SwitchAccountInitial()) {
    on<GetLinkedAccountsEvent>((event, emit) async {
      emit(
        state.copyWith(
          fetchStatus: SwitchAccountFetchStatus.loading,
          selectedGymId: event.gymId,
        ),
      );
      try {
        final linkedAccounts = await repository.getLinkedAccounts(
          gymId: event.gymId,
        );
        final slots = <Slot>[event.parentSlot];
        linkedAccounts.userSlotsByAuth.slots?.forEach((element) {
          slots.add(
            Slot(
              id: element.id,
              firstName: element.firstName,
              lastName: element.lastName,
              photo: element.photo,
            ),
          );
        });
        if (event.childAccountId != null && event.childAccountId != '') {
          for (final element in slots) {
            if (element.id == event.childAccountId) {
              //replace the item with the new one on the same index
              slots[slots.indexOf(element)] =
                  element.copyWith(isSelected: true);
            }
          }
        } else {
          slots.first = slots.first.copyWith(isSelected: true);
        }

        emit(
          state.copyWith(
            fetchStatus: SwitchAccountFetchStatus.success,
            slots: slots,
            selectedSlot: event.parentSlot,
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(
            selectedGymId: event.gymId,
            fetchStatus: SwitchAccountFetchStatus.error,
          ),
        );
      }
    });
    on<SwitchDifferentAccount>((event, emit) async {
      emit(state.copyWith(switchAccountStatus: SwitchAccountStatus.loading));
      try {
        final purchasedMembership = await repository.getPurchasedGymMemberships(
          gymId: state.selectedGymId!,
          appId: AppConstants.appId,
          userId: event.slot.id,
        );
        if ((purchasedMembership
                    .memberships?.data?.singleMemberships?.isEmpty ??
                true) &&
            (purchasedMembership.memberships?.data?.groupMemberships?.isEmpty ??
                true) &&
            (purchasedMembership.memberships?.data?.sessionPacks?.isEmpty ??
                true)) {
          emit(
            state.copyWith(
                switchAccountStatus: SwitchAccountStatus.error,
                switchAccountErrorMessage:
                    'Selected linked user do not have any memberships in this Gym.'),
          );
        } else {
          final slots = state.slots.map((e) {
            if (e.id == event.slot.id) {
              return e.copyWith(isSelected: true);
            } else {
              return e.copyWith(isSelected: false);
            }
          }).toList();

          final groupMembers =
              purchasedMembership.memberships?.data?.groupMemberships;
          final singleMembers =
              purchasedMembership.memberships?.data?.singleMemberships;
          final sessionPacks =
              purchasedMembership.memberships?.data?.sessionPacks;
          final gymMembershipInfoResponse =
              await repository.getGymMembershipInfo(
            childAccountId: event.slot.id,
            gymId: state.selectedGymId!,
            smId: singleMembers != null
                ? singleMembers.isNotEmpty
                    ? purchasedMembership
                        .memberships?.data?.singleMemberships?.first?.id
                    : null
                : null,
            gmId: groupMembers != null
                ? groupMembers.isNotEmpty
                    ? groupMembers.first?.id
                    : null
                : null,
            memId: (singleMembers != null
                    ? singleMembers.isNotEmpty
                        ? purchasedMembership
                            .memberships?.data?.singleMemberships?.first?.id
                        : groupMembers != null
                            ? groupMembers.isNotEmpty
                                ? groupMembers.first?.id
                                : sessionPacks != null
                                    ? sessionPacks.isNotEmpty
                                        ? sessionPacks.first?.id
                                        : null
                                    : null
                            : null
                    : '') ??
                '',
          );
          emit(
            state.copyWith(
              gymMembershipInfo: gymMembershipInfoResponse,
              purchasedMembershipResponse: purchasedMembership,
              switchAccountStatus: SwitchAccountStatus.success,
              selectedSlot: event.slot,
              slots: slots,
            ),
          );
        }
      } catch (e) {
        emit(
          state.copyWith(
            switchAccountStatus: SwitchAccountStatus.error,
          ),
        );
      }
    });
  }

  final SwitchAccountRepository repository;
}

class Slot {
  Slot({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.photo,
    this.isSelected = false,
    this.isParent = false,
  });
  final String id;
  final String firstName;
  final String lastName;
  final String? photo;
  final bool isSelected;
  final bool isParent;

  Slot copyWith(
      {String? id,
      String? firstName,
      String? lastName,
      String? photo,
      bool? isSelected,
      bool? isParent}) {
    return Slot(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      photo: photo ?? this.photo,
      isSelected: isSelected ?? this.isSelected,
      isParent: isParent ?? this.isParent,
    );
  }
}
