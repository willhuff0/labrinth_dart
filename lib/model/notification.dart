//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Notification {
  /// Returns a new [Notification] instance.
  Notification({
    required this.id,
    required this.userId,
    this.type,
    required this.title,
    required this.text,
    required this.link,
    required this.read,
    required this.created,
    required this.actions,
  });

  /// The id of the notification
  Object? id;

  /// The id of the user who received the notification
  Object? userId;

  /// The type of notification
  NotificationTypeEnum? type;

  /// The title of the notification
  Object? title;

  /// The body text of the notification
  Object? text;

  /// A link to the related project or version
  Object? link;

  /// Whether the notification has been read or not
  Object? read;

  /// The time at which the notification was created
  Object? created;

  /// A list of actions that can be performed
  Object? actions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Notification && other.id == id && other.userId == userId && other.type == type && other.title == title && other.text == text && other.link == link && other.read == read && other.created == created && other.actions == actions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) + (userId == null ? 0 : userId!.hashCode) + (type == null ? 0 : type!.hashCode) + (title == null ? 0 : title!.hashCode) + (text == null ? 0 : text!.hashCode) + (link == null ? 0 : link!.hashCode) + (read == null ? 0 : read!.hashCode) + (created == null ? 0 : created!.hashCode) + (actions == null ? 0 : actions!.hashCode);

  @override
  String toString() => 'Notification[id=$id, userId=$userId, type=$type, title=$title, text=$text, link=$link, read=$read, created=$created, actions=$actions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.read != null) {
      json[r'read'] = this.read;
    } else {
      json[r'read'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.actions != null) {
      json[r'actions'] = this.actions;
    } else {
      json[r'actions'] = null;
    }
    return json;
  }

  /// Returns a new [Notification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Notification? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Notification[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Notification[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Notification(
        id: mapValueOfType<Object>(json, r'id'),
        userId: mapValueOfType<Object>(json, r'user_id'),
        type: NotificationTypeEnum.fromJson(json[r'type']),
        title: mapValueOfType<Object>(json, r'title'),
        text: mapValueOfType<Object>(json, r'text'),
        link: mapValueOfType<Object>(json, r'link'),
        read: mapValueOfType<Object>(json, r'read'),
        created: mapValueOfType<Object>(json, r'created'),
        actions: mapValueOfType<Object>(json, r'actions'),
      );
    }
    return null;
  }

  static List<Notification>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Notification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Notification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Notification> mapFromJson(dynamic json) {
    final map = <String, Notification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Notification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Notification-objects as value to a dart map
  static Map<String, List<Notification>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Notification>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Notification.listFromJson(
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
    'id',
    'user_id',
    'title',
    'text',
    'link',
    'read',
    'created',
    'actions',
  };
}

/// The type of notification
class NotificationTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const projectUpdate = NotificationTypeEnum._('project_update');
  static const teamInvite = NotificationTypeEnum._('team_invite');
  static const statusUpdate = NotificationTypeEnum._('status_update');

  /// List of all possible values in this [enum][NotificationTypeEnum].
  static const values = <NotificationTypeEnum>[
    projectUpdate,
    teamInvite,
    statusUpdate,
  ];

  static NotificationTypeEnum? fromJson(dynamic value) => NotificationTypeEnumTypeTransformer().decode(value);

  static List<NotificationTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NotificationTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationTypeEnum] to Object,
/// and [decode] dynamic data back to [NotificationTypeEnum].
class NotificationTypeEnumTypeTransformer {
  factory NotificationTypeEnumTypeTransformer() => _instance ??= const NotificationTypeEnumTypeTransformer._();

  const NotificationTypeEnumTypeTransformer._();

  Object encode(NotificationTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'project_update':
          return NotificationTypeEnum.projectUpdate;
        case 'team_invite':
          return NotificationTypeEnum.teamInvite;
        case 'status_update':
          return NotificationTypeEnum.statusUpdate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationTypeEnumTypeTransformer] instance.
  static NotificationTypeEnumTypeTransformer? _instance;
}
