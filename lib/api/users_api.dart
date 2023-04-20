//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UsersApi {
  UsersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Change user's avatar
  ///
  /// By default, Modrinth uses a user's GitHub icon. This route allows it to be changed to a custom one. The new avatar may be up to 2MiB in size.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Response> changeUserIconWithHttpInfo(Object idPipeUsername,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id|username}/icon'
      .replaceAll('{id|username}', idPipeUsername.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('PATCH', Uri.parse(path));
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Change user's avatar
  ///
  /// By default, Modrinth uses a user's GitHub icon. This route allows it to be changed to a custom one. The new avatar may be up to 2MiB in size.
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<void> changeUserIcon(Object idPipeUsername,) async {
    final response = await changeUserIconWithHttpInfo(idPipeUsername,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Response> deleteUserWithHttpInfo(Object idPipeUsername,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id|username}'
      .replaceAll('{id|username}', idPipeUsername.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a user
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<void> deleteUser(Object idPipeUsername,) async {
    final response = await deleteUserWithHttpInfo(idPipeUsername,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get user's followed projects
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Response> getFollowedProjectsWithHttpInfo(Object idPipeUsername,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id|username}/follows'
      .replaceAll('{id|username}', idPipeUsername.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user's followed projects
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Object?> getFollowedProjects(Object idPipeUsername,) async {
    final response = await getFollowedProjectsWithHttpInfo(idPipeUsername,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get user's notifications
  ///
  /// Notifications can be project updates or team invites
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Response> getNotificationsWithHttpInfo(Object idPipeUsername,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id|username}/notifications'
      .replaceAll('{id|username}', idPipeUsername.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user's notifications
  ///
  /// Notifications can be project updates or team invites
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Object?> getNotifications(Object idPipeUsername,) async {
    final response = await getNotificationsWithHttpInfo(idPipeUsername,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get user's payout history
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Response> getPayoutHistoryWithHttpInfo(Object idPipeUsername,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id|username}/payouts'
      .replaceAll('{id|username}', idPipeUsername.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user's payout history
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<GetPayoutHistory200Response?> getPayoutHistory(Object idPipeUsername,) async {
    final response = await getPayoutHistoryWithHttpInfo(idPipeUsername,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetPayoutHistory200Response',) as GetPayoutHistory200Response;
    
    }
    return null;
  }

  /// Get a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Response> getUserWithHttpInfo(Object idPipeUsername,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id|username}'
      .replaceAll('{id|username}', idPipeUsername.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a user
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Object?> getUser(Object idPipeUsername,) async {
    final response = await getUserWithHttpInfo(idPipeUsername,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get user from authorization header
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUserFromAuthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user from authorization header
  Future<Object?> getUserFromAuth() async {
    final response = await getUserFromAuthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get user's projects
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Response> getUserProjectsWithHttpInfo(Object idPipeUsername,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id|username}/projects'
      .replaceAll('{id|username}', idPipeUsername.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get user's projects
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Object?> getUserProjects(Object idPipeUsername,) async {
    final response = await getUserProjectsWithHttpInfo(idPipeUsername,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get multiple users
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] ids (required):
  ///   The IDs of the users
  Future<Response> getUsersWithHttpInfo(Object ids,) async {
    // ignore: prefer_const_declarations
    final path = r'/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ids', ids));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get multiple users
  ///
  /// Parameters:
  ///
  /// * [Object] ids (required):
  ///   The IDs of the users
  Future<Object?> getUsers(Object ids,) async {
    final response = await getUsersWithHttpInfo(ids,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Modify a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  ///
  /// * [ModifyUserRequest] modifyUserRequest:
  ///   Modified user fields
  Future<Response> modifyUserWithHttpInfo(Object idPipeUsername, { ModifyUserRequest? modifyUserRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id|username}'
      .replaceAll('{id|username}', idPipeUsername.toString());

    // ignore: prefer_final_locals
    Object? postBody = modifyUserRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Modify a user
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  ///
  /// * [ModifyUserRequest] modifyUserRequest:
  ///   Modified user fields
  Future<void> modifyUser(Object idPipeUsername, { ModifyUserRequest? modifyUserRequest, }) async {
    final response = await modifyUserWithHttpInfo(idPipeUsername,  modifyUserRequest: modifyUserRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Withdraw payout balance to PayPal or Venmo
  ///
  /// Warning: certain amounts get withheld for fees. Please do not call this API endpoint without first acknowledging the warnings on the corresponding frontend page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  ///
  /// * [Object] amount (required):
  ///   Amount to withdraw
  Future<Response> withdrawPayoutWithHttpInfo(Object idPipeUsername, Object amount,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id|username}/payouts'
      .replaceAll('{id|username}', idPipeUsername.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'amount', amount));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Withdraw payout balance to PayPal or Venmo
  ///
  /// Warning: certain amounts get withheld for fees. Please do not call this API endpoint without first acknowledging the warnings on the corresponding frontend page.
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  ///
  /// * [Object] amount (required):
  ///   Amount to withdraw
  Future<void> withdrawPayout(Object idPipeUsername, Object amount,) async {
    final response = await withdrawPayoutWithHttpInfo(idPipeUsername, amount,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
