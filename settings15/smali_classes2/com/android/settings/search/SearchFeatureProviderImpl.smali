.class public final Lcom/android/settings/search/SearchFeatureProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mSearchIndexableResources:Lcom/android/settingslib/search/SearchIndexableResourcesMobile;


# virtual methods
.method public final buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.APP_SEARCH_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x7f140a2b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android-app"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "android.intent.extra.REFERRER"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settingslib/search/SearchIndexableResourcesMobile;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableResourcesMobile;

    invoke-direct {v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;-><init>()V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/DisplaySettings;

    sget-object v3, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/accessibility/CaptioningAppearanceFragment;

    sget-object v3, Lcom/android/settings/accessibility/CaptioningAppearanceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/accessibility/CaptioningMoreOptionsFragment;

    sget-object v3, Lcom/android/settings/accessibility/CaptioningMoreOptionsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/accessibility/CaptioningPropertiesFragment;

    sget-object v3, Lcom/android/settings/accessibility/CaptioningPropertiesFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;

    sget-object v3, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    sget-object v3, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;

    sget-object v3, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/accessibility/VibrationIntensitySettingsFragment;

    sget-object v3, Lcom/android/settings/accessibility/VibrationIntensitySettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;

    sget-object v3, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceDashboardFragment;

    sget-object v3, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    sget-object v3, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/display/ScreenTimeoutSettings;

    sget-object v3, Lcom/android/settings/display/ScreenTimeoutSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/fuelgauge/SmartBatterySettings;

    sget-object v3, Lcom/android/settings/fuelgauge/SmartBatterySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/gestures/OneHandedSettings;

    sget-object v3, Lcom/android/settings/gestures/OneHandedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/homepage/TopLevelSettings;

    sget-object v3, Lcom/android/settings/homepage/TopLevelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/location/LocationServices;

    sget-object v3, Lcom/android/settings/location/LocationServices;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/notification/zen/ZenModeRestrictNotificationsSettings;

    sget-object v3, Lcom/android/settings/notification/zen/ZenModeRestrictNotificationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/system/ResetDashboardFragment;

    sget-object v3, Lcom/android/settings/system/ResetDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/wfd/WifiDisplaySettings;

    sget-object v3, Lcom/android/settings/wfd/WifiDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/advanced/AdvancedSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/advanced/SecAccessibilityControlTimeoutPreferenceFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/advanced/SecAccessibilityControlTimeoutPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecFlashNotificationsPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/dexterity/InteractionAndDexterityFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/dexterity/InteractionAndDexterityFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/hearing/AmplifyAmbientSoundPreferenceFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/hearing/AmplifyAmbientSoundPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/hearing/HearingAidPreferenceFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/hearing/HearingAidPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/hearing/HearingEnhancementsFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/hearing/HearingEnhancementsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/home/SecAccessibilitySettings;

    sget-object v3, Lcom/samsung/android/settings/accessibility/home/SecAccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/vision/MagnifierCameraFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/vision/MagnifierCameraFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/vision/VisibilityEnhancementsFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/vision/VisibilityEnhancementsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/vision/color/ColorLensFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/samsung/android/settings/accessibility/vision/color/ReluminoFragment;

    sget-object v3, Lcom/samsung/android/settings/accessibility/vision/color/ReluminoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v2, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragment;

    sget-object v3, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settingslib/search/SearchIndexableResourcesMobile;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settingslib/search/SearchIndexableResourcesMobile;

    return-object p0
.end method

.method public final verifyLaunchSearchResultPageCaller(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const p0, 0x7f140a2b

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Search result intents must be called with from an allowlisted package."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ExternalSettingsTrampoline intents must be called with startActivityForResult"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
