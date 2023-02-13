import 'package:exam/HomePage.dart';
import 'package:exam/ModalClass.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController txtgrid = TextEditingController();
  TextEditingController txtname = TextEditingController();
  TextEditingController txtstd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                controller: txtgrid,
                decoration: InputDecoration(
                    label: Text("Enter Your Grid"),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: txtname,
                decoration: InputDecoration(
                    label: Text("Enter Your Name"),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: txtstd,
                decoration: InputDecoration(
                    label: Text("Enter Your Std"),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Nikunj n1 = Nikunj(Name: txtname.text,Grid: txtgrid.text,Std: txtstd.text);
                  setState(() {
                    Name.add(n1);
                    print(Name);
                  });
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
