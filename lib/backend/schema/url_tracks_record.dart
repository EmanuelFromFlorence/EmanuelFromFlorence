import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'url_tracks_record.g.dart';

abstract class UrlTracksRecord
    implements Built<UrlTracksRecord, UrlTracksRecordBuilder> {
  static Serializer<UrlTracksRecord> get serializer =>
      _$urlTracksRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'URL')
  String get url;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UrlTracksRecordBuilder builder) =>
      builder..url = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UrlTracks');

  static Stream<UrlTracksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UrlTracksRecord._();
  factory UrlTracksRecord([void Function(UrlTracksRecordBuilder) updates]) =
      _$UrlTracksRecord;

  static UrlTracksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUrlTracksRecordData({
  String url,
}) =>
    serializers.toFirestore(
        UrlTracksRecord.serializer, UrlTracksRecord((u) => u..url = url));
