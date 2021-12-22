import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'album_z_record.g.dart';

abstract class AlbumZRecord
    implements Built<AlbumZRecord, AlbumZRecordBuilder> {
  static Serializer<AlbumZRecord> get serializer => _$albumZRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Title')
  String get title;

  @nullable
  @BuiltValueField(wireName: 'Category')
  String get category;

  @nullable
  @BuiltValueField(wireName: 'Image')
  String get image;

  @nullable
  @BuiltValueField(wireName: 'Thumbs')
  String get thumbs;

  @nullable
  @BuiltValueField(wireName: 'Url')
  String get url;

  @nullable
  @BuiltValueField(wireName: 'TrueFalse')
  bool get trueFalse;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AlbumZRecordBuilder builder) => builder
    ..title = ''
    ..category = ''
    ..image = ''
    ..thumbs = ''
    ..url = ''
    ..trueFalse = false
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AlbumZ');

  static Stream<AlbumZRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AlbumZRecord._();
  factory AlbumZRecord([void Function(AlbumZRecordBuilder) updates]) =
      _$AlbumZRecord;

  static AlbumZRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAlbumZRecordData({
  String title,
  String category,
  String image,
  String thumbs,
  String url,
  bool trueFalse,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        AlbumZRecord.serializer,
        AlbumZRecord((a) => a
          ..title = title
          ..category = category
          ..image = image
          ..thumbs = thumbs
          ..url = url
          ..trueFalse = trueFalse
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
