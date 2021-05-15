import 'dart:convert';

class Appointment {
  final String appointment_id;
  final int center_id;
  final String name;
  final String state_name;
  final String district_name;
  final String block_name;
  final String from;
  final String to;
  final int dose;
  final String session_id;
  final String date;
  final String slot;
  Appointment({
    required this.appointment_id,
    required this.center_id,
    required this.name,
    required this.state_name,
    required this.district_name,
    required this.block_name,
    required this.from,
    required this.to,
    required this.dose,
    required this.session_id,
    required this.date,
    required this.slot,
  });

  Appointment copyWith({
    String? appointment_id,
    int? center_id,
    String? name,
    String? state_name,
    String? district_name,
    String? block_name,
    String? from,
    String? to,
    int? dose,
    String? session_id,
    String? date,
    String? slot,
  }) {
    return Appointment(
      appointment_id: appointment_id ?? this.appointment_id,
      center_id: center_id ?? this.center_id,
      name: name ?? this.name,
      state_name: state_name ?? this.state_name,
      district_name: district_name ?? this.district_name,
      block_name: block_name ?? this.block_name,
      from: from ?? this.from,
      to: to ?? this.to,
      dose: dose ?? this.dose,
      session_id: session_id ?? this.session_id,
      date: date ?? this.date,
      slot: slot ?? this.slot,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'appointment_id': appointment_id,
      'center_id': center_id,
      'name': name,
      'state_name': state_name,
      'district_name': district_name,
      'block_name': block_name,
      'from': from,
      'to': to,
      'dose': dose,
      'session_id': session_id,
      'date': date,
      'slot': slot,
    };
  }

  factory Appointment.fromMap(Map<String, dynamic> map) {
    return Appointment(
      appointment_id: map['appointment_id'],
      center_id: map['center_id']?.toInt(),
      name: map['name'],
      state_name: map['state_name'],
      district_name: map['district_name'],
      block_name: map['block_name'],
      from: map['from'],
      to: map['to'],
      dose: map['dose']?.toInt(),
      session_id: map['session_id'],
      date: map['date'],
      slot: map['slot'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Appointment.fromJson(String source) =>
      Appointment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Appointment(appointment_id: $appointment_id, center_id: $center_id, name: $name, state_name: $state_name, district_name: $district_name, block_name: $block_name, from: $from, to: $to, dose: $dose, session_id: $session_id, date: $date, slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Appointment &&
        other.appointment_id == appointment_id &&
        other.center_id == center_id &&
        other.name == name &&
        other.state_name == state_name &&
        other.district_name == district_name &&
        other.block_name == block_name &&
        other.from == from &&
        other.to == to &&
        other.dose == dose &&
        other.session_id == session_id &&
        other.date == date &&
        other.slot == slot;
  }

  @override
  int get hashCode {
    return appointment_id.hashCode ^
        center_id.hashCode ^
        name.hashCode ^
        state_name.hashCode ^
        district_name.hashCode ^
        block_name.hashCode ^
        from.hashCode ^
        to.hashCode ^
        dose.hashCode ^
        session_id.hashCode ^
        date.hashCode ^
        slot.hashCode;
  }
}
