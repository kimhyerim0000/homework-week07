import 'package:myapp/week07/calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';

class _Time extends StatelessWidget {
  final int startTime; // 시작 시간
  final int endTime; // 종료 시간

  const _Time({required this.startTime, required this.endTime});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: PRIMARY_COLOR,
      fontSize: 16.0,
    );

    return Column(
      // 시간을 위해서 아래로 배치
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          // 숫자가 두 자릿수가 안되면 0으로 채워주기
          '${startTime.toString().padLeft(2, '0')}: 00',
          style: textStyle,
        ),
        Text(
          // 숫자가 두 자릿수가 안되면 0으로 채워주기
          '${endTime.toString().padLeft(2, '0')}: 00',
          style: textStyle.copyWith(fontSize: 10.0),
        ),
      ],
    );
  }
}

class _Context extends StatelessWidget {
  final String content; // 내용

  const _Context({required this.content});

  @override
  Widget build(BuildContext context) {}
}
