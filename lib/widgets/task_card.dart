import 'package:flutter/material.dart';

import '../data/model/task_model.dart';
import '../utils/app_color.dart';
class TaskCard extends StatelessWidget {
  final TaskModel taskModel;
  final Color CardColor;
  final VoidCallback refreshParent;
  const TaskCard({
    super.key, required this.taskModel, required this.CardColor, required this.refreshParent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        child: ListTile(
          title: Text(
            taskModel.title,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(fontSize: 20),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
               taskModel.description,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 8),
              Text('Date: ${taskModel.createdDate}', style: TextStyle(fontSize: 12)),
              SizedBox(height: 16),
              Row(
                children: [
                  Chip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        taskModel.status,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
                    backgroundColor: CardColor,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit_note_outlined,
                      color: AppColor.Pcolor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_forever_outlined,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}