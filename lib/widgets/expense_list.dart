import 'package:flutter/material.dart';

class ExpenseListBlock extends StatefulWidget {
  const ExpenseListBlock({
    Key? key,
  }) : super(key: key);

  @override
  State<ExpenseListBlock> createState() => _ExpenseListBlockState();
}

class _ExpenseListBlockState extends State<ExpenseListBlock> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * .1,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 2.0,
                ),
              ]),
          child: Column(
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("date: 23/12/2022"),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.shopping_bag_sharp),
                  const Text("Shopping"),
                  Column(
                    children: const [
                      Text(
                        "Amount",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("rs: 1200")
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
