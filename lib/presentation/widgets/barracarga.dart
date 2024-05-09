import 'package:flutter/material.dart';

class Cargahecha extends StatelessWidget {
  const Cargahecha({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
       decoration: 
        const BoxDecoration(
         borderRadius: BorderRadius.all(Radius.circular(20)),
         color: Color(0xFFE0E0E0),
       ),
      height: 90,
      width: 445,
      alignment: Alignment.center,
      child: StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 600,), (value){
          return (value * 2) /100; // 0.0, 1.00
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
        //over
      
      
          return    Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progressValue ,strokeWidth: 2, backgroundColor: const Color.fromARGB(31, 0, 0, 0),),
              const SizedBox(width: 20,),
              Expanded(child: LinearProgressIndicator(value: progressValue,))
        
            ],
          ),
        );
      
        },
      ),
    );
  }
}