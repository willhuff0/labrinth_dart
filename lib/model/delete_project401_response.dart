//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteProject401Response {
  /// Returns a new [DeleteProject401Response] instance.
  DeleteProject401Response({
    required this.error,
    required this.description,
  });

  /// The name of the error
  Object? error;

  /// The contents of the error
  Object? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteProject401Response &&
     other.error == error &&
     other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'DeleteProject401Response[error=$error, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [DeleteProject401Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteProject401Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteProject401Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteProject401Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteProject401Response(
        error: mapValueOfType<Object>(json, r'error'),
        description: mapValueOfType<Object>(json, r'description'),
      );
    }
    return null;
  }

  static List<DeleteProject401Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteProject401Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteProject401Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteProject401Response> mapFromJson(dynamic json) {
    final map = <String, DeleteProject401Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteProject401Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteProject401Response-objects as value to a dart map
  static Map<String, List<DeleteProject401Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteProject401Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteProject401Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'error',
    'description',
  };
}

