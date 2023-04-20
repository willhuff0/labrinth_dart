//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VersionsApi {
  VersionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add files to version
  ///
  /// Project files are attached. `.mrpack` and `.jar` files are accepted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the version
  ///
  /// * [Object] data:
  Future<Response> addFilesToVersionWithHttpInfo(
    Object id, {
    Object? data,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/version/{id}/file'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (data != null) {
      hasFields = true;
      mp.fields[r'data'] = parameterToString(data);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Add files to version
  ///
  /// Project files are attached. `.mrpack` and `.jar` files are accepted.
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the version
  ///
  /// * [Object] data:
  Future<void> addFilesToVersion(
    Object id, {
    Object? data,
  }) async {
    final response = await addFilesToVersionWithHttpInfo(
      id,
      data: data,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a version
  ///
  /// Project files are attached. `.mrpack` and `.jar` files are accepted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] data (required):
  Future<Response> createVersionWithHttpInfo(
    Object? data,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/version';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (data != null) {
      hasFields = true;
      mp.fields[r'data'] = parameterToString(data);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Create a version
  ///
  /// Project files are attached. `.mrpack` and `.jar` files are accepted.
  ///
  /// Parameters:
  ///
  /// * [Object] data (required):
  Future<Object?> createVersion(
    Object data,
  ) async {
    final response = await createVersionWithHttpInfo(
      data,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Delete a version
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the version
  Future<Response> deleteVersionWithHttpInfo(
    Object id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/version/{id}'.replaceAll('{id}', id.toString());

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

  /// Delete a version
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the version
  Future<void> deleteVersion(
    Object id,
  ) async {
    final response = await deleteVersionWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List project's versions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] loaders:
  ///   The types of loaders to filter for
  ///
  /// * [Object] gameVersions:
  ///   The game versions to filter for
  ///
  /// * [Object] featured:
  ///   Allows to filter for featured or non-featured versions only
  Future<Response> getProjectVersionsWithHttpInfo(
    Object idPipeSlug, {
    Object? loaders,
    Object? gameVersions,
    Object? featured,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/version'.replaceAll('{id|slug}', idPipeSlug.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (loaders != null) {
      queryParams.addAll(_queryParams('', 'loaders', loaders));
    }
    if (gameVersions != null) {
      queryParams.addAll(_queryParams('', 'game_versions', gameVersions));
    }
    if (featured != null) {
      queryParams.addAll(_queryParams('', 'featured', featured));
    }

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

  /// List project's versions
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] loaders:
  ///   The types of loaders to filter for
  ///
  /// * [Object] gameVersions:
  ///   The game versions to filter for
  ///
  /// * [Object] featured:
  ///   Allows to filter for featured or non-featured versions only
  Future<Object?> getProjectVersions(
    Object idPipeSlug, {
    Object? loaders,
    Object? gameVersions,
    Object? featured,
  }) async {
    final response = await getProjectVersionsWithHttpInfo(
      idPipeSlug,
      loaders: loaders,
      gameVersions: gameVersions,
      featured: featured,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get a version
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the version
  Future<Response> getVersionWithHttpInfo(
    Object id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/version/{id}'.replaceAll('{id}', id.toString());

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

  /// Get a version
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the version
  Future<Object?> getVersion(
    Object id,
  ) async {
    final response = await getVersionWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get multiple versions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] ids (required):
  ///   The IDs of the versions
  Future<Response> getVersionsWithHttpInfo(
    Object ids,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/versions';

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

  /// Get multiple versions
  ///
  /// Parameters:
  ///
  /// * [Object] ids (required):
  ///   The IDs of the versions
  Future<Object?> getVersions(
    Object ids,
  ) async {
    final response = await getVersionsWithHttpInfo(
      ids,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Modify a version
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the version
  ///
  /// * [Object] body:
  ///   Modified version fields
  Future<Response> modifyVersionWithHttpInfo(
    Object id, {
    Object? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/version/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Modify a version
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the version
  ///
  /// * [Object] body:
  ///   Modified version fields
  Future<void> modifyVersion(
    Object id, {
    Object? body,
  }) async {
    final response = await modifyVersionWithHttpInfo(
      id,
      body: body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Schedule a version
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the version
  ///
  /// * [ScheduleVersionRequest] scheduleVersionRequest:
  ///   Information about date and requested status
  Future<Response> scheduleVersionWithHttpInfo(
    Object id, {
    ScheduleVersionRequest? scheduleVersionRequest,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/version/{id}/schedule'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = scheduleVersionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

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

  /// Schedule a version
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the version
  ///
  /// * [ScheduleVersionRequest] scheduleVersionRequest:
  ///   Information about date and requested status
  Future<void> scheduleVersion(
    Object id, {
    ScheduleVersionRequest? scheduleVersionRequest,
  }) async {
    final response = await scheduleVersionWithHttpInfo(
      id,
      scheduleVersionRequest: scheduleVersionRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
