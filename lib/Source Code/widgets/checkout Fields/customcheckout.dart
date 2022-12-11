import 'package:flutter/material.dart';
import '../../utils/appcolors.dart';

class customcheckout extends StatefulWidget {
  final String? field_Hint_Text;
  final String? field_label_Text;
  final Color? field_BgColor;
  final Field_Icon;
  final Keyboard_Type;
  final EyesuffixIcon;
  final preffixIcon;

  final TextEditingController? Field_controller;
  bool? Obscure_Text = false;

  customcheckout(
      {this.field_Hint_Text,
      this.field_BgColor,
      this.field_label_Text,
      this.Field_controller,
      this.preffixIcon,
      this.Obscure_Text = false,
      this.Keyboard_Type,
      this.Field_Icon,
      this.EyesuffixIcon,
      Key? key})
      : super(key: key);

  @override
  State<customcheckout> createState() => _customcheckoutState();
}

class _customcheckoutState extends State<customcheckout> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.field_BgColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: TextField(
            obscureText: widget.Obscure_Text!,
            controller: widget.Field_controller,
            keyboardType: widget.Keyboard_Type,
            style: TextStyle(fontSize: 18.0, color: AppColors.BLACK_COLOR),
            decoration: InputDecoration(
              suffixIcon: widget.EyesuffixIcon,
              prefixIcon: widget.preffixIcon,
              icon: widget.Field_Icon,
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.ORANGE_COLOR, width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.ORANGE_COLOR, width: 1.5),
              ),
              hintText: widget.field_Hint_Text,
              hintStyle: TextStyle(
                  color: AppColors.BLACK_COLOR.withOpacity(0.5),
                  fontSize: 16.0),
            ),
          ),
        ),
      ),
    );
  }
}
