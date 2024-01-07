import 'package:flutter/material.dart';

class TaskDashboardContainer extends StatelessWidget {
  const TaskDashboardContainer({
    super.key,
    required this.color,
    required this.taskTitle,
    required this.icon,
    required this.count,
    required this.category,
  });

  final Color color;
  final String taskTitle;
  final IconData icon;
  final int count;
  final Enum category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 2, 0),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: color),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          width: 150,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        "$count",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white24,
                      ),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 18,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    taskTitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        print(category);
      },
    );
  }
}
