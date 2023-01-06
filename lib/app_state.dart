import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _homeSaved = prefs.getBool('ff_homeSaved') ?? _homeSaved;
    _likedHomes = prefs
            .getStringList('ff_likedHomes')
            ?.map((path) => path.ref)
            .toList() ??
        _likedHomes;
    _requestedHomes = prefs
            .getStringList('ff_requestedHomes')
            ?.map((path) => path.ref)
            .toList() ??
        _requestedHomes;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _searchActiveHomePage = false;
  bool get searchActiveHomePage => _searchActiveHomePage;
  set searchActiveHomePage(bool _value) {
    _searchActiveHomePage = _value;
  }

  bool _homeSaved = false;
  bool get homeSaved => _homeSaved;
  set homeSaved(bool _value) {
    _homeSaved = _value;
    prefs.setBool('ff_homeSaved', _value);
  }

  List<DocumentReference> _likedHomes = [];
  List<DocumentReference> get likedHomes => _likedHomes;
  set likedHomes(List<DocumentReference> _value) {
    _likedHomes = _value;
    prefs.setStringList('ff_likedHomes', _value.map((x) => x.path).toList());
  }

  void addToLikedHomes(DocumentReference _value) {
    _likedHomes.add(_value);
    prefs.setStringList(
        'ff_likedHomes', _likedHomes.map((x) => x.path).toList());
  }

  void removeFromLikedHomes(DocumentReference _value) {
    _likedHomes.remove(_value);
    prefs.setStringList(
        'ff_likedHomes', _likedHomes.map((x) => x.path).toList());
  }

  List<DocumentReference> _requestedHomes = [];
  List<DocumentReference> get requestedHomes => _requestedHomes;
  set requestedHomes(List<DocumentReference> _value) {
    _requestedHomes = _value;
    prefs.setStringList(
        'ff_requestedHomes', _value.map((x) => x.path).toList());
  }

  void addToRequestedHomes(DocumentReference _value) {
    _requestedHomes.add(_value);
    prefs.setStringList(
        'ff_requestedHomes', _requestedHomes.map((x) => x.path).toList());
  }

  void removeFromRequestedHomes(DocumentReference _value) {
    _requestedHomes.remove(_value);
    prefs.setStringList(
        'ff_requestedHomes', _requestedHomes.map((x) => x.path).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
