.class public Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AutomaticUnlockController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AUTOMATIC_UNLOCK_DB:Ljava/lang/String; = "automatic_unlock"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPreference:Landroidx/preference/SecSwitchPreference;

.field private mSettingsObserver:Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mPreference:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance p1, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;

    iget-object p2, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;-><init>(Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mSettingsObserver:Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isAutoScreenOnCheck()Z
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_screen_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 135
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasFeatureAutoScreenTurnOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isNFCAuthCover(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_2

    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0xe

    if-ne p0, v0, :cond_1

    return v1

    .line 73
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

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

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 41
    sget p0, Lcom/android/settings/R$string;->menu_key_advanced_features:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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
    .locals 3

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->isAutoScreenOnCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "automatic_unlock"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
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

.method public onPause()V
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mSettingsObserver:Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mSettingsObserver:Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;->setListening(Z)V

    :cond_0
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

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "automatic_unlock"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 p0, 0x1dba

    const/16 v0, 0x41c

    .line 91
    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->isAutoScreenOnCheck()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->mPreference:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "automatic_unlock"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
