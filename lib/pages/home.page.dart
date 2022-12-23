import 'package:auto_route/auto_route.dart';
import 'package:firestorecrud/router/router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey[100]),
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Balance",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rs: 7,00,58,43,058",
                        style: TextStyle(fontSize: 24, color: Colors.grey[700]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_circle_up_rounded,
                                color: Colors.green[400],
                                size: 60,
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Income",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Rs: 45,465")
                                ],
                              )
                            ],
                          ),
                          InkWell(
                            onTap: (() {
                              context.router.push(const ExpensesRoute());
                            }),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_circle_down_rounded,
                                  color: Colors.red[300],
                                  size: 60,
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      "Expense",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Rs: 15,455")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey[100],
                ),
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: ListView.builder(
                  itemCount: 52,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(20),
                      //   color: Colors.blueAccent[100],
                      // ),
                      child: const ListTile(
                        leading: Icon(Icons.shopping_bag),
                        title: Text("foods and drinks"),
                        trailing: Text("Rs: 1220/-"),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
