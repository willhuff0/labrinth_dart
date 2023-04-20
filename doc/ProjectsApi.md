# openapi.api.ProjectsApi

## Load the API package
```dart
import 'package:labrinth/api.dart';
```

All URIs are relative to *https://api.modrinth.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGalleryImage**](ProjectsApi.md#addgalleryimage) | **POST** /project/{id|slug}/gallery | Add a gallery image
[**changeProjectIcon**](ProjectsApi.md#changeprojecticon) | **PATCH** /project/{id|slug}/icon | Change project's icon
[**checkProjectValidity**](ProjectsApi.md#checkprojectvalidity) | **GET** /project/{id|slug}/check | Check project slug/ID validity
[**createProject**](ProjectsApi.md#createproject) | **POST** /project | Create a project
[**deleteGalleryImage**](ProjectsApi.md#deletegalleryimage) | **DELETE** /project/{id|slug}/gallery | Delete a gallery image
[**deleteProject**](ProjectsApi.md#deleteproject) | **DELETE** /project/{id|slug} | Delete a project
[**deleteProjectIcon**](ProjectsApi.md#deleteprojecticon) | **DELETE** /project/{id|slug}/icon | Delete project's icon
[**followProject**](ProjectsApi.md#followproject) | **POST** /project/{id|slug}/follow | Follow a project
[**getDependencies**](ProjectsApi.md#getdependencies) | **GET** /project/{id|slug}/dependencies | Get all of a project's dependencies
[**getProject**](ProjectsApi.md#getproject) | **GET** /project/{id|slug} | Get a project
[**getProjects**](ProjectsApi.md#getprojects) | **GET** /projects | Get multiple projects
[**modifyGalleryImage**](ProjectsApi.md#modifygalleryimage) | **PATCH** /project/{id|slug}/gallery | Modify a gallery image
[**modifyProject**](ProjectsApi.md#modifyproject) | **PATCH** /project/{id|slug} | Modify a project
[**patchProjects**](ProjectsApi.md#patchprojects) | **PATCH** /projects | Edit multiple projects
[**randomProjects**](ProjectsApi.md#randomprojects) | **GET** /projects_random | Get a list of random projects
[**scheduleProject**](ProjectsApi.md#scheduleproject) | **POST** /project/{id|slug}/schedule | Schedule a project
[**searchProjects**](ProjectsApi.md#searchprojects) | **GET** /search | Search projects
[**unfollowProject**](ProjectsApi.md#unfollowproject) | **DELETE** /project/{id|slug}/follow | Unfollow a project


# **addGalleryImage**
> addGalleryImage(idPipeSlug, ext, featured, title, description, ordering, body)

Add a gallery image

Modrinth allows you to upload files of up to 5MiB to a project's gallery.

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project
final ext = ; // Object | Image extension
final featured = ; // Object | Whether an image is featured
final title = ; // Object | Title of the image
final description = ; // Object | Description of the image
final ordering = ; // Object | Ordering of the image
final body = Object(); // Object | New gallery image

try {
    api_instance.addGalleryImage(idPipeSlug, ext, featured, title, description, ordering, body);
} catch (e) {
    print('Exception when calling ProjectsApi->addGalleryImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 
 **ext** | [**Object**](.md)| Image extension | 
 **featured** | [**Object**](.md)| Whether an image is featured | 
 **title** | [**Object**](.md)| Title of the image | [optional] 
 **description** | [**Object**](.md)| Description of the image | [optional] 
 **ordering** | [**Object**](.md)| Ordering of the image | [optional] 
 **body** | **Object**| New gallery image | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: image/*
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeProjectIcon**
> changeProjectIcon(idPipeSlug, ext, body)

Change project's icon

The new icon may be up to 256KiB in size.

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project
final ext = ; // Object | Image extension
final body = Object(); // Object | 

try {
    api_instance.changeProjectIcon(idPipeSlug, ext, body);
} catch (e) {
    print('Exception when calling ProjectsApi->changeProjectIcon: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 
 **ext** | [**Object**](.md)| Image extension | 
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: image/*
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkProjectValidity**
> CheckProjectValidity200Response checkProjectValidity(idPipeSlug)

Check project slug/ID validity

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project

try {
    final result = api_instance.checkProjectValidity(idPipeSlug);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->checkProjectValidity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 

### Return type

[**CheckProjectValidity200Response**](CheckProjectValidity200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProject**
> Object createProject(data, icon)

Create a project

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final data = ; // Object | 
final icon = ; // Object | Project icon file

try {
    final result = api_instance.createProject(data, icon);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->createProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Object**](Object.md)|  | 
 **icon** | [**Object**](Object.md)| Project icon file | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGalleryImage**
> deleteGalleryImage(idPipeSlug, url)

Delete a gallery image

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project
final url = ; // Object | URL link of the image to delete

try {
    api_instance.deleteGalleryImage(idPipeSlug, url);
} catch (e) {
    print('Exception when calling ProjectsApi->deleteGalleryImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 
 **url** | [**Object**](.md)| URL link of the image to delete | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProject**
> deleteProject(idPipeSlug)

Delete a project

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project

try {
    api_instance.deleteProject(idPipeSlug);
} catch (e) {
    print('Exception when calling ProjectsApi->deleteProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProjectIcon**
> deleteProjectIcon(idPipeSlug)

Delete project's icon

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project

try {
    api_instance.deleteProjectIcon(idPipeSlug);
} catch (e) {
    print('Exception when calling ProjectsApi->deleteProjectIcon: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followProject**
> followProject(idPipeSlug)

Follow a project

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project

try {
    api_instance.followProject(idPipeSlug);
} catch (e) {
    print('Exception when calling ProjectsApi->followProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDependencies**
> GetDependencies200Response getDependencies(idPipeSlug)

Get all of a project's dependencies

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project

try {
    final result = api_instance.getDependencies(idPipeSlug);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->getDependencies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 

### Return type

[**GetDependencies200Response**](GetDependencies200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProject**
> Object getProject(idPipeSlug)

Get a project

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = ProjectsApi();
final idPipeSlug = ["AABBCCDD","my_project"]; // Object | The ID or slug of the project

try {
    final result = api_instance.getProject(idPipeSlug);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->getProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjects**
> Object getProjects(ids)

Get multiple projects

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = ProjectsApi();
final ids = ["AABBCCDD", "EEFFGGHH"]; // Object | The IDs of the projects

try {
    final result = api_instance.getProjects(ids);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->getProjects: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Object**](.md)| The IDs of the projects | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyGalleryImage**
> modifyGalleryImage(idPipeSlug, url, featured, title, description, ordering)

Modify a gallery image

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project
final url = ; // Object | URL link of the image to modify
final featured = ; // Object | Whether the image is featured
final title = ; // Object | New title of the image
final description = ; // Object | New description of the image
final ordering = ; // Object | New ordering of the image

try {
    api_instance.modifyGalleryImage(idPipeSlug, url, featured, title, description, ordering);
} catch (e) {
    print('Exception when calling ProjectsApi->modifyGalleryImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 
 **url** | [**Object**](.md)| URL link of the image to modify | 
 **featured** | [**Object**](.md)| Whether the image is featured | [optional] 
 **title** | [**Object**](.md)| New title of the image | [optional] 
 **description** | [**Object**](.md)| New description of the image | [optional] 
 **ordering** | [**Object**](.md)| New ordering of the image | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyProject**
> modifyProject(idPipeSlug, body)

Modify a project

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project
final body = Object(); // Object | Modified project fields

try {
    api_instance.modifyProject(idPipeSlug, body);
} catch (e) {
    print('Exception when calling ProjectsApi->modifyProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 
 **body** | **Object**| Modified project fields | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchProjects**
> patchProjects(ids, patchProjectsRequest)

Edit multiple projects

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = ProjectsApi();
final ids = ["AABBCCDD", "EEFFGGHH"]; // Object | The IDs of the projects
final patchProjectsRequest = PatchProjectsRequest(); // PatchProjectsRequest | Fields to edit on all projects specified

try {
    api_instance.patchProjects(ids, patchProjectsRequest);
} catch (e) {
    print('Exception when calling ProjectsApi->patchProjects: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Object**](.md)| The IDs of the projects | 
 **patchProjectsRequest** | [**PatchProjectsRequest**](PatchProjectsRequest.md)| Fields to edit on all projects specified | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomProjects**
> Object randomProjects(count)

Get a list of random projects

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = ProjectsApi();
final count = 70; // Object | The number of random projects to return

try {
    final result = api_instance.randomProjects(count);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->randomProjects: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | [**Object**](.md)| The number of random projects to return | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scheduleProject**
> scheduleProject(idPipeSlug, scheduleProjectRequest)

Schedule a project

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project
final scheduleProjectRequest = ScheduleProjectRequest(); // ScheduleProjectRequest | Information about date and requested status

try {
    api_instance.scheduleProject(idPipeSlug, scheduleProjectRequest);
} catch (e) {
    print('Exception when calling ProjectsApi->scheduleProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 
 **scheduleProjectRequest** | [**ScheduleProjectRequest**](ScheduleProjectRequest.md)| Information about date and requested status | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchProjects**
> SearchProjects200Response searchProjects(query, facets, index, offset, limit, filters, version)

Search projects

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = ProjectsApi();
final query = gravestones; // Object | The query to search for
final facets = [["categories:forge"],["versions:1.17.1"],["project_type:mod"],["license:mit"]]; // Object | The recommended way of filtering search results. [Learn more about using facets.](/docs/tutorials/api_search)
final index = downloads; // Object | The sorting method used for sorting search results
final offset = 20; // Object | The offset into the search. Skips this number of results
final limit = 20; // Object | The number of results returned by the search
final filters = categories="fabric" AND (categories="technology" OR categories="utility"); // Object | A list of filters relating to the properties of a project. Use filters when there isn't an available facet for your needs. [More information](https://docs.meilisearch.com/reference/features/filtering.html)
final version = version="1.16.3" OR version="1.16.2" OR version="1.16.1"; // Object | A list of filters relating to the versions of a project. Use of facets for filtering by version is recommended

try {
    final result = api_instance.searchProjects(query, facets, index, offset, limit, filters, version);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->searchProjects: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**Object**](.md)| The query to search for | [optional] 
 **facets** | [**Object**](.md)| The recommended way of filtering search results. [Learn more about using facets.](/docs/tutorials/api_search) | [optional] 
 **index** | [**Object**](.md)| The sorting method used for sorting search results | [optional] [default to relevance]
 **offset** | [**Object**](.md)| The offset into the search. Skips this number of results | [optional] [default to 0]
 **limit** | [**Object**](.md)| The number of results returned by the search | [optional] [default to 10]
 **filters** | [**Object**](.md)| A list of filters relating to the properties of a project. Use filters when there isn't an available facet for your needs. [More information](https://docs.meilisearch.com/reference/features/filtering.html) | [optional] 
 **version** | [**Object**](.md)| A list of filters relating to the versions of a project. Use of facets for filtering by version is recommended | [optional] 

### Return type

[**SearchProjects200Response**](SearchProjects200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unfollowProject**
> unfollowProject(idPipeSlug)

Unfollow a project

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project

try {
    api_instance.unfollowProject(idPipeSlug);
} catch (e) {
    print('Exception when calling ProjectsApi->unfollowProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

