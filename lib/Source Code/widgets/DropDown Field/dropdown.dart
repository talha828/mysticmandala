import 'package:flutter/material.dart';

import '../../utils/appcolors.dart';

TextEditingController UserProgram = TextEditingController();

class CustomDropDown extends StatelessWidget {
  final String? field_Hint_Text;
  final String? field_label_Text;
  final Color? field_BgColor;
  final Field_Icon;
  final Keyboard_Type;
  final EyesuffixIcon;

  final TextEditingController? Field_controller;
  bool? Obscure_Text = false;

  CustomDropDown(
      {this.field_Hint_Text,
      this.field_BgColor,
      this.field_label_Text,
      this.Field_controller,
      this.Obscure_Text = false,
      this.Keyboard_Type,
      this.Field_Icon,
      this.EyesuffixIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? value;
    Function(String?)? onchange;
    var items = [
      'Admin',
      'Guru',
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 2.0, bottom: 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.ORANGE_COLOR,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: new Column(
          children: [
            new Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Field_Icon,
                      hintText: "Select Member",
                      hintStyle: TextStyle(
                          color: AppColors.WHITE_COLOR.withOpacity(0.7)),
                      labelText: field_label_Text,
                    ),
                    readOnly: true,
                    controller: UserProgram,
                  )),
                  new PopupMenuButton<String>(
                    icon: const Icon(
                      Icons.arrow_drop_down_sharp,
                      color: AppColors.WHITE_COLOR,
                    ),
                    onSelected: (String value) {
                      UserProgram.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items.map<PopupMenuItem<String>>((String value) {
                        return new PopupMenuItem(
                            child: new Text(value), value: value);
                      }).toList();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
