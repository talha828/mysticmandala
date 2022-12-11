import 'package:flutter/material.dart';
import 'package:mysticmandala/Source%20Code/utils/appcolors.dart';

class ScheduleButton extends StatefulWidget {
  final String Btn_TextName;
  void Function()? ontapBtn;

  ScheduleButton({required this.ontapBtn, required this.Btn_TextName, Key? key})
      : super(key: key);

  @override
  State<ScheduleButton> createState() => _ScheduleButtonState();
}

class _ScheduleButtonState extends State<ScheduleButton> {
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => _flag = !_flag),
      child: Container(
        height: 40.0,
        width: 80.0,
        child: Center(
          child: Text(
            _flag ? widget.Btn_TextName : widget.Btn_TextName,
            style:
                TextStyle(color: _flag ? AppColors.BLACK_COLOR : Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            color: _flag ? Colors.transparent : AppColors.ORANGE_COLOR,
            border: Border.all(
              color: AppColors.ORANGE_COLOR,
              width: 2,
            )),
      ),
    );
  }
}
