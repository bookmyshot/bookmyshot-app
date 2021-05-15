import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'appointment.dart';

class Beneficiary {
  final String beneficiary_reference_id;
  final String name;
  final String birth_year;
  final String gender;
  final String mobile_number;
  final String photo_id_type;
  final String photo_id_number;
  final String comorbidity_ind;
  final String vaccination_status;
  final String vaccine;
  final String dose1_date;
  final String dose2_date;
  final List<Appointment> appointments;
  Beneficiary({
    required this.beneficiary_reference_id,
    required this.name,
    required this.birth_year,
    required this.gender,
    required this.mobile_number,
    required this.photo_id_type,
    required this.photo_id_number,
    required this.comorbidity_ind,
    required this.vaccination_status,
    required this.vaccine,
    required this.dose1_date,
    required this.dose2_date,
    required this.appointments,
  });

  Beneficiary copyWith({
    String? beneficiary_reference_id,
    String? name,
    String? birth_year,
    String? gender,
    String? mobile_number,
    String? photo_id_type,
    String? photo_id_number,
    String? comorbidity_ind,
    String? vaccination_status,
    String? vaccine,
    String? dose1_date,
    String? dose2_date,
    List<Appointment>? appointments,
  }) {
    return Beneficiary(
      beneficiary_reference_id:
          beneficiary_reference_id ?? this.beneficiary_reference_id,
      name: name ?? this.name,
      birth_year: birth_year ?? this.birth_year,
      gender: gender ?? this.gender,
      mobile_number: mobile_number ?? this.mobile_number,
      photo_id_type: photo_id_type ?? this.photo_id_type,
      photo_id_number: photo_id_number ?? this.photo_id_number,
      comorbidity_ind: comorbidity_ind ?? this.comorbidity_ind,
      vaccination_status: vaccination_status ?? this.vaccination_status,
      vaccine: vaccine ?? this.vaccine,
      dose1_date: dose1_date ?? this.dose1_date,
      dose2_date: dose2_date ?? this.dose2_date,
      appointments: appointments ?? this.appointments,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'beneficiary_reference_id': beneficiary_reference_id,
      'name': name,
      'birth_year': birth_year,
      'gender': gender,
      'mobile_number': mobile_number,
      'photo_id_type': photo_id_type,
      'photo_id_number': photo_id_number,
      'comorbidity_ind': comorbidity_ind,
      'vaccination_status': vaccination_status,
      'vaccine': vaccine,
      'dose1_date': dose1_date,
      'dose2_date': dose2_date,
      'appointments': appointments.map((x) => x.toMap()).toList(),
    };
  }

  factory Beneficiary.fromMap(Map<String, dynamic> map) {
    return Beneficiary(
      beneficiary_reference_id: map['beneficiary_reference_id'],
      name: map['name'],
      birth_year: map['birth_year'],
      gender: map['gender'],
      mobile_number: map['mobile_number'],
      photo_id_type: map['photo_id_type'],
      photo_id_number: map['photo_id_number'],
      comorbidity_ind: map['comorbidity_ind'],
      vaccination_status: map['vaccination_status'],
      vaccine: map['vaccine'],
      dose1_date: map['dose1_date'],
      dose2_date: map['dose2_date'],
      appointments: List<Appointment>.from(
          map['appointments']?.map((x) => Appointment.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Beneficiary.fromJson(String source) =>
      Beneficiary.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Beneficiary(beneficiary_reference_id: $beneficiary_reference_id, name: $name, birth_year: $birth_year, gender: $gender, mobile_number: $mobile_number, photo_id_type: $photo_id_type, photo_id_number: $photo_id_number, comorbidity_ind: $comorbidity_ind, vaccination_status: $vaccination_status, vaccine: $vaccine, dose1_date: $dose1_date, dose2_date: $dose2_date, appointments: $appointments)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Beneficiary &&
        other.beneficiary_reference_id == beneficiary_reference_id &&
        other.name == name &&
        other.birth_year == birth_year &&
        other.gender == gender &&
        other.mobile_number == mobile_number &&
        other.photo_id_type == photo_id_type &&
        other.photo_id_number == photo_id_number &&
        other.comorbidity_ind == comorbidity_ind &&
        other.vaccination_status == vaccination_status &&
        other.vaccine == vaccine &&
        other.dose1_date == dose1_date &&
        other.dose2_date == dose2_date &&
        listEquals(other.appointments, appointments);
  }

  @override
  int get hashCode {
    return beneficiary_reference_id.hashCode ^
        name.hashCode ^
        birth_year.hashCode ^
        gender.hashCode ^
        mobile_number.hashCode ^
        photo_id_type.hashCode ^
        photo_id_number.hashCode ^
        comorbidity_ind.hashCode ^
        vaccination_status.hashCode ^
        vaccine.hashCode ^
        dose1_date.hashCode ^
        dose2_date.hashCode ^
        appointments.hashCode;
  }
}
