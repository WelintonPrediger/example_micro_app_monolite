import 'package:flutter_modular/flutter_modular.dart';
import 'package:monilite_app/app/modules/login/_export.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore())
  ];

  @override
  List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => const LoginPage())
  ];
}