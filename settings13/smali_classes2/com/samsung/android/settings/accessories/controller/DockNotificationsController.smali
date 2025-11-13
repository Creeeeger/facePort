.class public Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DockNotificationsController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final KEY_COVER_NOTIFICATION:Ljava/lang/String; = "cover_show_sec_notifications"


# instance fields
.field private mAodModeObserver:Landroid/database/ContentObserver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreference:Landroidx/preference/SecPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mAodModeObserver:Landroid/database/ContentObserver;

    .line 54
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private getAodModeObserver()Landroid/database/ContentObserver;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mAodModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController$1;-><init>(Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mAodModeObserver:Landroid/database/ContentObserver;

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mAodModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static getDockNotificationsIntent()Landroid/content/Intent;
    .locals 3

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$LockscreenNotificationActivity"

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private isDockNotificationEnabled()Z
    .locals 3

    .line 135
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 136
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 138
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z

    move-result p0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    if-eqz p0, :cond_1

    .line 140
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 142
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 103
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    return v1

    .line 112
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->getDockNotificationsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
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
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cover_show_sec_notifications"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x427

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->getDockNotificationsIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

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

.method public onResume()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->updatePreference()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->getAodModeObserver()Landroid/database/ContentObserver;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->getAodModeObserver()Landroid/database/ContentObserver;

    move-result-object p0

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
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->isDockNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 125
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->clearview_notifications_summary_disable:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/DockNotificationsController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->clearview_notifications_summary:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
