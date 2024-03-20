part of 'terms_and_conditions_bloc.dart';

sealed class TermsAndConditionsState extends Equatable {
  const TermsAndConditionsState();

  @override
  List<Object> get props => [];
}

final class TermsAndConditionsInitial extends TermsAndConditionsState {}

final class TermsAndConditionsLoading extends TermsAndConditionsState {}

final class TermsAndConditionsSuccess extends TermsAndConditionsState {
  const TermsAndConditionsSuccess({required this.tnc});
  final Query$gymTnCById tnc;

  @override
  List<Object> get props => [tnc];
}

final class TermsAndConditionsError extends TermsAndConditionsState {
  const TermsAndConditionsError({required this.error});
  final String error;

  @override
  List<Object> get props => [error];
}
