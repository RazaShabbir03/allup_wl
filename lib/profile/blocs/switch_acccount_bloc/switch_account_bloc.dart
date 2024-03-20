import 'package:allup_user_app/constants/app_constants.dart';
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
        ),
      );
      try {
        final linkedAccounts = await repository.getLinkedAccounts(
          gymId: event.gymId,
        );
        final slots = <Slot>[
          event.parentSlot.copyWith(
            isSelected: true,
          )
        ];
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
        emit(
          state.copyWith(
            fetchStatus: SwitchAccountFetchStatus.success,
            slots: slots,
            selectedGymId: event.gymId,
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
          emit(
            state.copyWith(
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
  });
  final String id;
  final String firstName;
  final String lastName;
  final String? photo;
  final bool isSelected;

  Slot copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? photo,
    bool? isSelected,
  }) {
    return Slot(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      photo: photo ?? this.photo,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
