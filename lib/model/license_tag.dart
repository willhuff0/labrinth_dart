//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LicenseTag {
  /// Returns a new [LicenseTag] instance.
  LicenseTag({
    required this.short,
    required this.name,
  });

  /// The short identifier of the license
  Object? short;

  /// The full name of the license
  Object? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseTag &&
     other.short == short &&
     other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (short == null ? 0 : short!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'LicenseTag[short=$short, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.short != null) {
      json[r'short'] = this.short;
    } else {
      json[r'short'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [LicenseTag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseTag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicenseTag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicenseTag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicenseTag(
        short: mapValueOfType<Object>(json, r'short'),
        name: mapValueOfType<Object>(json, r'name'),
      );
    }
    return null;
  }

  static List<LicenseTag>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseTag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseTag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseTag> mapFromJson(dynamic json) {
    final map = <String, LicenseTag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseTag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseTag-objects as value to a dart map
  static Map<String, List<LicenseTag>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseTag>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseTag.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'short',
    'name',
  };
}

