import 'package:flutter/material.dart';
import 'package:flutter_class/rechargeDisplay.dart';

class MobileTopUp extends StatelessWidget {
  const MobileTopUp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController numberController = TextEditingController();
    final TextEditingController amountController = TextEditingController();
    final TextEditingController methodController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 100, right: 30),
        child: Column(
          children: [
            SizedBox(
              height: 480,
              width: 350,
              child: Card(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "Mobile Topup",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      controller: numberController,
                      decoration: InputDecoration(
                        hintText: "mobile number",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 30),

                    TextField(
                      controller: amountController,
                      decoration: InputDecoration(
                        hintText: "Amount",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),

                    TextField(
                      controller: methodController,
                      decoration: InputDecoration(
                        hintText: "Payment Method",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: Card(
                        color: Colors.white60,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(15),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "*Earn more points on payment of RS 150",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            211,
                            21,
                            8,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => rechargeDisplay(
                                number: numberController.text,
                                amount: amountController.text,
                                method: methodController.text,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          "PAY",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
