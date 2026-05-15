import 'package:flutter/material.dart';

import '../data/model/task_model.dart';
import '../widgets/task_card.dart';
class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
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
                status: 'Completed',
                email: 'email',
                createdDate: '15-5-2026',
              ),
              CardColor: Colors.green,
              refreshParent: () {},
            );
          }),
    );
  }
}
