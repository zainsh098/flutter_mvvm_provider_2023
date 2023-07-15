
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_2023/res/color.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;
  final Color color;



  const RoundButton({super.key, required this.title, this.loading=false,  required this.onPress,required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,

      child: Container(
        height: 40,
        width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: AppColors.buttonColor,





            ),
        child: Center(
          child: Text(title,textAlign:TextAlign.center,style: TextStyle(
            color: color,fontSize: 18,


          ),),
        ),


      ),
    );
  }
}
