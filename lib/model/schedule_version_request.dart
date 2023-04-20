//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScheduleVersionRequest {
  /// Returns a new [ScheduleVersionRequest] instance.
  ScheduleVersionRequest({
    required this.time,
    required this.requestedStatus,
  });

  Object? time;

  /// The requested status when scheduling the version for release
  ScheduleVersionRequestRequestedStatusEnum? requestedStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduleVersionRequest && other.time == time && other.requestedStatus == requestedStatus;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (time == null ? 0 : time!.hashCode) + (requestedStatus == null ? 0 : requestedStatus!.hashCode);

  @override
  String toString() => 'ScheduleVersionRequest[time=$time, requestedStatus=$requestedStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.requestedStatus != null) {
      json[r'requested_status'] = this.requestedStatus;
    } else {
      json[r'requested_status'] = null;
    }
    return json;
  }

  /// Returns a new [ScheduleVersionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScheduleVersionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScheduleVersionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScheduleVersionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScheduleVersionRequest(
        time: mapValueOfType<Object>(json, r'time'),
        requestedStatus: ScheduleVersionRequestRequestedStatusEnum.fromJson(json[r'requested_status']),
      );
    }
    return null;
  }

  static List<ScheduleVersionRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ScheduleVersionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduleVersionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScheduleVersionRequest> mapFromJson(dynamic json) {
    final map = <String, ScheduleVersionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduleVersionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScheduleVersionRequest-objects as value to a dart map
  static Map<String, List<ScheduleVersionRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ScheduleVersionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduleVersionRequest.listFromJson(
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
    'time',
    'requested_status',
  };
}

/// The requested status when scheduling the version for release
class ScheduleVersionRequestRequestedStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduleVersionRequestRequestedStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const listed = ScheduleVersionRequestRequestedStatusEnum._('listed');
  static const archived = ScheduleVersionRequestRequestedStatusEnum._('archived');
  static const draft = ScheduleVersionRequestRequestedStatusEnum._('draft');
  static const unlisted = ScheduleVersionRequestRequestedStatusEnum._('unlisted');

  /// List of all possible values in this [enum][ScheduleVersionRequestRequestedStatusEnum].
  static const values = <ScheduleVersionRequestRequestedStatusEnum>[
    listed,
    archived,
    draft,
    unlisted,
  ];

  static ScheduleVersionRequestRequestedStatusEnum? fromJson(dynamic value) => ScheduleVersionRequestRequestedStatusEnumTypeTransformer().decode(value);

  static List<ScheduleVersionRequestRequestedStatusEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ScheduleVersionRequestRequestedStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduleVersionRequestRequestedStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduleVersionRequestRequestedStatusEnum] to Object,
/// and [decode] dynamic data back to [ScheduleVersionRequestRequestedStatusEnum].
class ScheduleVersionRequestRequestedStatusEnumTypeTransformer {
  factory ScheduleVersionRequestRequestedStatusEnumTypeTransformer() => _instance ??= const ScheduleVersionRequestRequestedStatusEnumTypeTransformer._();

  const ScheduleVersionRequestRequestedStatusEnumTypeTransformer._();

  Object encode(ScheduleVersionRequestRequestedStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduleVersionRequestRequestedStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduleVersionRequestRequestedStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'listed':
          return ScheduleVersionRequestRequestedStatusEnum.listed;
        case 'archived':
          return ScheduleVersionRequestRequestedStatusEnum.archived;
        case 'draft':
          return ScheduleVersionRequestRequestedStatusEnum.draft;
        case 'unlisted':
          return ScheduleVersionRequestRequestedStatusEnum.unlisted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduleVersionRequestRequestedStatusEnumTypeTransformer] instance.
  static ScheduleVersionRequestRequestedStatusEnumTypeTransformer? _instance;
}
