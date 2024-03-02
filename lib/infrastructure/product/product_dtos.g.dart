// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDtoImpl _$$ProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoImpl(
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      productPrice: json['productPrice'] as num,
      productMeasureMent: ProductMeasureMentDto.fromJson(
          json['productMeasureMent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'productPrice': instance.productPrice,
      'productMeasureMent': instance.productMeasureMent.toJson(),
    };

_$ProductMeasureMentDtoImpl _$$ProductMeasureMentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductMeasureMentDtoImpl(
      height: json['height'] as num,
      width: json['width'] as num,
      length: json['length'] as num,
    );

Map<String, dynamic> _$$ProductMeasureMentDtoImplToJson(
        _$ProductMeasureMentDtoImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
    };
