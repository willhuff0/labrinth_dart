//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScheduleProjectRequest {
  /// Returns a new [ScheduleProjectRequest] instance.
  ScheduleProjectRequest({
    required this.time,
    required this.requestedStatus,
  });

  Object? time;

  /// The requested status when scheduling the project for release
  ScheduleProjectRequestRequestedStatusEnum? requestedStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduleProjectRequest && other.time == time && other.requestedStatus == requestedStatus;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (time == null ? 0 : time!.hashCode) + (requestedStatus == null ? 0 : requestedStatus!.hashCode);

  @override
  String toString() => 'ScheduleProjectRequest[time=$time, requestedStatus=$requestedStatus]';

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

  /// Returns a new [ScheduleProjectRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScheduleProjectRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScheduleProjectRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScheduleProjectRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScheduleProjectRequest(
        time: mapValueOfType<Object>(json, r'time'),
        requestedStatus: ScheduleProjectRequestRequestedStatusEnum.fromJson(json[r'requested_status']),
      );
    }
    return null;
  }

  static List<ScheduleProjectRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ScheduleProjectRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduleProjectRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScheduleProjectRequest> mapFromJson(dynamic json) {
    final map = <String, ScheduleProjectRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduleProjectRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScheduleProjectRequest-objects as value to a dart map
  static Map<String, List<ScheduleProjectRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ScheduleProjectRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduleProjectRequest.listFromJson(
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

/// The requested status when scheduling the project for release
class ScheduleProjectRequestRequestedStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ScheduleProjectRequestRequestedStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const approved = ScheduleProjectRequestRequestedStatusEnum._('approved');
  static const archived = ScheduleProjectRequestRequestedStatusEnum._('archived');
  static const unlisted = ScheduleProjectRequestRequestedStatusEnum._('unlisted');
  static const private = ScheduleProjectRequestRequestedStatusEnum._('private');
  static const draft = ScheduleProjectRequestRequestedStatusEnum._('draft');

  /// List of all possible values in this [enum][ScheduleProjectRequestRequestedStatusEnum].
  static const values = <ScheduleProjectRequestRequestedStatusEnum>[
    approved,
    archived,
    unlisted,
    private,
    draft,
  ];

  static ScheduleProjectRequestRequestedStatusEnum? fromJson(dynamic value) => ScheduleProjectRequestRequestedStatusEnumTypeTransformer().decode(value);

  static List<ScheduleProjectRequestRequestedStatusEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ScheduleProjectRequestRequestedStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduleProjectRequestRequestedStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduleProjectRequestRequestedStatusEnum] to Object,
/// and [decode] dynamic data back to [ScheduleProjectRequestRequestedStatusEnum].
class ScheduleProjectRequestRequestedStatusEnumTypeTransformer {
  factory ScheduleProjectRequestRequestedStatusEnumTypeTransformer() => _instance ??= const ScheduleProjectRequestRequestedStatusEnumTypeTransformer._();

  const ScheduleProjectRequestRequestedStatusEnumTypeTransformer._();

  Object encode(ScheduleProjectRequestRequestedStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduleProjectRequestRequestedStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduleProjectRequestRequestedStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'approved':
          return ScheduleProjectRequestRequestedStatusEnum.approved;
        case 'archived':
          return ScheduleProjectRequestRequestedStatusEnum.archived;
        case 'unlisted':
          return ScheduleProjectRequestRequestedStatusEnum.unlisted;
        case 'private':
          return ScheduleProjectRequestRequestedStatusEnum.private;
        case 'draft':
          return ScheduleProjectRequestRequestedStatusEnum.draft;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduleProjectRequestRequestedStatusEnumTypeTransformer] instance.
  static ScheduleProjectRequestRequestedStatusEnumTypeTransformer? _instance;
}
