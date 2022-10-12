import 'dart:convert';
/// error : false
/// data : ["https://alphawizztest.tk/Atticadigitamarketing/https://alphawizztest.tk/Atticadigitamarketing/uploads/media/2022/BANNER_5.png","https://alphawizztest.tk/Atticadigitamarketing/https://alphawizztest.tk/Atticadigitamarketing/uploads/media/2022/BANNER_1.png","https://alphawizztest.tk/Atticadigitamarketing/https://alphawizztest.tk/Atticadigitamarketing/uploads/media/2022/BANNER_6.png","https://alphawizztest.tk/Atticadigitamarketing/https://alphawizztest.tk/Atticadigitamarketing/uploads/media/2022/BANNER_3.png","https://alphawizztest.tk/Atticadigitamarketing/https://alphawizztest.tk/Atticadigitamarketing/uploads/media/2022/BANNER_2.png","https://alphawizztest.tk/Atticadigitamarketing/https://alphawizztest.tk/Atticadigitamarketing/uploads/media/2022/BANNER_2.png","https://alphawizztest.tk/Atticadigitamarketing/https://alphawizztest.tk/Atticadigitamarketing/uploads/media/2022/BANNER_4.png"]

BannerModel bannerModelFromJson(String str) => BannerModel.fromJson(json.decode(str));
String bannerModelToJson(BannerModel data) => json.encode(data.toJson());
class BannerModel {
  BannerModel({
    bool? error,
    List<String>? data,}){
    _error = error;
    _data = data;
  }

  BannerModel.fromJson(dynamic json) {
    _error = json['error'];
    _data = json['data'] != null ? json['data'].cast<String>() : [];
  }
  bool? _error;
  List<String>? _data;
  BannerModel copyWith({  bool? error,
    List<String>? data,
  }) => BannerModel(  error: error ?? _error,
    data: data ?? _data,
  );
  bool? get error => _error;
  List<String>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    map['data'] = _data;
    return map;
  }

}