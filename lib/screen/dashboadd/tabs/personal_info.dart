import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intrapair_task/widget/Customcontainer_widget.dart';
import 'package:intrapair_task/widget/base_button.dart';
import 'package:intrapair_task/widget/custom_text_field_widget.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  List<String> gendelList = ['●   Not Specified', '●   Male', '●   Female'];
  bool pressed = false;
  String? selectedText;
  void handleTextClick(String item) {
    setState(() {
      selectedText = item;
    });
  }

  final genderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(22),
      children: [
        CustomTextField(
          hasBorder: true,
          maxLines: 1,

          keyboardType: TextInputType.text,
          // validator: context.validatePassword,
          labelText: "Full Name",
          // hintText: "Full Name",

          borderRadius: BorderRadius.circular(10),
        ),
        SizedBox(
          height: 38,
        ),
        CustomTextField(
          readOnly: true,
          onTap: () {
            setState(() {
              pressed = !pressed;
            });
          },
          controller: TextEditingController(text: selectedText),
          hasBorder: true,
          maxLines: 1,
          keyboardType: TextInputType.text,
          // validator: context.validatePassword,
          labelText: "Gender",
          borderRadius: BorderRadius.circular(10),
        ),
        if (pressed)
          CustomContainerWidget(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.only(top: 13, left: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  gendelList.length,
                  (index) => Container(
                        padding: EdgeInsets.only(left: 17, top: 20, bottom: 10),
                        child: InkWell(
                            onTap: () {
                              handleTextClick(gendelList[index]);
                              pressed = false;
                            },
                            child: Container(
                                width: double.infinity,
                                child: Text(gendelList[index]))),
                      )),
            ),
          ),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          hasBorder: true,
          maxLines: 1,
          labelText: "Email Address",
          keyboardType: TextInputType.emailAddress,
          borderRadius: BorderRadius.circular(10),
        ),
        SizedBox(
          height: 38,
        ),
        CustomTextField(
          hasBorder: true,
          maxLines: 1,
          labelText: "Phone Number",
          keyboardType: TextInputType.number,
          // validator: context.validatePassword,
          // labelText: "Enter Password",

          borderRadius: BorderRadius.circular(10),
        ),
        SizedBox(
          height: 38,
        ),
        BaseButton(
          borderRadius: 8,
          bgColor: Color(0xff781596),
          onPress: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => const DashboardScreen()));
          },
          text: "Next",
        ),
      ],
    );
  }
}
