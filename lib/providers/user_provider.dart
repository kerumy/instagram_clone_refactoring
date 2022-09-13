import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_login/models/user_model.dart' as model;
import 'package:instagram_login/providers/auth_providers.dart';

final userProvider = ChangeNotifierProvider(((ref) => UserProvider(ref.read)));

class UserProvider with ChangeNotifier {
  final Reader read;
  UserProvider(this.read);

  model.User? _user;

  model.User? get getUser => _user;

  Future<void> refreshUser() async {
    final auth = read(authServicesProvider);
    model.User user = await auth.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
