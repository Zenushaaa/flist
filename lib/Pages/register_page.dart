import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Stack(
          children: [
            Image.asset('assets/images/vector.png'),
            SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 24,
                  ),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello!\nSignup to\nget started',
                          style: titleTextStyle.copyWith(fontSize: 24),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Fullname',
                          style: labelTextStyle.copyWith(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        TextFormField(
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
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Re-type Password',
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
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
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
                            'Signup',
                            style: titleTextStyle.copyWith(
                              fontSize: 14,
                              color: Colors.white,
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
                                'Have an account??',
                                style: titleTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              InkWell(
                                onTap: () =>
                                    Navigator.pushNamed(context, '/login'),
                                child: Text(
                                  'Login',
                                  style: titleTextStyle.copyWith(
                                    fontSize: 12,
                                    color: blueColor,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
