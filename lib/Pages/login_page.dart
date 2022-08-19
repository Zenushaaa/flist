import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: blueColor,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/logo/logo_with_name.png',
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height - 380,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(23),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          top: 24,
                        ),
                        child: Text(
                          'Hello again,\nWelcome back',
                          style: titleTextStyle.copyWith(fontSize: 24),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: labelTextStyle.copyWith(fontSize: 14),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: greyColor,
                                contentPadding: const EdgeInsets.only(
                                  left: 16,
                                  top: 8,
                                  right: 16,
                                  bottom: 8,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: greyColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: greyColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Password',
                              style: labelTextStyle.copyWith(fontSize: 14),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: greyColor,
                                contentPadding: const EdgeInsets.only(
                                  left: 16,
                                  top: 8,
                                  right: 16,
                                  bottom: 8,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: greyColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: greyColor),
                                ),
                                suffixIcon: IconButton(
                                  icon: const Icon(
                                    Icons.visibility_off,
                                    color: Color(0xFFB9B9B9),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () =>
                                Navigator.pushNamed(context, '/forgotPassword'),
                            child: Text(
                              'Forgot password?',
                              style: subTitleTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 4,
                            primary: blueColor,
                            fixedSize:
                                Size(MediaQuery.of(context).size.width, 42),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: titleTextStyle.copyWith(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account?',
                              style: titleTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            InkWell(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/register'),
                              child: Text(
                                'Register',
                                style: titleTextStyle.copyWith(
                                  fontSize: 12,
                                  color: blueColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
