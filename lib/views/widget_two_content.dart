// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:allergic_app/utility/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class WidgetTwoContent extends StatelessWidget {
  const WidgetTwoContent({
    Key? key,
    required this.string,
  }) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) {
  

    var strings = <String>[];

    strings = string.split('-');

   
    //for Thai Text
    if (strings.length != 2) {
      strings = string.split('ถึง');
    }

    return strings.length != 2
        ? Text(string)
        : Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(
                flex: 1,
                child: Text(
                  strings[0].trim(),
                  style: AppConstant().smallStyle(),
                ),
              ),


              const SizedBox(width: 50,),


              Expanded(
                flex: 1,
                child: Text(
                  strings[1].trim(),
                  style: AppConstant().smallStyle(),
                ),
              ),


            ],
          );
  }
}
