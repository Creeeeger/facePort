.class public Lcom/android/settings/datetime/AutoTimeZonePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutoTimeZonePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

.field private final mIsFromSUW:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationTimeZoneDetectionPreferenceController:Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    .line 50
    iput-boolean p3, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mIsFromSUW:Z

    .line 51
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->applyDateAndTimeForWifi(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 52
    new-instance p2, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mLocationTimeZoneDetectionPreferenceController:Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;

    .line 53
    const-class p2, Landroid/location/LocationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mLocationManager:Landroid/location/LocationManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "auto_zone"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->applyDateAndTimeForChinaAndWifi(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEnabled()Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time_zone"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 89
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 90
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_time_zone"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    iget-object p1, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 72
    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->applyDateAndTimeForWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    sget v0, Lcom/android/settings/R$string;->sec_set_timezone_based_on_location_summary_location_off:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 81
    :cond_1
    sget v0, Lcom/android/settings/R$string;->automatic_time_zone_wifi_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 83
    :goto_0
    iget-object p0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mLocationTimeZoneDetectionPreferenceController:Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->isLocationTimezoneEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method
