//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectsApi {
  ProjectsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a gallery image
  ///
  /// Modrinth allows you to upload files of up to 5MiB to a project's gallery.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] ext (required):
  ///   Image extension
  ///
  /// * [Object] featured (required):
  ///   Whether an image is featured
  ///
  /// * [Object] title:
  ///   Title of the image
  ///
  /// * [Object] description:
  ///   Description of the image
  ///
  /// * [Object] ordering:
  ///   Ordering of the image
  ///
  /// * [Object] body:
  ///   New gallery image
  Future<Response> addGalleryImageWithHttpInfo(
    Object idPipeSlug,
    Object ext,
    Object featured, {
    Object? title,
    Object? description,
    Object? ordering,
    Object? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/gallery'.replaceAll('{id|slug}', idPipeSlug.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'ext', ext));
    queryParams.addAll(_queryParams('', 'featured', featured));
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }

    const contentTypes = <String>['image/*'];

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

  /// Add a gallery image
  ///
  /// Modrinth allows you to upload files of up to 5MiB to a project's gallery.
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] ext (required):
  ///   Image extension
  ///
  /// * [Object] featured (required):
  ///   Whether an image is featured
  ///
  /// * [Object] title:
  ///   Title of the image
  ///
  /// * [Object] description:
  ///   Description of the image
  ///
  /// * [Object] ordering:
  ///   Ordering of the image
  ///
  /// * [Object] body:
  ///   New gallery image
  Future<void> addGalleryImage(
    Object idPipeSlug,
    Object ext,
    Object featured, {
    Object? title,
    Object? description,
    Object? ordering,
    Object? body,
  }) async {
    final response = await addGalleryImageWithHttpInfo(
      idPipeSlug,
      ext,
      featured,
      title: title,
      description: description,
      ordering: ordering,
      body: body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Change project's icon
  ///
  /// The new icon may be up to 256KiB in size.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] ext (required):
  ///   Image extension
  ///
  /// * [Object] body:
  Future<Response> changeProjectIconWithHttpInfo(
    Object idPipeSlug,
    Object ext, {
    Object? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/icon'.replaceAll('{id|slug}', idPipeSlug.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'ext', ext));

    const contentTypes = <String>['image/*'];

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

  /// Change project's icon
  ///
  /// The new icon may be up to 256KiB in size.
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] ext (required):
  ///   Image extension
  ///
  /// * [Object] body:
  Future<void> changeProjectIcon(
    Object idPipeSlug,
    Object ext, {
    Object? body,
  }) async {
    final response = await changeProjectIconWithHttpInfo(
      idPipeSlug,
      ext,
      body: body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Check project slug/ID validity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<Response> checkProjectValidityWithHttpInfo(
    Object idPipeSlug,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/check'.replaceAll('{id|slug}', idPipeSlug.toString());

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

  /// Check project slug/ID validity
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<CheckProjectValidity200Response?> checkProjectValidity(
    Object idPipeSlug,
  ) async {
    final response = await checkProjectValidityWithHttpInfo(
      idPipeSlug,
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
        'CheckProjectValidity200Response',
      ) as CheckProjectValidity200Response;
    }
    return null;
  }

  /// Create a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] data (required):
  ///
  /// * [Object] icon:
  ///   Project icon file
  Future<Response> createProjectWithHttpInfo(
    Object? data, {
    Object? icon,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/project';

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
    if (icon != null) {
      hasFields = true;
      mp.fields[r'icon'] = parameterToString(icon);
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

  /// Create a project
  ///
  /// Parameters:
  ///
  /// * [Object] data (required):
  ///
  /// * [Object] icon:
  ///   Project icon file
  Future<Object?> createProject(
    Object data, {
    Object? icon,
  }) async {
    final response = await createProjectWithHttpInfo(
      data,
      icon: icon,
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

  /// Delete a gallery image
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] url (required):
  ///   URL link of the image to delete
  Future<Response> deleteGalleryImageWithHttpInfo(
    Object idPipeSlug,
    Object url,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/gallery'.replaceAll('{id|slug}', idPipeSlug.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'url', url));

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

  /// Delete a gallery image
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] url (required):
  ///   URL link of the image to delete
  Future<void> deleteGalleryImage(
    Object idPipeSlug,
    Object url,
  ) async {
    final response = await deleteGalleryImageWithHttpInfo(
      idPipeSlug,
      url,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<Response> deleteProjectWithHttpInfo(
    Object idPipeSlug,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}'.replaceAll('{id|slug}', idPipeSlug.toString());

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

  /// Delete a project
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<void> deleteProject(
    Object idPipeSlug,
  ) async {
    final response = await deleteProjectWithHttpInfo(
      idPipeSlug,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete project's icon
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<Response> deleteProjectIconWithHttpInfo(
    Object idPipeSlug,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/icon'.replaceAll('{id|slug}', idPipeSlug.toString());

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

  /// Delete project's icon
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<void> deleteProjectIcon(
    Object idPipeSlug,
  ) async {
    final response = await deleteProjectIconWithHttpInfo(
      idPipeSlug,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Follow a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<Response> followProjectWithHttpInfo(
    Object idPipeSlug,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/follow'.replaceAll('{id|slug}', idPipeSlug.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Follow a project
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<void> followProject(
    Object idPipeSlug,
  ) async {
    final response = await followProjectWithHttpInfo(
      idPipeSlug,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all of a project's dependencies
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<Response> getDependenciesWithHttpInfo(
    Object idPipeSlug,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/dependencies'.replaceAll('{id|slug}', idPipeSlug.toString());

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

  /// Get all of a project's dependencies
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<GetDependencies200Response?> getDependencies(
    Object idPipeSlug,
  ) async {
    final response = await getDependenciesWithHttpInfo(
      idPipeSlug,
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
        'GetDependencies200Response',
      ) as GetDependencies200Response;
    }
    return null;
  }

  /// Get a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<Response> getProjectWithHttpInfo(
    Object idPipeSlug,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}'.replaceAll('{id|slug}', idPipeSlug.toString());

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

  /// Get a project
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<Object?> getProject(
    Object idPipeSlug,
  ) async {
    final response = await getProjectWithHttpInfo(
      idPipeSlug,
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

  /// Get multiple projects
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] ids (required):
  ///   The IDs of the projects
  Future<Response> getProjectsWithHttpInfo(
    Object ids,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/projects';

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

  /// Get multiple projects
  ///
  /// Parameters:
  ///
  /// * [Object] ids (required):
  ///   The IDs of the projects
  Future<Object?> getProjects(
    Object ids,
  ) async {
    final response = await getProjectsWithHttpInfo(
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

  /// Modify a gallery image
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] url (required):
  ///   URL link of the image to modify
  ///
  /// * [Object] featured:
  ///   Whether the image is featured
  ///
  /// * [Object] title:
  ///   New title of the image
  ///
  /// * [Object] description:
  ///   New description of the image
  ///
  /// * [Object] ordering:
  ///   New ordering of the image
  Future<Response> modifyGalleryImageWithHttpInfo(
    Object idPipeSlug,
    Object url, {
    Object? featured,
    Object? title,
    Object? description,
    Object? ordering,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/gallery'.replaceAll('{id|slug}', idPipeSlug.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'url', url));
    if (featured != null) {
      queryParams.addAll(_queryParams('', 'featured', featured));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }

    const contentTypes = <String>[];

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

  /// Modify a gallery image
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] url (required):
  ///   URL link of the image to modify
  ///
  /// * [Object] featured:
  ///   Whether the image is featured
  ///
  /// * [Object] title:
  ///   New title of the image
  ///
  /// * [Object] description:
  ///   New description of the image
  ///
  /// * [Object] ordering:
  ///   New ordering of the image
  Future<void> modifyGalleryImage(
    Object idPipeSlug,
    Object url, {
    Object? featured,
    Object? title,
    Object? description,
    Object? ordering,
  }) async {
    final response = await modifyGalleryImageWithHttpInfo(
      idPipeSlug,
      url,
      featured: featured,
      title: title,
      description: description,
      ordering: ordering,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Modify a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] body:
  ///   Modified project fields
  Future<Response> modifyProjectWithHttpInfo(
    Object idPipeSlug, {
    Object? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}'.replaceAll('{id|slug}', idPipeSlug.toString());

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

  /// Modify a project
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [Object] body:
  ///   Modified project fields
  Future<void> modifyProject(
    Object idPipeSlug, {
    Object? body,
  }) async {
    final response = await modifyProjectWithHttpInfo(
      idPipeSlug,
      body: body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Edit multiple projects
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] ids (required):
  ///   The IDs of the projects
  ///
  /// * [PatchProjectsRequest] patchProjectsRequest:
  ///   Fields to edit on all projects specified
  Future<Response> patchProjectsWithHttpInfo(
    Object ids, {
    PatchProjectsRequest? patchProjectsRequest,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/projects';

    // ignore: prefer_final_locals
    Object? postBody = patchProjectsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'ids', ids));

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

  /// Edit multiple projects
  ///
  /// Parameters:
  ///
  /// * [Object] ids (required):
  ///   The IDs of the projects
  ///
  /// * [PatchProjectsRequest] patchProjectsRequest:
  ///   Fields to edit on all projects specified
  Future<void> patchProjects(
    Object ids, {
    PatchProjectsRequest? patchProjectsRequest,
  }) async {
    final response = await patchProjectsWithHttpInfo(
      ids,
      patchProjectsRequest: patchProjectsRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a list of random projects
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] count (required):
  ///   The number of random projects to return
  Future<Response> randomProjectsWithHttpInfo(
    Object count,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/projects_random';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'count', count));

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

  /// Get a list of random projects
  ///
  /// Parameters:
  ///
  /// * [Object] count (required):
  ///   The number of random projects to return
  Future<Object?> randomProjects(
    Object count,
  ) async {
    final response = await randomProjectsWithHttpInfo(
      count,
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

  /// Schedule a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [ScheduleProjectRequest] scheduleProjectRequest:
  ///   Information about date and requested status
  Future<Response> scheduleProjectWithHttpInfo(
    Object idPipeSlug, {
    ScheduleProjectRequest? scheduleProjectRequest,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/schedule'.replaceAll('{id|slug}', idPipeSlug.toString());

    // ignore: prefer_final_locals
    Object? postBody = scheduleProjectRequest;

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

  /// Schedule a project
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  ///
  /// * [ScheduleProjectRequest] scheduleProjectRequest:
  ///   Information about date and requested status
  Future<void> scheduleProject(
    Object idPipeSlug, {
    ScheduleProjectRequest? scheduleProjectRequest,
  }) async {
    final response = await scheduleProjectWithHttpInfo(
      idPipeSlug,
      scheduleProjectRequest: scheduleProjectRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search projects
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] query:
  ///   The query to search for
  ///
  /// * [Object] facets:
  ///   The recommended way of filtering search results. [Learn more about using facets.](/docs/tutorials/api_search)
  ///
  /// * [Object] index:
  ///   The sorting method used for sorting search results
  ///
  /// * [Object] offset:
  ///   The offset into the search. Skips this number of results
  ///
  /// * [Object] limit:
  ///   The number of results returned by the search
  ///
  /// * [Object] filters:
  ///   A list of filters relating to the properties of a project. Use filters when there isn't an available facet for your needs. [More information](https://docs.meilisearch.com/reference/features/filtering.html)
  ///
  /// * [Object] version:
  ///   A list of filters relating to the versions of a project. Use of facets for filtering by version is recommended
  Future<Response> searchProjectsWithHttpInfo({
    Object? query,
    Object? facets,
    Object? index,
    Object? offset,
    Object? limit,
    Object? filters,
    Object? version,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (facets != null) {
      queryParams.addAll(_queryParams('', 'facets', facets));
    }
    if (index != null) {
      queryParams.addAll(_queryParams('', 'index', index));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
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

  /// Search projects
  ///
  /// Parameters:
  ///
  /// * [Object] query:
  ///   The query to search for
  ///
  /// * [Object] facets:
  ///   The recommended way of filtering search results. [Learn more about using facets.](/docs/tutorials/api_search)
  ///
  /// * [Object] index:
  ///   The sorting method used for sorting search results
  ///
  /// * [Object] offset:
  ///   The offset into the search. Skips this number of results
  ///
  /// * [Object] limit:
  ///   The number of results returned by the search
  ///
  /// * [Object] filters:
  ///   A list of filters relating to the properties of a project. Use filters when there isn't an available facet for your needs. [More information](https://docs.meilisearch.com/reference/features/filtering.html)
  ///
  /// * [Object] version:
  ///   A list of filters relating to the versions of a project. Use of facets for filtering by version is recommended
  Future<SearchProjects200Response?> searchProjects({
    Object? query,
    Object? facets,
    Object? index,
    Object? offset,
    Object? limit,
    Object? filters,
    Object? version,
  }) async {
    final response = await searchProjectsWithHttpInfo(
      query: query,
      facets: facets,
      index: index,
      offset: offset,
      limit: limit,
      filters: filters,
      version: version,
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
        'SearchProjects200Response',
      ) as SearchProjects200Response;
    }
    return null;
  }

  /// Unfollow a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<Response> unfollowProjectWithHttpInfo(
    Object idPipeSlug,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/follow'.replaceAll('{id|slug}', idPipeSlug.toString());

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

  /// Unfollow a project
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<void> unfollowProject(
    Object idPipeSlug,
  ) async {
    final response = await unfollowProjectWithHttpInfo(
      idPipeSlug,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
