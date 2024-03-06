part of 'my_classes_bloc.dart';

class MyClassesState extends Equatable {
  const MyClassesState(
      {this.selectedGymId,
      this.timeZoneIdentifier,
      this.location,
      this.periodType = Enum$MembershipGymClassPeriodType.PREVIOUS,
      this.status = FetchMyClassesStatus.initial,
      this.classes = const []});
  final String? selectedGymId;
  final String? timeZoneIdentifier;
  final Input$GISLocationInput? location;
  final Enum$MembershipGymClassPeriodType periodType;
  final FetchMyClassesStatus status;
  final List<Query$BookedGymClasses$membershipGymClassesV2$list> classes;

  //copyWith
  MyClassesState copyWith(
      {String? selectedGymId,
      String? timeZoneIdentifier,
      Input$GISLocationInput? location,
      Enum$MembershipGymClassPeriodType? periodType,
      FetchMyClassesStatus? status,
      List<Query$BookedGymClasses$membershipGymClassesV2$list>? classes}) {
    return MyClassesState(
        selectedGymId: selectedGymId ?? this.selectedGymId,
        timeZoneIdentifier: timeZoneIdentifier ?? this.timeZoneIdentifier,
        location: location ?? this.location,
        periodType: periodType ?? this.periodType,
        classes: classes ?? this.classes,
        status: status ?? this.status);
  }

  @override
  List<Object?> get props => [
        periodType,
        status,
        classes,
        selectedGymId,
        timeZoneIdentifier,
        location
      ];
}

final class MyClassesInitial extends MyClassesState {}

enum FetchMyClassesStatus { initial, loading, success, error }
