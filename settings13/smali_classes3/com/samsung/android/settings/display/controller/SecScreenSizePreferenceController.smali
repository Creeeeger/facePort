.class public Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SecScreenSizePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecScreenSizePreferenceController"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    new-instance p1, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private getDatabaseUri()Landroid/net/Uri;
    .locals 0

    const-string p0, "easy_mode_switch"

    .line 161
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private updateScreenSizeState()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    .line 124
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 125
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_screen_zoom_fold_sub_display_desc:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;Z)V

    goto :goto_2

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_screen_zoom_winner_sub_display_desc:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;Z)V

    goto :goto_2

    .line 131
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 93
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 94
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "easy_mode_switch"

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
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

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 152
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    .line 153
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 154
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->sec_screen_zoom_top_title:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->sec_screen_zoom_title:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x1d18

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x10008000

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_2

    .line 110
    :cond_1
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    .line 111
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 112
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/settings/R$string;->sec_screen_zoom_top_title:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/android/settings/R$string;->sec_screen_zoom_title:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x1d18

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2

    :cond_3
    :goto_2
    return v0
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

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 3

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->getDatabaseUri()Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updatePreference()V
    .locals 5

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 83
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    sget v1, Lcom/android/settings/R$string;->sec_screen_zoom_top_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_2

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    sget v1, Lcom/android/settings/R$string;->sec_screen_zoom_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 88
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->updateScreenSizeState()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->updatePreference()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
