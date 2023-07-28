import 'package:ecommerce/utils/routes_names.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool channgeBtn = false;
  final _formkey = GlobalKey<FormState>();

  moveToNext(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        channgeBtn = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        channgeBtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
                child: Column(
                  children: [
                    Text('welcome $name'),
                    TextFormField(
                      autovalidateMode:
                          AutovalidateMode.always, // Add this line
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Username cant be empty';
                        } else if (value.length < 6) {
                          return 'Username length should not be less than 6';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: 'Enter Username',
                        labelText: 'Username',
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      autovalidateMode:
                          AutovalidateMode.always, // Add this line
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Password cant be empty';
                        } else if (value.length < 6) {
                          return 'Password length should not be less than 6';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(channgeBtn ? 50 : 8),
                      child: InkWell(
                        onTap: () async {
                          moveToNext(context);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 50,
                          width: channgeBtn ? 50 : 150,
                          alignment: Alignment.center,
                          child: channgeBtn
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
