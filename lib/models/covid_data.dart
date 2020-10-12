// To parse this JSON data, do
//
//     final covidData = covidDataFromJson(jsonString);

import 'dart:convert';

List<CovidData> covidDataFromJson(String str) =>
    List<CovidData>.from(json.decode(str).map((x) => CovidData.fromJson(x)));

String covidDataToJson(List<CovidData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CovidData {
  CovidData({
    this.tarih,
    this.gunlukTest,
    this.gunlukVaka,
    this.gunlukVefat,
    this.gunlukIyilesen,
    this.toplamTest,
    this.toplamVaka,
    this.toplamVefat,
    this.toplamIyilesen,
    this.toplamYogunBakim,
    this.toplamEntube,
    this.hastalardaZaturreOran,
    this.agirHastaSayisi,
    this.yatakDolulukOrani,
    this.eriskinYogunBakimDolulukOrani,
    this.ventilatorDolulukOrani,
    this.ortalamaFilyasyonSuresi,
    this.ortalamaTemasliTespitSuresi,
    this.filyasyonOrani,
  });

  String tarih;
  String gunlukTest;
  String gunlukVaka;
  String gunlukVefat;
  String gunlukIyilesen;
  String toplamTest;
  String toplamVaka;
  String toplamVefat;
  String toplamIyilesen;
  String toplamYogunBakim;
  String toplamEntube;
  String hastalardaZaturreOran;
  String agirHastaSayisi;
  String yatakDolulukOrani;
  String eriskinYogunBakimDolulukOrani;
  String ventilatorDolulukOrani;
  String ortalamaFilyasyonSuresi;
  String ortalamaTemasliTespitSuresi;
  String filyasyonOrani;

  factory CovidData.fromJson(Map<String, dynamic> json) => CovidData(
        tarih: json["tarih"],
        gunlukTest: json["gunluk_test"],
        gunlukVaka: json["gunluk_vaka"],
        gunlukVefat: json["gunluk_vefat"],
        gunlukIyilesen: json["gunluk_iyilesen"],
        toplamTest: json["toplam_test"],
        toplamVaka: json["toplam_vaka"],
        toplamVefat: json["toplam_vefat"],
        toplamIyilesen: json["toplam_iyilesen"],
        toplamYogunBakim: json["toplam_yogun_bakim"],
        toplamEntube: json["toplam_entube"],
        hastalardaZaturreOran: json["hastalarda_zaturre_oran"],
        agirHastaSayisi: json["agir_hasta_sayisi"],
        yatakDolulukOrani: json["yatak_doluluk_orani"],
        eriskinYogunBakimDolulukOrani:
            json["eriskin_yogun_bakim_doluluk_orani"],
        ventilatorDolulukOrani: json["ventilator_doluluk_orani"],
        ortalamaFilyasyonSuresi: json["ortalama_filyasyon_suresi"],
        ortalamaTemasliTespitSuresi: json["ortalama_temasli_tespit_suresi"],
        filyasyonOrani: json["filyasyon_orani"],
      );

  Map<String, dynamic> toJson() => {
        "tarih": tarih,
        "gunluk_test": gunlukTest,
        "gunluk_vaka": gunlukVaka,
        "gunluk_vefat": gunlukVefat,
        "gunluk_iyilesen": gunlukIyilesen,
        "toplam_test": toplamTest,
        "toplam_vaka": toplamVaka,
        "toplam_vefat": toplamVefat,
        "toplam_iyilesen": toplamIyilesen,
        "toplam_yogun_bakim": toplamYogunBakim,
        "toplam_entube": toplamEntube,
        "hastalarda_zaturre_oran": hastalardaZaturreOran,
        "agir_hasta_sayisi": agirHastaSayisi,
        "yatak_doluluk_orani": yatakDolulukOrani,
        "eriskin_yogun_bakim_doluluk_orani": eriskinYogunBakimDolulukOrani,
        "ventilator_doluluk_orani": ventilatorDolulukOrani,
        "ortalama_filyasyon_suresi": ortalamaFilyasyonSuresi,
        "ortalama_temasli_tespit_suresi": ortalamaTemasliTespitSuresi,
        "filyasyon_orani": filyasyonOrani,
      };
}
