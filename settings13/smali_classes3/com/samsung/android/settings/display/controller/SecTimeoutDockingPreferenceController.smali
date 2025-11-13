.class public Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecTimeoutDockingPreferenceController.java"


# static fields
.field private static final COMMON_FEATURE_NAME:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

.field public static final FALLBACK_SCREEN_TIMEOUT_DOCKING_VALUE:I = 0x1b7740


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isSupportDevice()Z
    .locals 2

    .line 102
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "screen_timeout_docking_switch"

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 63
    invoke-static {}, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->isSupportDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
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

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_screen_off_timeout"

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->updateTimeoutPreferenceDescription(Landroid/content/Context;Lcom/samsung/android/settings/widget/SecRestrictedPreference;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    .locals 2

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dock_screen_off_timeout_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_screen_off_timeout_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecTimeoutDockingPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
