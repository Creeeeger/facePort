.class public Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AttTvModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final KEY_ATT_TV_MODE:Ljava/lang/String; = "att_tvmode_settings"

.field public static final POWER_DOUBLE_TAP_DB:Ljava/lang/String; = "double_tab_launch"

.field public static final POWER_DOUBLE_TAP_OFF:I = 0x2

.field public static final POWER_DOUBLE_TAP_ON:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AttTvModePreferenceController"

.field public static final TVMODE_OWNER_PREV_STATUS:Ljava/lang/String; = "tvmode_owner_status"

.field public static final TVMODE_STATUS_DB:Ljava/lang/String; = "tvmode_state"

.field public static final TVMODE_STATUS_OFF:I = 0x0

.field public static final TVMODE_STATUS_ON:I = 0x1


# instance fields
.field private mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field private mTvModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$mupdatePreference(Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->updatePreference(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "att_tvmode_settings"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getTvmodeStatus()Z
    .locals 5

    .line 156
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const-string v1, "tvmode_state"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 160
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tvmode_owner_status"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 162
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->setTvmodeStatus(I)V

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private setTvmodeStatus(I)V
    .locals 7

    .line 171
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "tvmode_state"

    if-eqz v0, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, p1, v1}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tvmode_owner_status"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "double_tab_launch"

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-ne p1, v4, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    invoke-static {v0, v5, v6, v1}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 193
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-ne p1, v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-static {p0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updatePreference(Z)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    sget p1, Lcom/android/settings/R$string;->err_tv_mode_off:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "att_tvmode_settings"

    .line 86
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->updatePreference(Z)V

    .line 89
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    .line 90
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController$1;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mTvModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 70
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvMode"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.tvmode"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
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

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 51
    sget p0, Lcom/android/settings/R$string;->menu_key_advanced_features:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.tvmode"

    const-string v2, "com.samsung.tvmode.activity.RecentAppsActivity"

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException in tvmode"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 147
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
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

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->getTvmodeStatus()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

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

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mTvModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mTvModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->updatePreference(Z)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mTvModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tvmode_state"

    .line 121
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mTvModeObserver:Landroid/database/ContentObserver;

    .line 120
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

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

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->setTvmodeStatus(I)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/AttTvModePreferenceController;->updatePreference(Z)V

    :cond_0
    return v0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
