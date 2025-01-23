import 'package:flutter/material.dart';
import 'package:navida_v2/domain/use_case/main_use_case.dart';

class MainViewModel extends ChangeNotifier {
  final MainUseCase _mainUseCase;
  double _totalFlightTime = 0;
  double get totalFlightTime => _totalFlightTime;

  MainViewModel({required MainUseCase mainUseCase})
      : _mainUseCase = mainUseCase;

  Future<void> loadTotalFlightTime() async {
    _totalFlightTime = await _mainUseCase.execute();
    notifyListeners();
  }
}
