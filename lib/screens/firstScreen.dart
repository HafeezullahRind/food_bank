import 'package:flutter/material.dart';
import 'package:food_bank/screens/MainScreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 1, 27),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(40),
            child: Column(
              children: [
                const Image(
                  image: AssetImage("images/Food_logo.png"),
                  height: 100,
                ),
                Text(
                  "Food Bank",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "Special and delicious food",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Spacer(),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(247, 252, 94, 50),
                  )),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MainScreen(),
                    ));
                  },
                  child: const SizedBox(
                    width: 70,
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const SizedBox(
                      width: 70,
                      child: Center(
                          child: Text(
                        "Signup",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                    )),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: const Image(
                    image: AssetImage("images/voucher_logo_main.png"),
                    height: 240,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
