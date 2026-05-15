import 'package:flutter/material.dart';

import '../data/model/task_model.dart';
import '../widgets/task_card.dart';
class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
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
                status: 'Progress',
                email: 'email',
                createdDate: '15-5-2026',
              ),
              CardColor: Colors.purple,
              refreshParent: () {},
            );
          }),
    );
  }
}
