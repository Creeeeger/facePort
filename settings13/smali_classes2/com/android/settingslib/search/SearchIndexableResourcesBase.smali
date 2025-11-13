.class public Lcom/android/settingslib/search/SearchIndexableResourcesBase;
.super Ljava/lang/Object;
.source "SearchIndexableResourcesBase.java"

# interfaces
.implements Lcom/android/settingslib/search/SearchIndexableResources;


# instance fields
.field private final mProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settingslib/search/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    .line 12
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/accounts/AccountDashboardFragment;

    sget-object v2, Lcom/android/settings/accounts/AccountDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 13
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    sget-object v2, Lcom/android/settings/accounts/ManagedProfileSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 14
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/assist/ManageAssist;

    sget-object v2, Lcom/android/settings/applications/assist/ManageAssist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 15
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    sget-object v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 16
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;

    sget-object v2, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 17
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;

    sget-object v2, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 18
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/backup/BackupSettingsFragment;

    sget-object v2, Lcom/android/settings/backup/BackupSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 19
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/datausage/DataSaverSummary;

    sget-object v2, Lcom/android/settings/datausage/DataSaverSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 20
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/datausage/DataUsageSummary;

    sget-object v2, Lcom/android/settings/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 21
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/datetime/DateTimeSettings;

    sget-object v2, Lcom/android/settings/datetime/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 22
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/datetime/timezone/TimeZoneSettings;

    sget-object v2, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 23
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    sget-object v2, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 24
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/development/WirelessDebuggingFragment;

    sget-object v2, Lcom/android/settings/development/WirelessDebuggingFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 25
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/development/transcode/TranscodeSettingsFragment;

    sget-object v2, Lcom/android/settings/development/transcode/TranscodeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 26
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/display/ColorModePreferenceFragment;

    sget-object v2, Lcom/android/settings/display/ColorModePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 27
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/display/DeviceStateAutoRotateDetailsFragment;

    sget-object v2, Lcom/android/settings/display/DeviceStateAutoRotateDetailsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 28
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;

    sget-object v2, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 29
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/emergency/EmergencyDashboardFragment;

    sget-object v2, Lcom/android/settings/emergency/EmergencyDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 30
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/emergency/EmergencyGestureSettings;

    sget-object v2, Lcom/android/settings/emergency/EmergencyGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 31
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    sget-object v2, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 32
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/localepicker/LocaleListEditor;

    sget-object v2, Lcom/android/settings/localepicker/LocaleListEditor;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 33
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/location/LocationSettings;

    sget-object v2, Lcom/android/settings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 34
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;

    sget-object v2, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 35
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    sget-object v2, Lcom/android/settings/notification/ConfigureNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 36
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/NotificationAccessSettings;

    sget-object v2, Lcom/android/settings/notification/NotificationAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 37
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/SpatialAudioSettings;

    sget-object v2, Lcom/android/settings/notification/SpatialAudioSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 38
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 39
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 40
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeConversationsSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeConversationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 41
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeMessagesSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeMessagesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 42
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModePeopleSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 43
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 44
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 45
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    sget-object v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 46
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    sget-object v2, Lcom/android/settings/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 47
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/privacy/OtherPrivacySettingsFragment;

    sget-object v2, Lcom/android/settings/privacy/OtherPrivacySettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 48
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/privacy/PrivacyDashboardFragment;

    sget-object v2, Lcom/android/settings/privacy/PrivacyDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 49
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/CredentialManagementAppFragment;

    sget-object v2, Lcom/android/settings/security/CredentialManagementAppFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 50
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/InstallCertificateFromStorage;

    sget-object v2, Lcom/android/settings/security/InstallCertificateFromStorage;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 51
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/SecurityAdvancedSettings;

    sget-object v2, Lcom/android/settings/security/SecurityAdvancedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 52
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/tts/TextToSpeechSettings;

    sget-object v2, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 53
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    sget-object v2, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 54
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/users/UserSettings;

    sget-object v2, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 55
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    sget-object v2, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 56
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    sget-object v2, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 57
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 58
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/DomesticSettings;

    sget-object v2, Lcom/samsung/android/settings/DomesticSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 59
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;

    sget-object v2, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 60
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/accessories/DockSettings;

    sget-object v2, Lcom/samsung/android/settings/accessories/DockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 61
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/account/CloudAccountSettings;

    sget-object v2, Lcom/samsung/android/settings/account/CloudAccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 62
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/activekey/ActiveKeySettings;

    sget-object v2, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 63
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;

    sget-object v2, Lcom/samsung/android/settings/activekey/XcoverTopKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 64
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;

    sget-object v2, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 65
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    sget-object v2, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 66
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;

    sget-object v2, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 67
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/audio/SoundSettings;

    sget-object v2, Lcom/samsung/android/settings/as/audio/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 68
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;

    sget-object v2, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 69
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;

    sget-object v2, Lcom/samsung/android/settings/as/vibration/VibrationSystemIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 70
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    sget-object v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 71
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;

    sget-object v2, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 72
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    sget-object v2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 73
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    sget-object v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 74
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    sget-object v2, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 75
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    sget-object v2, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 76
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/connection/ConnectionsSettings;

    sget-object v2, Lcom/samsung/android/settings/connection/ConnectionsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 77
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/connection/GigaLteSettings;

    sget-object v2, Lcom/samsung/android/settings/connection/GigaLteSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 78
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/connection/WirelessSettings;

    sget-object v2, Lcom/samsung/android/settings/connection/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 79
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    sget-object v2, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 80
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;

    sget-object v2, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 81
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    sget-object v2, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 82
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN;

    sget-object v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 83
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;

    sget-object v2, Lcom/samsung/android/settings/development/bluetooth/PbapDashboard;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 84
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 85
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoSettings;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 86
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/LegalInfoSettings;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/legalinfo/LegalInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 87
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/samsunglegal/SamsungLegalInfo;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/legalinfo/samsunglegal/SamsungLegalInfo;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 88
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/ServiceInfoSettings;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/ServiceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 89
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfoFragment;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 90
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 91
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/StatusInfoSettings;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/StatusInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 92
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 93
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 94
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;

    sget-object v2, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 95
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 96
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;

    sget-object v2, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 97
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    sget-object v2, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 98
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    sget-object v2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 99
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/general/GeneralDeviceSettings;

    sget-object v2, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 100
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;

    sget-object v2, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 101
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;

    sget-object v2, Lcom/samsung/android/settings/inputmethod/MouseAndTrackpadSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 102
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    sget-object v2, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 103
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    sget-object v2, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 104
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;

    sget-object v2, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 105
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    sget-object v2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 106
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 107
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 108
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    sget-object v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 109
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;

    sget-object v2, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 110
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    sget-object v2, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 111
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/nfc/AndroidBeam;

    sget-object v2, Lcom/samsung/android/settings/nfc/AndroidBeam;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 112
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/nfc/NfcSettings;

    sget-object v2, Lcom/samsung/android/settings/nfc/NfcSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 113
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    sget-object v2, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 114
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    sget-object v2, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 115
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;

    sget-object v2, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 116
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;

    sget-object v2, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 117
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;

    sget-object v2, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 118
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;

    sget-object v2, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 119
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings;

    sget-object v2, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 120
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;

    sget-object v2, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 121
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 122
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/security/DeviceIdSettings;

    sget-object v2, Lcom/samsung/android/settings/security/DeviceIdSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 123
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/security/SecIccLockSettings;

    sget-object v2, Lcom/samsung/android/settings/security/SecIccLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 124
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    sget-object v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 125
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/subscreen/SubScreenSettings;

    sget-object v2, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 126
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 127
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 128
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 129
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 130
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 131
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 132
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;

    sget-object v2, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 133
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    sget-object v2, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 134
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    sget-object v2, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 135
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;

    sget-object v2, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 136
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 137
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 138
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApClientsUsageReport;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    .line 139
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    return-void
.end method


# virtual methods
.method public addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getProviderValues()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/search/SearchIndexableData;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object p0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    return-object p0
.end method
