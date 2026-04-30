import 'package:flutter/material.dart';
import 'package:flutter_class/mobileTopUp.dart';

// ignore: must_be_immutable
class rechargeDisplay extends StatelessWidget {
  String number;
  String amount;
  String method;
  rechargeDisplay({
    super.key,
    required this.number,
    required this.amount,
    required this.method,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 150, right: 30),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: 350,
              child: Card(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Confirm your payment details",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Row(
                              children: [
                                Text("Mobile "),
                                Padding(
                                  padding: const EdgeInsets.only(left: 82),
                                  child: Text(
                                    "$number ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Row(
                              children: [
                                Text("Amount "),

                                Padding(
                                  padding: const EdgeInsets.only(left: 76),
                                  child: Text(
                                    "$amount ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Row(
                              children: [
                                Text("Payment Method "),

                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "$method ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Text(
                        "Do you want to continue ?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),

                      Padding(
                        padding: const EdgeInsets.only(right: 38),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MobileTopUp(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: const Color.fromARGB(
                                      255,
                                      240,
                                      224,
                                      224,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "OK",
                              style: TextStyle(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 9, 132, 233),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
