import 'package:realm/realm.dart';
import 'package:ulama_training/models/schemas.dart';

Realm useRealm() {
  final config = Configuration.local(
    [Training.schema],
    fifoFilesFallbackPath: "./fifo_folder",
    schemaVersion: 1,
  );
  final realm = Realm(
    config,
  );
  return realm;
}
