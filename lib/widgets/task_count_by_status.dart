import 'package:flutter/material.dart';
class TaskCoutByStatus extends StatelessWidget {
  final String title;
  final int count;
  const TaskCoutByStatus({
    super.key, required this.title, required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 108,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              offset: Offset(2, 5)
            )
          ]
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20,vertical: 12),
        child: Column(
          children: [
            Text(count.toString(),style: Theme.of(context).textTheme.titleLarge),
            Text(title)
          ],
        ),
      ),
    );
  }
}