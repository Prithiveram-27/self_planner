import 'package:flutter/material.dart';
import '../models/home_enum.dart';
import '../ui/widgets/homepage_task_dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Self Planner"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: const Icon(Icons.person),
              onTap: () {
                print("Settings");
              },
            ),
          )
        ],
      ),
      body: Row(
        children: [
          SizedBox(
            height: 100,
            width: screenWidth,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TaskDashboardContainer(
                  color: Colors.blue.shade400,
                  taskTitle: "Completed",
                  icon: Icons.done_outlined,
                  count: 23,
                  category: DashboardCategory.completed,
                ),
                TaskDashboardContainer(
                  color: Colors.purple.shade400,
                  taskTitle: "Decided",
                  icon: Icons.question_mark,
                  count: 11,
                  category: DashboardCategory.decided,
                ),
                TaskDashboardContainer(
                  color: Colors.teal.shade600,
                  taskTitle: "Delegated",
                  icon: Icons.loop,
                  count: 4,
                  category: DashboardCategory.delegated,
                ),
                TaskDashboardContainer(
                  color: Colors.red.shade400,
                  taskTitle: "Deleted",
                  icon: Icons.delete_sweep_rounded,
                  count: 2,
                  category: DashboardCategory.deleted,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
