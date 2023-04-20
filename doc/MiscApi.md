# openapi.api.MiscApi

## Load the API package
```dart
import 'package:labrinth/api.dart';
```

All URIs are relative to *https://api.modrinth.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statistics**](MiscApi.md#statistics) | **GET** /statistics | Various statistics about this Modrinth instance
[**submitReport**](MiscApi.md#submitreport) | **POST** /report | Report a project, user, or version


# **statistics**
> Statistics200Response statistics()

Various statistics about this Modrinth instance

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = MiscApi();

try {
    final result = api_instance.statistics();
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->statistics: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Statistics200Response**](Statistics200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitReport**
> Object submitReport(submitReportRequest)

Report a project, user, or version

Bring a project, user, or version to the attention of the moderators by reporting it. You must be logged in to report anything.

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = MiscApi();
final submitReportRequest = SubmitReportRequest(); // SubmitReportRequest | The report to be sent

try {
    final result = api_instance.submitReport(submitReportRequest);
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->submitReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submitReportRequest** | [**SubmitReportRequest**](SubmitReportRequest.md)| The report to be sent | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

