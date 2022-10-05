import 'package:flutter_modular/flutter_modular.dart';
import 'package:monilite_app/app/modules/home/_export.dart';
import 'package:monilite_app/app/modules/login/_export.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: LoginModule()),
    ModuleRoute('/home', module: HomeModule())
  ];

}