//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModifyUserRequestPayoutData {
  /// Returns a new [ModifyUserRequestPayoutData] instance.
  ModifyUserRequestPayoutData({
    this.balance,
    this.payoutWallet,
    this.payoutWalletType,
    this.payoutAddress,
  });

  /// The payout balance available for the user to withdraw (note, you cannot modify this in a PATCH request)
  Object? balance;

  /// The wallet that the user has selected
  ModifyUserRequestPayoutDataPayoutWalletEnum? payoutWallet;

  /// The type of the user's wallet
  ModifyUserRequestPayoutDataPayoutWalletTypeEnum? payoutWalletType;

  /// The user's payout address
  Object? payoutAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModifyUserRequestPayoutData && other.balance == balance && other.payoutWallet == payoutWallet && other.payoutWalletType == payoutWalletType && other.payoutAddress == payoutAddress;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (balance == null ? 0 : balance!.hashCode) + (payoutWallet == null ? 0 : payoutWallet!.hashCode) + (payoutWalletType == null ? 0 : payoutWalletType!.hashCode) + (payoutAddress == null ? 0 : payoutAddress!.hashCode);

  @override
  String toString() => 'ModifyUserRequestPayoutData[balance=$balance, payoutWallet=$payoutWallet, payoutWalletType=$payoutWalletType, payoutAddress=$payoutAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balance != null) {
      json[r'balance'] = this.balance;
    } else {
      json[r'balance'] = null;
    }
    if (this.payoutWallet != null) {
      json[r'payout_wallet'] = this.payoutWallet;
    } else {
      json[r'payout_wallet'] = null;
    }
    if (this.payoutWalletType != null) {
      json[r'payout_wallet_type'] = this.payoutWalletType;
    } else {
      json[r'payout_wallet_type'] = null;
    }
    if (this.payoutAddress != null) {
      json[r'payout_address'] = this.payoutAddress;
    } else {
      json[r'payout_address'] = null;
    }
    return json;
  }

  /// Returns a new [ModifyUserRequestPayoutData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModifyUserRequestPayoutData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModifyUserRequestPayoutData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModifyUserRequestPayoutData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModifyUserRequestPayoutData(
        balance: mapValueOfType<Object>(json, r'balance'),
        payoutWallet: ModifyUserRequestPayoutDataPayoutWalletEnum.fromJson(json[r'payout_wallet']),
        payoutWalletType: ModifyUserRequestPayoutDataPayoutWalletTypeEnum.fromJson(json[r'payout_wallet_type']),
        payoutAddress: mapValueOfType<Object>(json, r'payout_address'),
      );
    }
    return null;
  }

  static List<ModifyUserRequestPayoutData>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ModifyUserRequestPayoutData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModifyUserRequestPayoutData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModifyUserRequestPayoutData> mapFromJson(dynamic json) {
    final map = <String, ModifyUserRequestPayoutData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModifyUserRequestPayoutData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModifyUserRequestPayoutData-objects as value to a dart map
  static Map<String, List<ModifyUserRequestPayoutData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ModifyUserRequestPayoutData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModifyUserRequestPayoutData.listFromJson(
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
  static const requiredKeys = <String>{};
}

/// The wallet that the user has selected
class ModifyUserRequestPayoutDataPayoutWalletEnum {
  /// Instantiate a new enum with the provided [value].
  const ModifyUserRequestPayoutDataPayoutWalletEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const paypal = ModifyUserRequestPayoutDataPayoutWalletEnum._('paypal');
  static const venmo = ModifyUserRequestPayoutDataPayoutWalletEnum._('venmo');

  /// List of all possible values in this [enum][ModifyUserRequestPayoutDataPayoutWalletEnum].
  static const values = <ModifyUserRequestPayoutDataPayoutWalletEnum>[
    paypal,
    venmo,
  ];

  static ModifyUserRequestPayoutDataPayoutWalletEnum? fromJson(dynamic value) => ModifyUserRequestPayoutDataPayoutWalletEnumTypeTransformer().decode(value);

  static List<ModifyUserRequestPayoutDataPayoutWalletEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ModifyUserRequestPayoutDataPayoutWalletEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModifyUserRequestPayoutDataPayoutWalletEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ModifyUserRequestPayoutDataPayoutWalletEnum] to Object,
/// and [decode] dynamic data back to [ModifyUserRequestPayoutDataPayoutWalletEnum].
class ModifyUserRequestPayoutDataPayoutWalletEnumTypeTransformer {
  factory ModifyUserRequestPayoutDataPayoutWalletEnumTypeTransformer() => _instance ??= const ModifyUserRequestPayoutDataPayoutWalletEnumTypeTransformer._();

  const ModifyUserRequestPayoutDataPayoutWalletEnumTypeTransformer._();

  Object encode(ModifyUserRequestPayoutDataPayoutWalletEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ModifyUserRequestPayoutDataPayoutWalletEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModifyUserRequestPayoutDataPayoutWalletEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'paypal':
          return ModifyUserRequestPayoutDataPayoutWalletEnum.paypal;
        case 'venmo':
          return ModifyUserRequestPayoutDataPayoutWalletEnum.venmo;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModifyUserRequestPayoutDataPayoutWalletEnumTypeTransformer] instance.
  static ModifyUserRequestPayoutDataPayoutWalletEnumTypeTransformer? _instance;
}

/// The type of the user's wallet
class ModifyUserRequestPayoutDataPayoutWalletTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ModifyUserRequestPayoutDataPayoutWalletTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const email = ModifyUserRequestPayoutDataPayoutWalletTypeEnum._('email');
  static const phone = ModifyUserRequestPayoutDataPayoutWalletTypeEnum._('phone');
  static const userHandle = ModifyUserRequestPayoutDataPayoutWalletTypeEnum._('user_handle');

  /// List of all possible values in this [enum][ModifyUserRequestPayoutDataPayoutWalletTypeEnum].
  static const values = <ModifyUserRequestPayoutDataPayoutWalletTypeEnum>[
    email,
    phone,
    userHandle,
  ];

  static ModifyUserRequestPayoutDataPayoutWalletTypeEnum? fromJson(dynamic value) => ModifyUserRequestPayoutDataPayoutWalletTypeEnumTypeTransformer().decode(value);

  static List<ModifyUserRequestPayoutDataPayoutWalletTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ModifyUserRequestPayoutDataPayoutWalletTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModifyUserRequestPayoutDataPayoutWalletTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ModifyUserRequestPayoutDataPayoutWalletTypeEnum] to Object,
/// and [decode] dynamic data back to [ModifyUserRequestPayoutDataPayoutWalletTypeEnum].
class ModifyUserRequestPayoutDataPayoutWalletTypeEnumTypeTransformer {
  factory ModifyUserRequestPayoutDataPayoutWalletTypeEnumTypeTransformer() => _instance ??= const ModifyUserRequestPayoutDataPayoutWalletTypeEnumTypeTransformer._();

  const ModifyUserRequestPayoutDataPayoutWalletTypeEnumTypeTransformer._();

  Object encode(ModifyUserRequestPayoutDataPayoutWalletTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ModifyUserRequestPayoutDataPayoutWalletTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModifyUserRequestPayoutDataPayoutWalletTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'email':
          return ModifyUserRequestPayoutDataPayoutWalletTypeEnum.email;
        case 'phone':
          return ModifyUserRequestPayoutDataPayoutWalletTypeEnum.phone;
        case 'user_handle':
          return ModifyUserRequestPayoutDataPayoutWalletTypeEnum.userHandle;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModifyUserRequestPayoutDataPayoutWalletTypeEnumTypeTransformer] instance.
  static ModifyUserRequestPayoutDataPayoutWalletTypeEnumTypeTransformer? _instance;
}
