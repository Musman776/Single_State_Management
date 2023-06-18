import 'package:flutter/material.dart';
import 'package:practice_singal_provider_state_management/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountProvider();
}

class _CountProvider extends State<CountScreen>{
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(

      appBar: AppBar(
        title: const Text("Count"),
      ),

      body: Container(
        alignment: Alignment.center,

        child: Center(
          child: Consumer<CountProvider>(builder: (context, value, child) {
            return Text(value.c.toString());
          },)
        ),

      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
        onPressed: (){
          provider.increment();
        },
      ),
    );
  }
}