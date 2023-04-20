//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatableReport {
  /// Returns a new [CreatableReport] instance.
  CreatableReport({
    required this.reportType,
    required this.itemId,
    required this.itemType,
    required this.body,
  });

  /// The type of the report being sent
  Object? reportType;

  /// The ID of the item (project, version, or user) being reported
  Object? itemId;

  /// The type of the item being reported
  CreatableReportItemTypeEnum? itemType;

  /// The extended explanation of the report
  Object? body;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatableReport && other.reportType == reportType && other.itemId == itemId && other.itemType == itemType && other.body == body;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (reportType == null ? 0 : reportType!.hashCode) + (itemId == null ? 0 : itemId!.hashCode) + (itemType == null ? 0 : itemType!.hashCode) + (body == null ? 0 : body!.hashCode);

  @override
  String toString() => 'CreatableReport[reportType=$reportType, itemId=$itemId, itemType=$itemType, body=$body]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.reportType != null) {
      json[r'report_type'] = this.reportType;
    } else {
      json[r'report_type'] = null;
    }
    if (this.itemId != null) {
      json[r'item_id'] = this.itemId;
    } else {
      json[r'item_id'] = null;
    }
    if (this.itemType != null) {
      json[r'item_type'] = this.itemType;
    } else {
      json[r'item_type'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    return json;
  }

  /// Returns a new [CreatableReport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatableReport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatableReport[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatableReport[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatableReport(
        reportType: mapValueOfType<Object>(json, r'report_type'),
        itemId: mapValueOfType<Object>(json, r'item_id'),
        itemType: CreatableReportItemTypeEnum.fromJson(json[r'item_type']),
        body: mapValueOfType<Object>(json, r'body'),
      );
    }
    return null;
  }

  static List<CreatableReport>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreatableReport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatableReport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatableReport> mapFromJson(dynamic json) {
    final map = <String, CreatableReport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatableReport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatableReport-objects as value to a dart map
  static Map<String, List<CreatableReport>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CreatableReport>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatableReport.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'report_type',
    'item_id',
    'item_type',
    'body',
  };
}

/// The type of the item being reported
class CreatableReportItemTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatableReportItemTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const project = CreatableReportItemTypeEnum._('project');
  static const user = CreatableReportItemTypeEnum._('user');
  static const version = CreatableReportItemTypeEnum._('version');

  /// List of all possible values in this [enum][CreatableReportItemTypeEnum].
  static const values = <CreatableReportItemTypeEnum>[
    project,
    user,
    version,
  ];

  static CreatableReportItemTypeEnum? fromJson(dynamic value) => CreatableReportItemTypeEnumTypeTransformer().decode(value);

  static List<CreatableReportItemTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreatableReportItemTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatableReportItemTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatableReportItemTypeEnum] to Object,
/// and [decode] dynamic data back to [CreatableReportItemTypeEnum].
class CreatableReportItemTypeEnumTypeTransformer {
  factory CreatableReportItemTypeEnumTypeTransformer() => _instance ??= const CreatableReportItemTypeEnumTypeTransformer._();

  const CreatableReportItemTypeEnumTypeTransformer._();

  Object encode(CreatableReportItemTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatableReportItemTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatableReportItemTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'project':
          return CreatableReportItemTypeEnum.project;
        case 'user':
          return CreatableReportItemTypeEnum.user;
        case 'version':
          return CreatableReportItemTypeEnum.version;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatableReportItemTypeEnumTypeTransformer] instance.
  static CreatableReportItemTypeEnumTypeTransformer? _instance;
}
