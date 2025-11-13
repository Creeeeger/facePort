.class public Lcom/android/settings/display/PeakRefreshRatePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;
    }
.end annotation


# static fields
.field private static final INVALIDATE_REFRESH_RATE:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "RefreshRatePrefCtr"


# instance fields
.field private mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

.field private final mHandler:Landroid/os/Handler;

.field private final mOnDeviceConfigChange:Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;

.field mPeakRefreshRate:F

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnDeviceConfigChange(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mOnDeviceConfigChange:Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    invoke-direct {p2, p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;-><init>(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    new-instance p2, Lcom/android/settings/display/PeakRefreshRatePreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController$1;-><init>(Lcom/android/settings/display/PeakRefreshRatePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mOnDeviceConfigChange:Lcom/android/settings/display/PeakRefreshRatePreferenceController$IDeviceConfigChange;

    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->backUpSmoothDisplayAndForcePeakRefreshRate()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/internal/display/RefreshRateSettingsUtils;->findHighestRefreshRateAmongAllDisplays(Landroid/content/Context;)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/display/RefreshRateSettingsUtils;->findHighestRefreshRateForDefaultDisplay(Landroid/content/Context;)F

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEFAULT_REFRESH_RATE : 60.0 mPeakRefreshRate : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RefreshRatePrefCtr"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDefaultPeakRefreshRate()F
    .locals 5

    iget-object v0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "peak_refresh_rate_default"

    const-string v1, "display_manager"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DeviceConfig getDefaultPeakRefreshRate : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RefreshRatePrefCtr"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v1, v0, v2

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e007a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float v0, p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget v0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f141be5

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

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

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417c0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

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

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public injectDeviceConfigDisplaySettings(Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    return-void
.end method

.method public isChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "peak_refresh_rate"

    invoke-direct {p0}, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->getDefaultPeakRefreshRate()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eq v1, p0, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "display_manager"

    invoke-static {v0, p0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mDeviceConfigDisplaySettings:Lcom/android/settings/display/PeakRefreshRatePreferenceController$DeviceConfigDisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->backUpSmoothDisplayAndForcePeakRefreshRate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/display/PeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x42700000    # 60.0f

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "setChecked to : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RefreshRatePrefCtr"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "peak_refresh_rate"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
