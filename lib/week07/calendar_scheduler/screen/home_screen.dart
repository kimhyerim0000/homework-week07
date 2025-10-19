import 'package:myapp/week07/calendar_scheduler/component/schedule_bottom_sheet.dart';
import 'package:myapp/week07/calendar_scheduler/const/colors.dart';
import 'package:myapp/week07/calendar_scheduler/component/main_calendar.dart';
import 'package:flutter/material.dart';

// StatelessWidget에서 StatefulWidget으로 전환
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc(
    // 선택된 날짜를 관리할 변수
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // 새 일정 버튼
        backgroundColor: PRIMARY_COLOR,
        onPressed: () {
          showModalBottomSheet(
            // BottomSheet 열기
            context: context,
            isDismissible: true, // 배경 탭 했을 때 BottomSheet 닫기
            builder: (_) => ScheduleBottomSheet(),
            // BottomSheet의 높이를 화면의 최대 높이로 정의하고 스크롤 가능하게 변경
            isScrollControlled: true,
          );
        },
        child: Icon(Icons.add),
      ),

      body: SafeArea(
        // 시스템 UI 피해서 UI 구현하기
        child: Column(
          children: [
            // 미리 작업해둔 달력 위젯 보여주기
            MainCalendar(
              selectedDate: selectedDate, // 선택된 날짜 전달하기
              onDaySelected: 
            ),
          ],
        ),
      ),
    );
  }
}
