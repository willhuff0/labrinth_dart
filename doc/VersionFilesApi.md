# openapi.api.VersionFilesApi

## Load the API package
```dart
import 'package:labrinth/api.dart';
```

All URIs are relative to *https://api.modrinth.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteFileFromHash**](VersionFilesApi.md#deletefilefromhash) | **DELETE** /version_file/{hash} | Delete a file from its hash
[**getLatestVersionFromHash**](VersionFilesApi.md#getlatestversionfromhash) | **POST** /version_file/{hash}/update | Latest version of a project from a hash, loader(s), and game version(s)
[**getLatestVersionsFromHashes**](VersionFilesApi.md#getlatestversionsfromhashes) | **POST** /version_files/update | Latest versions of multiple project from hashes, loader(s), and game version(s)
[**versionFromHash**](VersionFilesApi.md#versionfromhash) | **GET** /version_file/{hash} | Get version from hash
[**versionsFromHashes**](VersionFilesApi.md#versionsfromhashes) | **POST** /version_files | Get versions from hashes


# **deleteFileFromHash**
> deleteFileFromHash(hash, algorithm, versionId)

Delete a file from its hash

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = VersionFilesApi();
final hash = 619e250c133106bacc3e3b560839bd4b324dfda8; // Object | The hash of the file, considering its byte content, and encoded in hexadecimal
final algorithm = sha512; // Object | The algorithm of the hash
final versionId = [IIJJKKLL]; // Object | Version ID to delete the version from, if multiple files of the same hash exist

try {
    api_instance.deleteFileFromHash(hash, algorithm, versionId);
} catch (e) {
    print('Exception when calling VersionFilesApi->deleteFileFromHash: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | [**Object**](.md)| The hash of the file, considering its byte content, and encoded in hexadecimal | 
 **algorithm** | [**Object**](.md)| The algorithm of the hash | [default to sha1]
 **versionId** | [**Object**](.md)| Version ID to delete the version from, if multiple files of the same hash exist | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestVersionFromHash**
> Object getLatestVersionFromHash(hash, algorithm, getLatestVersionFromHashRequest)

Latest version of a project from a hash, loader(s), and game version(s)

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = VersionFilesApi();
final hash = 619e250c133106bacc3e3b560839bd4b324dfda8; // Object | The hash of the file, considering its byte content, and encoded in hexadecimal
final algorithm = sha512; // Object | The algorithm of the hash
final getLatestVersionFromHashRequest = GetLatestVersionFromHashRequest(); // GetLatestVersionFromHashRequest | Parameters of the updated version requested

try {
    final result = api_instance.getLatestVersionFromHash(hash, algorithm, getLatestVersionFromHashRequest);
    print(result);
} catch (e) {
    print('Exception when calling VersionFilesApi->getLatestVersionFromHash: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | [**Object**](.md)| The hash of the file, considering its byte content, and encoded in hexadecimal | 
 **algorithm** | [**Object**](.md)| The algorithm of the hash | [default to sha1]
 **getLatestVersionFromHashRequest** | [**GetLatestVersionFromHashRequest**](GetLatestVersionFromHashRequest.md)| Parameters of the updated version requested | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestVersionsFromHashes**
> VersionsFromHashes200Response getLatestVersionsFromHashes(getLatestVersionsFromHashesRequest)

Latest versions of multiple project from hashes, loader(s), and game version(s)

This is the same as [`/version_file/{hash}/update`](#operation/getLatestVersionFromHash) except it accepts multiple hashes.

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = VersionFilesApi();
final getLatestVersionsFromHashesRequest = GetLatestVersionsFromHashesRequest(); // GetLatestVersionsFromHashesRequest | Parameters of the updated version requested

try {
    final result = api_instance.getLatestVersionsFromHashes(getLatestVersionsFromHashesRequest);
    print(result);
} catch (e) {
    print('Exception when calling VersionFilesApi->getLatestVersionsFromHashes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getLatestVersionsFromHashesRequest** | [**GetLatestVersionsFromHashesRequest**](GetLatestVersionsFromHashesRequest.md)| Parameters of the updated version requested | [optional] 

### Return type

[**VersionsFromHashes200Response**](VersionsFromHashes200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionFromHash**
> Object versionFromHash(hash, algorithm, multiple)

Get version from hash

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = VersionFilesApi();
final hash = 619e250c133106bacc3e3b560839bd4b324dfda8; // Object | The hash of the file, considering its byte content, and encoded in hexadecimal
final algorithm = sha512; // Object | The algorithm of the hash
final multiple = ; // Object | Whether to return multiple results when looking for this hash

try {
    final result = api_instance.versionFromHash(hash, algorithm, multiple);
    print(result);
} catch (e) {
    print('Exception when calling VersionFilesApi->versionFromHash: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | [**Object**](.md)| The hash of the file, considering its byte content, and encoded in hexadecimal | 
 **algorithm** | [**Object**](.md)| The algorithm of the hash | [default to sha1]
 **multiple** | [**Object**](.md)| Whether to return multiple results when looking for this hash | [optional] [default to false]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionsFromHashes**
> VersionsFromHashes200Response versionsFromHashes(versionsFromHashesRequest)

Get versions from hashes

This is the same as [`/version_file/{hash}`](#operation/versionFromHash) except it accepts multiple hashes.

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = VersionFilesApi();
final versionsFromHashesRequest = VersionsFromHashesRequest(); // VersionsFromHashesRequest | Hashes and algorithm of the versions requested

try {
    final result = api_instance.versionsFromHashes(versionsFromHashesRequest);
    print(result);
} catch (e) {
    print('Exception when calling VersionFilesApi->versionsFromHashes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **versionsFromHashesRequest** | [**VersionsFromHashesRequest**](VersionsFromHashesRequest.md)| Hashes and algorithm of the versions requested | [optional] 

### Return type

[**VersionsFromHashes200Response**](VersionsFromHashes200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

