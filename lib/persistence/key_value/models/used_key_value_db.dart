import '../../../core/constants/app_db.dart';
import 'key_value_db.dart';
import 'key_value_db_hive.dart';


/// An enhanced enum used to represent, select and describe the used
/// [KeyValueDb] implementation.
enum UsedKeyValueDb {
  hive(AppDb.keyValueFilename); // Used filename for the Hive storage box.

  final String _filename;

  const UsedKeyValueDb([this._filename = '']);

  /// Get the [KeyValueDb] implementation corresponding to the enum value.
  KeyValueDb get get {
    return KeyValueDbHive(_filename);
  }
}

/// Describe the [KeyValueDb] implementation corresponding to the enum value.
String get describe {
  return 'Hive';
}
