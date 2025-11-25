import 'package:fitbitter/src/data/fitbitData.dart';

/// [FitbitSleepData] is a class implementing the data model of the
/// user sleep data.
class FitbitSleepSummaryData implements FitbitData {
  /// The user encoded id.
  String? userID;

  /// The date of when the sleep session begun.
  DateTime? dateOfSleep;
  Duration? sleepDuration;

  /// Default [FitbitSleepData] constructor.
  FitbitSleepSummaryData({
    this.userID,
    this.dateOfSleep,
    this.sleepDuration,
  });

  /// Generates a [FitbitSleepData] obtained from a json.
  factory FitbitSleepSummaryData.fromJson(
      {required Map<String, dynamic> json}) {
    return FitbitSleepSummaryData(
      userID: json['userID'],
      dateOfSleep: DateTime.parse(json['dateOfSleep']),
      sleepDuration: Duration(milliseconds: json['sleepDuration']),
    );
  } // fromJson

  @override
  String toString() {
    return (StringBuffer('FitbitSleepData(')
          ..write('userID: $userID, ')
          ..write('dateOfSleep: $dateOfSleep, ')
          ..write('sleepDuration: ${sleepDuration}, ')
          ..write(')'))
        .toString();
  } // toString

  @override
  Map<String, dynamic> toJson<T extends FitbitData>() {
    return <String, dynamic>{
      'userID': userID,
      'dateOfSleep': dateOfSleep,
      'sleepDuration':
          sleepDuration == null ? 0 : sleepDuration!.inMilliseconds,
    };
  } // toJson
} // FitbitSleepData
