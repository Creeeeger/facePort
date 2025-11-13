.class public Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "HighRefreshRatePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final KEY_SCREEN_REFRESH_RATE:Ljava/lang/String; = "sec_high_refresh_rate"

.field private static final TAG:Ljava/lang/String; = "HighRefreshRatePreferenceController"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$madjustRefreshRateForPowerSavingMode(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->adjustRefreshRateForPowerSavingMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private adjustRefreshRateForPowerSavingMode()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->getCurrentRefreshRateMoe()I

    move-result v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustRefreshRateMode : currentRefreshRateMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HighRefreshRatePreferenceController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 144
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e7

    invoke-static {p0, v1, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustRefreshRateMode : change to "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentRefreshRateMoe()I
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportCoverHighRefreshRate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v0, 0x3e7

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "sec_high_refresh_rate"

    .line 42
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->getCurrentRefreshRateMoe()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_high_refresh_rate_best_display_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_high_refresh_rate_dynamic_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 81
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_high_refresh_rate_standard_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

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

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

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

.method public onPause()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "refresh_rate_mode"

    .line 121
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 120
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    .line 123
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    .line 122
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/HighRefreshRatePreferenceController;->adjustRefreshRateForPowerSavingMode()V

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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 47
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 49
    instance-of v0, p1, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canSetHighRefreshRate(Landroid/content/Context;)Z

    move-result v0

    .line 51
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canSetHighRefreshRate(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    .line 57
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_high_refresh_rate_dual_display_flip_close_toast:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;Z)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$HighRefreshRatesSettingsActivity"

    .line 61
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 63
    const-class v0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    .line 67
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 68
    invoke-virtual {v1, v2}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
