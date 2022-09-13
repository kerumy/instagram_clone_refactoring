import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_login/providers/user_provider.dart';
import 'package:instagram_login/utils/dimensions.dart';

class ResponsiveLayout extends ConsumerStatefulWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayout(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout})
      : super(key: key);

  @override
  ResponsiveLayoutState createState() => ResponsiveLayoutState();
}

class ResponsiveLayoutState extends ConsumerState<ResponsiveLayout> {
  @override
  void initState() {
    super.initState();
    ref.read(userProvider);
    addData();
  }

  addData() async {
    final userprovider = ref.read(userProvider);
    await userprovider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        return widget.webScreenLayout;
      }
      return widget.mobileScreenLayout;
    }));
  }
}
