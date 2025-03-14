import 'package:flutter/material.dart';
import '../widgets/all_employees.dart';
import '../widgets/ot_employees.dart';
import '../providers/employees.dart';
import 'package:provider/provider.dart';

class OtStaffSelection extends StatelessWidget {
  static const routeName = '/otstaffselection';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: Employees(),
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Employees"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "All Staff's",
                    icon: Icon(Icons.people),
                  ),
                  Tab(
                    text: "Ot Staff's",
                    icon: Icon(Icons.people),
                  ),
                ],
                indicatorColor: Theme.of(context).colorScheme.secondary,
              ),
            ),
            body: TabBarView(children: [AllEmployees(), OtEmployees()]),
          ),
        ));
  }
}
