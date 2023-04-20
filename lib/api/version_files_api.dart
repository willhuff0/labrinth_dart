//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VersionFilesApi {
  VersionFilesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a file from its hash
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] hash (required):
  ///   The hash of the file, considering its byte content, and encoded in hexadecimal
  ///
  /// * [Object] algorithm (required):
  ///   The algorithm of the hash
  ///
  /// * [Object] versionId:
  ///   Version ID to delete the version from, if multiple files of the same hash exist
  Future<Response> deleteFileFromHashWithHttpInfo(Object hash, Object algorithm, { Object? versionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/version_file/{hash}'
      .replaceAll('{hash}', hash.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'algorithm', algorithm));
    if (versionId != null) {
      queryParams.addAll(_queryParams('', 'version_id', versionId));
    }

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

  /// Delete a file from its hash
  ///
  /// Parameters:
  ///
  /// * [Object] hash (required):
  ///   The hash of the file, considering its byte content, and encoded in hexadecimal
  ///
  /// * [Object] algorithm (required):
  ///   The algorithm of the hash
  ///
  /// * [Object] versionId:
  ///   Version ID to delete the version from, if multiple files of the same hash exist
  Future<void> deleteFileFromHash(Object hash, Object algorithm, { Object? versionId, }) async {
    final response = await deleteFileFromHashWithHttpInfo(hash, algorithm,  versionId: versionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Latest version of a project from a hash, loader(s), and game version(s)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] hash (required):
  ///   The hash of the file, considering its byte content, and encoded in hexadecimal
  ///
  /// * [Object] algorithm (required):
  ///   The algorithm of the hash
  ///
  /// * [GetLatestVersionFromHashRequest] getLatestVersionFromHashRequest:
  ///   Parameters of the updated version requested
  Future<Response> getLatestVersionFromHashWithHttpInfo(Object hash, Object algorithm, { GetLatestVersionFromHashRequest? getLatestVersionFromHashRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/version_file/{hash}/update'
      .replaceAll('{hash}', hash.toString());

    // ignore: prefer_final_locals
    Object? postBody = getLatestVersionFromHashRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'algorithm', algorithm));

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

  /// Latest version of a project from a hash, loader(s), and game version(s)
  ///
  /// Parameters:
  ///
  /// * [Object] hash (required):
  ///   The hash of the file, considering its byte content, and encoded in hexadecimal
  ///
  /// * [Object] algorithm (required):
  ///   The algorithm of the hash
  ///
  /// * [GetLatestVersionFromHashRequest] getLatestVersionFromHashRequest:
  ///   Parameters of the updated version requested
  Future<Object?> getLatestVersionFromHash(Object hash, Object algorithm, { GetLatestVersionFromHashRequest? getLatestVersionFromHashRequest, }) async {
    final response = await getLatestVersionFromHashWithHttpInfo(hash, algorithm,  getLatestVersionFromHashRequest: getLatestVersionFromHashRequest, );
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

  /// Latest versions of multiple project from hashes, loader(s), and game version(s)
  ///
  /// This is the same as [`/version_file/{hash}/update`](#operation/getLatestVersionFromHash) except it accepts multiple hashes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GetLatestVersionsFromHashesRequest] getLatestVersionsFromHashesRequest:
  ///   Parameters of the updated version requested
  Future<Response> getLatestVersionsFromHashesWithHttpInfo({ GetLatestVersionsFromHashesRequest? getLatestVersionsFromHashesRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/version_files/update';

    // ignore: prefer_final_locals
    Object? postBody = getLatestVersionsFromHashesRequest;

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

  /// Latest versions of multiple project from hashes, loader(s), and game version(s)
  ///
  /// This is the same as [`/version_file/{hash}/update`](#operation/getLatestVersionFromHash) except it accepts multiple hashes.
  ///
  /// Parameters:
  ///
  /// * [GetLatestVersionsFromHashesRequest] getLatestVersionsFromHashesRequest:
  ///   Parameters of the updated version requested
  Future<VersionsFromHashes200Response?> getLatestVersionsFromHashes({ GetLatestVersionsFromHashesRequest? getLatestVersionsFromHashesRequest, }) async {
    final response = await getLatestVersionsFromHashesWithHttpInfo( getLatestVersionsFromHashesRequest: getLatestVersionsFromHashesRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VersionsFromHashes200Response',) as VersionsFromHashes200Response;
    
    }
    return null;
  }

  /// Get version from hash
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] hash (required):
  ///   The hash of the file, considering its byte content, and encoded in hexadecimal
  ///
  /// * [Object] algorithm (required):
  ///   The algorithm of the hash
  ///
  /// * [Object] multiple:
  ///   Whether to return multiple results when looking for this hash
  Future<Response> versionFromHashWithHttpInfo(Object hash, Object algorithm, { Object? multiple, }) async {
    // ignore: prefer_const_declarations
    final path = r'/version_file/{hash}'
      .replaceAll('{hash}', hash.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'algorithm', algorithm));
    if (multiple != null) {
      queryParams.addAll(_queryParams('', 'multiple', multiple));
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

  /// Get version from hash
  ///
  /// Parameters:
  ///
  /// * [Object] hash (required):
  ///   The hash of the file, considering its byte content, and encoded in hexadecimal
  ///
  /// * [Object] algorithm (required):
  ///   The algorithm of the hash
  ///
  /// * [Object] multiple:
  ///   Whether to return multiple results when looking for this hash
  Future<Object?> versionFromHash(Object hash, Object algorithm, { Object? multiple, }) async {
    final response = await versionFromHashWithHttpInfo(hash, algorithm,  multiple: multiple, );
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

  /// Get versions from hashes
  ///
  /// This is the same as [`/version_file/{hash}`](#operation/versionFromHash) except it accepts multiple hashes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VersionsFromHashesRequest] versionsFromHashesRequest:
  ///   Hashes and algorithm of the versions requested
  Future<Response> versionsFromHashesWithHttpInfo({ VersionsFromHashesRequest? versionsFromHashesRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/version_files';

    // ignore: prefer_final_locals
    Object? postBody = versionsFromHashesRequest;

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

  /// Get versions from hashes
  ///
  /// This is the same as [`/version_file/{hash}`](#operation/versionFromHash) except it accepts multiple hashes.
  ///
  /// Parameters:
  ///
  /// * [VersionsFromHashesRequest] versionsFromHashesRequest:
  ///   Hashes and algorithm of the versions requested
  Future<VersionsFromHashes200Response?> versionsFromHashes({ VersionsFromHashesRequest? versionsFromHashesRequest, }) async {
    final response = await versionsFromHashesWithHttpInfo( versionsFromHashesRequest: versionsFromHashesRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VersionsFromHashes200Response',) as VersionsFromHashes200Response;
    
    }
    return null;
  }
}
