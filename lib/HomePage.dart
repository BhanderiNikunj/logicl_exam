import 'package:exam/ModalClass.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
List<Nikunj> Name = [];
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: Name.length,
            itemBuilder: (context, index) => Product(Name[index].Name!,Name[index].Grid!,Name[index].Std!),),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // d = Name;
            Navigator.pushNamed(context, 'add').then((value) => (value) {
              setState(() {

              });
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget Product(String Name,String Grid,String Std) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 80,
        width: double.infinity,
        color: Colors.black12,
        alignment: Alignment.center,
        child: Row(
          children: [
            Text("$Grid"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$Name"),
                Text("$Std"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
