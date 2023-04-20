# openapi.model.TeamMember

## Load the model package
```dart
import 'package:labrinth/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**teamId** | [**Object**](.md) | The ID of the team this team member is a member of | 
**user** | [**Object**](.md) |  | 
**role** | [**Object**](.md) | The user's role on the team | 
**permissions** | [**Object**](.md) | The user's permissions in bitfield format (requires authorization to view)  In order from first to tenth bit, the bits are: - UPLOAD_VERSION - DELETE_VERSION - EDIT_DETAILS - EDIT_BODY - MANAGE_INVITES - REMOVE_MEMBER - EDIT_MEMBER - DELETE_PROJECT - VIEW_ANALYTICS - VIEW_PAYOUTS  | [optional] 
**accepted** | [**Object**](.md) | Whether or not the user has accepted to be on the team (requires authorization to view) | 
**payoutsSplit** | [**Object**](.md) | The split of payouts going to this user. The proportion of payouts they get is their split divided by the sum of the splits of all members. | [optional] 
**ordering** | [**Object**](.md) | The order of the team member. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


