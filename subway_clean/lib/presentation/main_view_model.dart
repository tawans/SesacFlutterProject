import 'dart:async';

import 'package:flutter/material.dart';
import 'package:subway_clean/core/result.dart';
import 'package:subway_clean/domain/use_case/get_stations_use_case.dart';
import 'package:subway_clean/presentation/main_state.dart';
import 'package:subway_clean/presentation/main_ui_event.dart';

class MainViewModel with ChangeNotifier {
  final GetStationsUseCase _getStationsUseCase;

  final _eventController = StreamController<MainUiEvent>();

  Stream<MainUiEvent> get eventStream => _eventController.stream;

  MainViewModel(this._getStationsUseCase);

  MainState _state = const MainState();

  MainState get state => _state;

  void fetchStations(String query) async {
    if (query.isEmpty) {
      _eventController.add(const ShowSnackBar('검색어가 없습니다'));
      return;
    }

    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getStationsUseCase.execute(query);

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(
          isLoading: false,
          stations: data,
        );
        notifyListeners();

        _eventController.add(const EndLoading());
      case Error(:final e):
        _eventController.add(ShowSnackBar(e));
    }
  }
}
