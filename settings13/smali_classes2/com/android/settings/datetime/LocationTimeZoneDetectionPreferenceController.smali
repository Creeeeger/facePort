.class public Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "LocationTimeZoneDetectionPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroid/app/time/TimeManager$TimeZoneDetectorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "location_time_zone_detection"


# instance fields
.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mPreference:Landroidx/preference/Preference;

.field private final mTimeManager:Landroid/app/time/TimeManager;

.field private mTimeZoneCapabilitiesAndConfig:Landroid/app/time/TimeZoneCapabilitiesAndConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location_time_zone_detection"

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    const-class v0, Landroid/app/time/TimeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeManager;

    iput-object v0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    .line 66
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private getTimeZoneCapabilitiesAndConfig(Z)Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .locals 0

    if-nez p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeZoneCapabilitiesAndConfig:Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    if-nez p1, :cond_1

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {p1}, Landroid/app/time/TimeManager;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeZoneCapabilitiesAndConfig:Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    .line 271
    :cond_1
    iget-object p0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeZoneCapabilitiesAndConfig:Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    return-object p0
.end method

.method private isNetworkConnected()Z
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v3

    .line 146
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiEnabled = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isMobileDataEnabled = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "location_time_zone_detection"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method

.method private refreshUi()V
    .locals 1

    const/4 v0, 0x1

    .line 256
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->getTimeZoneCapabilitiesAndConfig(Z)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    .line 257
    iget-object v0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->isLocationTimezoneEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 173
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->applyDateAndTimeForWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->getTimeZoneCapabilitiesAndConfig(Z)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result p0

    const/16 v2, 0xa

    if-eq p0, v2, :cond_4

    const/16 v2, 0x14

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x1e

    if-eq p0, v1, :cond_3

    const/16 v1, 0x28

    if-ne p0, v1, :cond_2

    goto :goto_0

    .line 188
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown capability="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->getTimeZoneCapabilitiesAndConfig(Z)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result v1

    .line 199
    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 204
    sget v0, Lcom/android/settings/R$string;->location_time_zone_detection_not_supported:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 207
    sget v0, Lcom/android/settings/R$string;->location_time_zone_detection_not_allowed:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x1e

    if-ne v1, v2, :cond_4

    .line 219
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    sget v0, Lcom/android/settings/R$string;->location_time_zone_detection_auto_is_off:I

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    sget v0, Lcom/android/settings/R$string;->location_app_permission_summary_location_off:I

    goto :goto_0

    .line 227
    :cond_3
    sget v0, Lcom/android/settings/R$string;->location_time_zone_detection_not_applicable:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x28

    if-ne v1, v0, :cond_6

    .line 235
    invoke-direct {p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    sget v0, Lcom/android/settings/R$string;->sec_set_timezone_based_on_location_summary:I

    goto :goto_0

    .line 237
    :cond_5
    sget v0, Lcom/android/settings/R$string;->sec_set_timezone_based_on_location_summary_mobiledata_wifi:I

    .line 246
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 243
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected configureGeoDetectionEnabledCapability="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    .line 76
    invoke-virtual {p0}, Landroid/app/time/TimeManager;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isLocationTimezoneEnabled()Z
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->applyDateAndTimeForWifi(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 132
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->getTimeZoneCapabilitiesAndConfig(Z)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result v0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureGeoDetectionEnabledCapability = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "location_time_zone_detection"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x28

    if-eq v0, v2, :cond_1

    return v1

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->isNetworkConnected()Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onChange()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->refreshUi()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {v1, v0, p0}, Landroid/app/time/TimeManager;->addTimeZoneDetectorListener(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->refreshUi()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {v0, p0}, Landroid/app/time/TimeManager;->removeTimeZoneDetectorListener(Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 95
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 96
    invoke-virtual {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p1

    .line 98
    iget-object p0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {p0, p1}, Landroid/app/time/TimeManager;->updateTimeZoneConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z

    move-result p0

    return p0
.end method

.method setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->refreshUi()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
