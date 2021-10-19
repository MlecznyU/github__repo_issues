import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final GetIt _getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDI() async => $initGetIt(_getIt);

T inject<T extends Object>() => _getIt.get<T>();
