part of 'terms_and_conditions_bloc.dart';

sealed class TermsAndConditionsEvent extends Equatable {
  const TermsAndConditionsEvent();

  @override
  List<Object> get props => [];
}

class GetTnCEvent extends TermsAndConditionsEvent {
  const GetTnCEvent({required this.gymId});
  final String gymId;

  @override
  List<Object> get props => [gymId];
}
