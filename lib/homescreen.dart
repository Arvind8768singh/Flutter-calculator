import 'package:calculator_app_design/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        userInput.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        answer.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput = '';
                            answer = '';
                            setState(() {});
                          },
                          title: 'AC',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '+/-';
                            setState(() {});
                          },
                          title: '+/-',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '%';
                            setState(() {});
                          },
                          title: '%',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '/';
                            setState(() {});
                          },
                          title: '/',
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '7';
                            setState(() {});
                          },
                          title: '7',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '8';
                            setState(() {});
                          },
                          title: '8',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '0';
                            setState(() {});
                          },
                          title: '0',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '*';
                            setState(() {});
                          },
                          title: '*',
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '4';
                            setState(() {});
                          },
                          title: '4',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '5';
                            setState(() {});
                          },
                          title: '5',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '6';
                            setState(() {});
                          },
                          title: '6',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '7';
                            setState(() {});
                          },
                          title: '7',
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '1';
                            setState(() {});
                          },
                          title: '1',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '2';
                            setState(() {});
                          },
                          title: '2',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '3';
                            setState(() {});
                          },
                          title: '3',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '+';
                            setState(() {});
                          },
                          title: '+',
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '0';
                            setState(() {});
                          },
                          title: '0',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput += '.';
                            setState(() {});
                          },
                          title: '.',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                          title: 'Del',
                        ),
                        MyButton(
                          onpress: () {
                            print('tap');
                            equalPress();
                            setState(() {});
                          },
                          title: '=',
                          color: const Color(0xffffa00a),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
