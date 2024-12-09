import 'package:flutter/material.dart';
import 'package:flutter_day_6/pages/information_page.dart';

int counter = 0;

// ! it is StatefulWidget
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LogonPagestate();
}

class _LogonPagestate extends State<LoginPage> {
  TextEditingController namedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
                controller: namedController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "enter your name"),
              ),
              const SizedBox(height: 32),
              Text(
                "Number is $counter",
                style: const TextStyle(fontSize: 32),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        counter++;
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  InformationPage(name: namedController.text),
                            ));
                      },
                      child: const Text("go to naext page"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
