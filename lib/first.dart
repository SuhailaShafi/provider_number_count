import 'package:flutfly_example_provider/provider/number_provider.dart';
import 'package:flutfly_example_provider/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: (BuildContext context, numberListModel, Widget? child) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberListModel.addNumbers();
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'The total Count is ${numberListModel.number.last}',
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: ((context, index) => ListTile(
                      title: Text(numberListModel.number[index].toString()),
                    )),
                itemCount: numberListModel.number.length,
              ))
            ],
          ),
        ),
        appBar: AppBar(
            title: const Text('StateManagementDemo'),
            toolbarHeight: 100,
            leading: const Icon(
              Icons.grid_view,
              color: Colors.white,
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              )
            ]),
      );
    });
    // TODO: implement build
    throw UnimplementedError();
  }
}
