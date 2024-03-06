part of 'my_classes_bloc.dart';

sealed class MyClassesEvent extends Equatable {
  const MyClassesEvent();

  @override
  List<Object> get props => [];
}

class FetchMyClasses extends MyClassesEvent {
  const FetchMyClasses(
      {required this.gymId,
      required this.timeZoneIdentifier,
      required this.location});
  final String gymId;
  final String timeZoneIdentifier;
  final Input$GISLocationInput location;
  @override
  List<Object> get props => [gymId, timeZoneIdentifier, location];
}

class SetPeriodType extends MyClassesEvent {
  const SetPeriodType({required this.periodType});
  final Enum$MembershipGymClassPeriodType periodType;
  @override
  List<Object> get props => [periodType];
}
