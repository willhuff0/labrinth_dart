//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CategoryTag {
  /// Returns a new [CategoryTag] instance.
  CategoryTag({
    required this.icon,
    required this.name,
    required this.projectType,
    required this.header,
  });

  /// The SVG icon of a category
  Object? icon;

  /// The name of the category
  Object? name;

  /// The project type this category is applicable to
  Object? projectType;

  /// The header under which the category should go
  Object? header;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CategoryTag &&
     other.icon == icon &&
     other.name == name &&
     other.projectType == projectType &&
     other.header == header;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (icon == null ? 0 : icon!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (projectType == null ? 0 : projectType!.hashCode) +
    (header == null ? 0 : header!.hashCode);

  @override
  String toString() => 'CategoryTag[icon=$icon, name=$name, projectType=$projectType, header=$header]';

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
    if (this.projectType != null) {
      json[r'project_type'] = this.projectType;
    } else {
      json[r'project_type'] = null;
    }
    if (this.header != null) {
      json[r'header'] = this.header;
    } else {
      json[r'header'] = null;
    }
    return json;
  }

  /// Returns a new [CategoryTag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CategoryTag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CategoryTag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CategoryTag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CategoryTag(
        icon: mapValueOfType<Object>(json, r'icon'),
        name: mapValueOfType<Object>(json, r'name'),
        projectType: mapValueOfType<Object>(json, r'project_type'),
        header: mapValueOfType<Object>(json, r'header'),
      );
    }
    return null;
  }

  static List<CategoryTag>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CategoryTag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CategoryTag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CategoryTag> mapFromJson(dynamic json) {
    final map = <String, CategoryTag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CategoryTag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CategoryTag-objects as value to a dart map
  static Map<String, List<CategoryTag>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CategoryTag>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CategoryTag.listFromJson(entry.value, growable: growable,);
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
    'project_type',
    'header',
  };
}

