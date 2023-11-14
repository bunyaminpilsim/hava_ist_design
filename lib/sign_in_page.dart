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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.07),
            Image(
              image: const AssetImage("assets/splash2.png"),
              fit: BoxFit.contain,
              width: screenWidth * 0.33,
              height: screenHeight * 0.07,
            ),
            Image(
              image: const AssetImage("assets/splash.png"),
              fit: BoxFit.contain,
              height: screenHeight * 0.25,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: AppColors.materialLight,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Giriş Yap',
                            style: TextStyle(fontSize: screenHeight * 0.036, color: AppColors.primaryColor),
                          ),
                          SizedBox(width: screenWidth * 0.15),
                          Switch(value: true, onChanged: (_) {}),
                          SizedBox(width: screenWidth * 0.07),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.9,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: '12345678901',
                              hintStyle: TextStyle(color: AppColors.primaryColor, fontSize: screenHeight * 0.02),
                              prefixIcon: const Icon(Icons.person),
                              prefixIconColor: AppColors.primaryColor,
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(color: AppColors.primaryColor),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      SizedBox(
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.9,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: '***************',
                              hintStyle: TextStyle(color: AppColors.primaryColor, fontSize: screenHeight * 0.02),
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: const Icon(Icons.visibility),
                              prefixIconColor: AppColors.primaryColor,
                              suffixIconColor: AppColors.primaryColor,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.primaryColor),
                                borderRadius: const BorderRadius.all(Radius.circular(30)),
                              )),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (_) {}),
                              Text(
                                'Beni Unutma',
                                style: TextStyle(color: AppColors.primaryColor),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Şifremi Unuttum',
                              style: TextStyle(decoration: TextDecoration.underline, color: AppColors.primaryColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.9,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
                          child: Text(
                            'Giriş Yap',
                            style: TextStyle(color: AppColors.materialLight),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Kayıt Ol',
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: AppColors.materialDark,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                              child: Text(
                                'veya',
                                style: TextStyle(color: AppColors.primaryColor),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: AppColors.materialDark,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                        child: OutlinedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(color: AppColors.primaryColor)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                          ),
                          child: Text(
                            'Giriş Yapmadan Devam Et',
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
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
