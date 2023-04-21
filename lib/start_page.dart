import 'package:flutter/material.dart';
import 'package:logintest/auth_mange.dart';
import 'package:logintest/next_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  AuthManage manage = AuthManage();
  TextEditingController email = TextEditingController(text: "email");
  TextEditingController password = TextEditingController(text: "password");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("이메일"),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: email,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("비밀번호"),
                  SizedBox(
                    width: 100,
                    child: TextField(controller: password),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () => manage.loginKakao().then((value) => value
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextPage(),
                        ))
                    : null),
                child: const Text("카카오"),
              ),
              ElevatedButton(
                onPressed: () => manage.loginNaver().then((value) => value
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextPage(),
                        ))
                    : null),
                child: const Text("네이버"),
              ),
              ElevatedButton(
                onPressed: () => manage.loginGoogle().then((value) => value
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextPage(),
                        ))
                    : null),
                child: const Text("구글"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
