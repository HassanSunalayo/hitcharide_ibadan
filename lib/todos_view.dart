import 'package:flutter/material.dart';
import 'package:untitled/todo.dart';

class TodosView extends StatefulWidget {
  const TodosView({super.key});

  @override
  State<TodosView> createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  // late List<Todo> data;
  DbHelper helper = DbHelper();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Todos Item",
        ),
      ),
      body: FutureBuilder(
          future: helper.todos(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              var data = snapshot.data;
              return ListView.builder(
                  itemCount: data?.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("NAME: ${data?[index].name}"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Qt: ${data?[index].quantity}"),
                              Text("Date: ${data?[index].date}"),
                            ],
                          )
                        ],
                      ),
                    );
                  });
            } else {
              debugPrint("No data seen ${snapshot.connectionState}"); 
              return const Text(
                "Maybe there's nothing",
                style: TextStyle(fontSize: 40, color: Colors.amber), 
              );
            }
          }),
    );
  }
}
