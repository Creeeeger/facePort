.class public Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "DailyBoardPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final KEY_DAILY_BOARD:Ljava/lang/String; = "daily_board_setting"

.field private static final TAG:Ljava/lang/String; = "DailyBoardPreferenceController"


# instance fields
.field private mDailyBoardObserver:Landroid/database/ContentObserver;

.field private mPreference:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePreferenceSummary(Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->updatePreferenceSummary(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "daily_board_setting"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreferenceSummary(Z)V
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    sget p1, Lcom/android/settings/R$string;->sec_daily_board_setting_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "daily_board_setting"

    .line 99
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->updatePreferenceSummary(Z)V

    .line 102
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController$1;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mDailyBoardObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportDailyBoard(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.homemode"

    const-string v2, "com.samsung.android.homemode.ui.activity.setting.HomeModeSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 75
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException in homemode"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 80
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
    .locals 2

    .line 46
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "home_mode_master"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    .line 93
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

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mDailyBoardObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mDailyBoardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->updatePreferenceSummary(Z)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mDailyBoardObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "home_mode_master"

    .line 142
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->mDailyBoardObserver:Landroid/database/ContentObserver;

    .line 141
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
    .locals 2

    .line 52
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 54
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "home_mode_master"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->updatePreferenceSummary(Z)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.homemode.MASTER_SWITCH_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "switch_status"

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.homemode"

    .line 59
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
