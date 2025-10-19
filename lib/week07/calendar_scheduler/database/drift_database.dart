import 'package:myapp/week07/calendar_scheduler/model/schedule.dart';
import 'package:drift/drift.dart';

// private값까지 불러올 수 있음.
part 'drift_database.g.dart'; // part 파일 저장

@DriftDatabase(
  // 사용할 테이블 등록
  tables: [Schedules],
)
class LocalDatabase extends _$LocalDatabase {
  // Code Generation으로 생성할 클래스 상속
  Stream<List<Schedule>> watchShedules(DateTime date) =>
      // 데이터를 조회하고 변화 감지
      (select(schedules)..where((tbl) => tbl.date.equals(date))).watch();
  // watchSchedules() 함수 아래에 작성
  Future<int> createSchedule(SchedulesCompanion data) => into(schedules).insert(data);
  // createSchedule() 함수 아래에 작성
  Future<int> removeSchedule(int id) => (delete(schedules)..where((tbl) => tbl.id.equals(id))).go();
  // removeSchedule() 함수 아래에 작성
  @override
  int get schemaVersion => 1;
}
