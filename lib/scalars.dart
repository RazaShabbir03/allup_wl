/// Custom scalars for the app
///
/// This file contains custom scalars for the app
library;

import 'package:flutter/material.dart';

/// Custom scalar for DateTime
class Datetime {
  Datetime(this.dt);
  final DateTime dt;
}

Datetime customDateTimeFromJson(dynamic data) => Datetime(
      DateTime.parse(data as String),
    );
dynamic customDateTimeToJson(Datetime time) => time.dt.toIso8601String();

/// Custom scalar for CurrencyValue
class CurrencyValue {
  CurrencyValue(this.value);
  final double value;
}

CurrencyValue currencyValueFromJson(dynamic data) => CurrencyValue(
      double.parse(data.toString()),
    );

dynamic currencyValueToJson(CurrencyValue value) => value.value;

/// Custom scalar for LocalTime
class LocalTime {
  LocalTime(this.time);
  final TimeOfDay time;
}

LocalTime parseTimeOfDay(String localTimeString) {
  final timeComponents = localTimeString.split(':');
  final hours = int.parse(timeComponents[0]);
  final minutes = int.parse(timeComponents[1]);
  return LocalTime(TimeOfDay(hour: hours, minute: minutes));
}

LocalTime localTimeFromJson(dynamic data) {
  return parseTimeOfDay(data as String);
}

String localTimeToJson(LocalTime time) {
  return '${time.time.hour}:${time.time.minute}';
}
