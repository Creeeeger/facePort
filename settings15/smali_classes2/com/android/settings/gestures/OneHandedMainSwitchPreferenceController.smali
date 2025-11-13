.class public Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;
.super Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

.field private final mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/MainSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    invoke-static {}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isSupportOneHandedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string v1, "navigation_mode"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417d7

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isOneHandedModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onChange(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->ONE_HANDED_MODE_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->registerToggleAwareObserver(Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->unregisterToggleAwareObserver()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/gestures/OneHandedSettingsUtils;->ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v2, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string v3, "taps_app_to_exit"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->MEDIUM:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    invoke-virtual {v2}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->getValue()I

    move-result v2

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "one_handed_mode_timeout"

    sget v4, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/gestures/OneHandedSettingsUtils;->ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v1, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string v2, "one_handed_mode_enabled"

    invoke-static {p0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
