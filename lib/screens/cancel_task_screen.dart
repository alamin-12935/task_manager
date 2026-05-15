import 'package:flutter/material.dart';

import '../data/model/task_model.dart';
import '../widgets/task_card.dart';
class CancelTaskScreen extends StatefulWidget {
  const CancelTaskScreen({super.key});

  @override
  State<CancelTaskScreen> createState() => _CancelTaskScreenState();
}

class _CancelTaskScreenState extends State<CancelTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
            return TaskCard(
              taskModel: TaskModel(
                id: '50',
                title: 'task Title',
                description: 'Demo Task Description',
                status: 'Cancel',
                email: 'email',
                createdDate: '15-5-2026',
              ),
              CardColor: Colors.red,
              refreshParent: () {},
            );
          }),
    );
  }
}
