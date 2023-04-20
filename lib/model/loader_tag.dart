//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoaderTag {
  /// Returns a new [LoaderTag] instance.
  LoaderTag({
    required this.icon,
    required this.name,
    required this.supportedProjectTypes,
  });

  /// The SVG icon of a loader
  Object? icon;

  /// The name of the loader
  Object? name;

  /// The project types that this loader is applicable to
  Object? supportedProjectTypes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoaderTag &&
     other.icon == icon &&
     other.name == name &&
     other.supportedProjectTypes == supportedProjectTypes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (icon == null ? 0 : icon!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (supportedProjectTypes == null ? 0 : supportedProjectTypes!.hashCode);

  @override
  String toString() => 'LoaderTag[icon=$icon, name=$name, supportedProjectTypes=$supportedProjectTypes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.supportedProjectTypes != null) {
      json[r'supported_project_types'] = this.supportedProjectTypes;
    } else {
      json[r'supported_project_types'] = null;
    }
    return json;
  }

  /// Returns a new [LoaderTag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoaderTag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoaderTag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoaderTag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoaderTag(
        icon: mapValueOfType<Object>(json, r'icon'),
        name: mapValueOfType<Object>(json, r'name'),
        supportedProjectTypes: mapValueOfType<Object>(json, r'supported_project_types'),
      );
    }
    return null;
  }

  static List<LoaderTag>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoaderTag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoaderTag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoaderTag> mapFromJson(dynamic json) {
    final map = <String, LoaderTag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoaderTag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoaderTag-objects as value to a dart map
  static Map<String, List<LoaderTag>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoaderTag>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoaderTag.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'icon',
    'name',
    'supported_project_types',
  };
}

