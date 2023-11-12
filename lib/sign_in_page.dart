import 'package:flutter/material.dart';
import 'package:hava_ist2/config/app_colors.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Image(
              image: AssetImage("assets/splash2.png"),
              fit: BoxFit.contain,
              width: 150,
            ),
            const SizedBox(
              height: 15,
            ),
            const Image(
              image: AssetImage("assets/splash.png"),
              fit: BoxFit.contain,
              height: 230,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: AppColors.materialLight,
              ),
              height: 350,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Giriş Yap',
                        style: TextStyle(fontSize: 25),
                      ),
                      const SizedBox(width: 80),
                      Switch(value: true, onChanged: (_) {}),
                      const SizedBox(width: 30),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: '12345678901',
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: '***************',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (_) {}),
                          const Text('Beni Unutma'),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Şifremi Unuttum',
                          style: TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Giriş Yap')),
                  TextButton(onPressed: () {}, child: const Text('Kayıt Ol'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
