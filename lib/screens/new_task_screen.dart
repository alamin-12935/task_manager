import 'package:flutter/material.dart';
import 'package:task_manager/data/model/task_model.dart';
import 'package:task_manager/utils/app_color.dart';

import '../widgets/task_card.dart';
import '../widgets/task_count_by_status.dart';
import '../widgets/tm_appbar.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 90,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TaskCoutByStatus(title: 'Update', count: 6);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 12);
                },
                itemCount: 4,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context,index){
                  return TaskCard(
                    taskModel: TaskModel(
                      id: '50',
                      title: 'task Title',
                      description: 'Demo Task Description',
                      status: 'New',
                      email: 'email',
                      createdDate: '15-5-2026',
                    ),
                    CardColor: Colors.blue,
                    refreshParent: () {},
                  );
                }),
          )

        ],
      ),
    );
  }
}
