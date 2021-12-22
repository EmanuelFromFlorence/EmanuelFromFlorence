import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tracks_record.g.dart';

abstract class TracksRecord
    implements Built<TracksRecord, TracksRecordBuilder> {
  static Serializer<TracksRecord> get serializer => _$tracksRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Title')
  String get title;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TracksRecordBuilder builder) =>
      builder..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tracks');

  static Stream<TracksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TracksRecord._();
  factory TracksRecord([void Function(TracksRecordBuilder) updates]) =
      _$TracksRecord;

  static TracksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTracksRecordData({
  String title,
}) =>
    serializers.toFirestore(
        TracksRecord.serializer, TracksRecord((t) => t..title = title));
