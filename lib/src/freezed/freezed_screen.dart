import 'package:flutter/material.dart';
import 'package:flutter_practice/src/default_layout_widget.dart';

import 'package:flutter_practice/src/freezed/exercise.dart';

class FreezedScreen extends StatelessWidget {
  const FreezedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exercise1 = Exercise(name: 'Bench Press', restTime: 2);
    final exercise2 = Exercise(name: 'Dead Lift', restTime: 3);
    final exercise3 = exercise1.copyWith(name: 'Pull Up');
    final exercise4 = exercise2;

    return DefaultLayoutWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('name : ${exercise1.name} , restTime :  ${exercise1.restTime}'),
          Text('name : ${exercise2.name} , restTime :  ${exercise2.restTime}'),
          Text('name : ${exercise3.name} , restTime :  ${exercise3.restTime}'),
          Text('$exercise1'),
          Text('${exercise2 == exercise4}'),
          Text('${exercise1.nameLength}'),
        ],
      ),
    );
  }
}
