import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white24,
                ),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              onTap: () {
                print("Settings");
              },
            ),
          )
        ],
        foregroundColor: Colors.white,
        backgroundColor: Colors.black87,
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixed,
        height: 50,
        top: -20,
        backgroundColor: Colors.grey[900],
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.task, title: 'Task'),
          TabItem(icon: Icons.add_circle_outline_sharp, title: 'Add'),
          TabItem(icon: Icons.track_changes_rounded, title: 'Expenses'),
          TabItem(icon: Icons.settings_accessibility, title: 'Settings'),
        ],
        onTap: (int i) => {},
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: screenWidth,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TaskDashboardContainer(
                  color: Colors.blue.shade400,
                  taskTitle: "Yet To Do",
                  icon: Icons.done_outlined,
                  count: 23,
                  category: DashboardCategory.yettodo,
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
                TaskDashboardContainer(
                  color: Colors.green.shade600,
                  taskTitle: "Completed",
                  icon: Icons.done_outlined,
                  count: 23,
                  category: DashboardCategory.completed,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
