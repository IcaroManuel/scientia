import 'user_model.dart';
import 'service_model.dart';

class AppointmentModel {
  final String? id;
  final DateTime dateTime;
  final String status; // 'pending', 'confirmed', 'completed', 'cancelled'
  final String notes;
  final String userId;
  final String serviceId;
  final UserModel? user;
  final ServiceModel? service;

  AppointmentModel({
    this.id,
    required this.dateTime,
    this.status = 'pending',
    this.notes = '',
    required this.userId,
    required this.serviceId,
    this.user,
    this.service,
  });

  factory AppointmentModel.fromJson(Map<String, dynamic> json) {
    return AppointmentModel(
      id: json['id'],
      dateTime: DateTime.parse(json['dateTime']),
      status: json['status'],
      notes: json['notes'] ?? '',
      userId: json['userId'],
      serviceId: json['serviceId'],
      user: json['user'] != null ? UserModel.fromJson(json['user']) : null,
      service: json['service'] != null
          ? ServiceModel.fromJson(json['service'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'dateTime': dateTime.toIso8601String(),
      'status': status,
      'notes': notes,
      'userId': userId,
      'serviceId': serviceId,
    };
  }
}
