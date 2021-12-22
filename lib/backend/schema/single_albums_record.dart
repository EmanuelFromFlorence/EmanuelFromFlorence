import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'single_albums_record.g.dart';

abstract class SingleAlbumsRecord
    implements Built<SingleAlbumsRecord, SingleAlbumsRecordBuilder> {
  static Serializer<SingleAlbumsRecord> get serializer =>
      _$singleAlbumsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Title')
  String get title;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SingleAlbumsRecordBuilder builder) =>
      builder..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SingleAlbums');

  static Stream<SingleAlbumsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SingleAlbumsRecord._();
  factory SingleAlbumsRecord(
          [void Function(SingleAlbumsRecordBuilder) updates]) =
      _$SingleAlbumsRecord;

  static SingleAlbumsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSingleAlbumsRecordData({
  String title,
}) =>
    serializers.toFirestore(SingleAlbumsRecord.serializer,
        SingleAlbumsRecord((s) => s..title = title));
