import 'package:myapp/week07/calendar_scheduler/model/schedule.dart';
import 'package:drift/drift.dart';

// private값까지 불러올 수 있음.
part 'drift_database.g.dart'; // part 파일 저장

@DriftDatabase(
  tables: [
    Schedules,
  ]
)