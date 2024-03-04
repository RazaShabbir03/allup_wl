import 'package:allup_user_app/class_schedule/blocs/schedule_gymc_class_detail/schedule_gym_class_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassScheduleDetailScreen extends StatelessWidget {
  const ClassScheduleDetailScreen({
    required this.scheduleId,
    required this.bookedFor,
    required this.bookedTime,
    super.key,
  });
  final String scheduleId;
  final String bookedFor;
  final String bookedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          BlocConsumer<ScheduleGymClassDetailBloc, ScheduleGymClassDetailState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Center(
            child: Text('Class Schedule Detail'),
          );
        },
      ),
    );
  }
}
