import 'package:flutfly_example_provider/provider/number_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  SecondPage({
    super.key,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: (BuildContext context, NumberListModel, Widget? child) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            NumberListModel.addNumbers();
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
                'The total Count is ${NumberListModel.number.last}',
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: ((context, index) => ListTile(
                      title: Text(NumberListModel.number[index].toString()),
                    )),
                itemCount: NumberListModel.number.length,
              ))
            ],
          ),
        ),
        appBar: AppBar(
            title: const Text('StateManagementDemo'),
            toolbarHeight: 100,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            )),
      );
    });
    // TODO: implement build
    throw UnimplementedError();
  }
}
