import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_login/providers/auth_providers.dart';
import 'package:instagram_login/screens/login_screen.dart';
import 'package:instagram_login/utils/colors.dart';

class MobileScreenLayout extends ConsumerWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authServicesProvider);
    return Scaffold(
      body: Center(
        // child: Text('This is mobile'),
        child: InkWell(
          onTap: () {
            auth.signout();
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          child: Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                color: blueColor),
            child: const Text('Log out'),
          ),
        ),
      ),
    );
  }
}
