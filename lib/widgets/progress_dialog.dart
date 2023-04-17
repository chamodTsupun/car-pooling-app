import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget
{
  String message;
  ProgressDialog({required this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.white,
        child: Container(
          margin: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [

                const SizedBox(width: 6.0,),

                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),

                const SizedBox(width: 26.0,),

                Text(
                  message!,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

        )
    );
  }
}





