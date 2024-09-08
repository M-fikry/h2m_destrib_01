
import 'package:freezed_annotation/freezed_annotation.dart';

part 'representative_response.g.dart';

@JsonSerializable()
class RepresentativeResponse {
  int?     idKhazna;
  int?     idMakhzan;
  int?     idFreaShrka;
  int?     lastname;
  String?  khazna;
  String?  makhzan;
  String?  namemndob;
  String?  nameshrka;
  String?  avergSerSHra;

  RepresentativeResponse(this.idKhazna, this.idMakhzan, this.idFreaShrka, this.lastname, this.khazna, this.makhzan, this.namemndob, this.nameshrka, this.avergSerSHra);

  factory RepresentativeResponse.fromJson(Map<String, dynamic> json) => _$RepresentativeResponseFromJson(json);

}