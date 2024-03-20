import 'package:allup_user_app/terms_and_conditions/repositories/tnc_repository.dart';
import 'package:allup_user_app/terms_and_conditions/schemas/gym_tnc_by_id.graphql.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'terms_and_conditions_event.dart';
part 'terms_and_conditions_state.dart';

class TermsAndConditionsBloc
    extends Bloc<TermsAndConditionsEvent, TermsAndConditionsState> {
  TermsAndConditionsBloc({required this.tncRepository})
      : super(TermsAndConditionsInitial()) {
    on<GetTnCEvent>((event, emit) async {
      emit(TermsAndConditionsLoading());
      try {
        final tnc = await tncRepository.getTnC(gymId: event.gymId);
        emit(TermsAndConditionsSuccess(tnc: tnc));
      } catch (e) {
        emit(TermsAndConditionsError(error: 'Something went wrong!'));
      }
    });
  }
  final TnCRepository tncRepository;
}
