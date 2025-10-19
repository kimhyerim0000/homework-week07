import 'package:myapp/week07/calendar_scheduler/component/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:myapp/week07/calendar_scheduler/const/colors.dart';

class ScheduleBottomSheet extends StatefulWidget {
  const ScheduleBottomSheet({super.key});

  @override
  State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet> {
  @override
  Widget build(BuildContext context) {
    // 키보드 높이 가져오기
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height / 2 + bottomInset,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: 8,
            right: 8,
            top: 8,
            bottom: bottomInset,
          ),
          child: Column(
            // 시간 관련 텍스트 필드와 내용 관련 텍스트 필드 세로로 배치
            children: [
              Row(
                // 시작 시간, 종료 시간 가로로 배치
                children: [
                  Expanded(
                    child: CustomTextField(
                      // 시작 시간 입력 필드
                      label: '시작 시간',
                      isTime: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
