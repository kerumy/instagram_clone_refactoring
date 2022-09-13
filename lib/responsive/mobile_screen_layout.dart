import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:instagram_login/providers/user_provider.dart';

import 'package:instagram_login/models/user_model.dart' as model;

class MobileScreenLayout extends ConsumerStatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  MobileScreenLayoutState createState() => MobileScreenLayoutState();
}

class MobileScreenLayoutState extends ConsumerState<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    final userprovider = ref.read(userProvider);
    model.User? user = userprovider.getUser;

    final isUserLogin = user?.uid ?? false;

    return Scaffold(
      body: isUserLogin == false
          ? const Text('aaa')
          : Center(child: Text(user!.email)),
    );
  }
}
