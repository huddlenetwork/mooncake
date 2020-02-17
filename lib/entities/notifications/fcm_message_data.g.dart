// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FcmMessage _$FcmMessageFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['data']);
  return FcmMessage(
    notification: json['notification'] == null
        ? null
        : FcmNotification.fromJson(
            json['notification'] as Map<String, dynamic>),
    data: json['data'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$FcmMessageToJson(FcmMessage instance) =>
    <String, dynamic>{
      'notification': instance.notification?.toJson(),
      'data': instance.data,
    };

FcmNotification _$FcmNotificationFromJson(Map<String, dynamic> json) {
  return FcmNotification(
    title: json['title'] as String,
    body: json['body'] as String,
    imageUrl: json['image'] as String,
  );
}

Map<String, dynamic> _$FcmNotificationToJson(FcmNotification instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'image': instance.imageUrl,
    };

FcmOpenPostData _$FcmOpenPostDataFromJson(Map<String, dynamic> json) {
  return FcmOpenPostData(
    action: json['action'] as String,
    postId: json['post_id'] as String,
  );
}

Map<String, dynamic> _$FcmOpenPostDataToJson(FcmOpenPostData instance) =>
    <String, dynamic>{
      'action': instance.action,
      'post_id': instance.postId,
    };
