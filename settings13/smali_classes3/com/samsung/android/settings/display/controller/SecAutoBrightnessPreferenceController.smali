.class public Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecAutoBrightnessPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final SENSOR_TYPE_CAMERA_LIGHT:I = 0x10044

.field private static final TAG:Ljava/lang/String; = "SecAutoBrightnessPreferenceController"


# instance fields
.field private mCameraAccessListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

.field private mCameraModelContentObserver:Landroid/database/ContentObserver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mIsCameraLightSensorSupported:Z

.field private final mIsCameraSensorModel:Z

.field private mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

.field private final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->supportCameraSensor(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mIsCameraSensorModel:Z

    .line 75
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->isCameraLightSensorSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mIsCameraLightSensorSupported:Z

    return-void
.end method

.method private isCameraLightSensorSupported(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "sensor"

    .line 252
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const p1, 0x10044

    .line 253
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_brightness"

    .line 91
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x2

    .line 102
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mIsCameraLightSensorSupported:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 110
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    const/4 p0, 0x3

    :goto_0
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

    .line 86
    sget p0, Lcom/android/settings/R$string;->menu_key_display:I

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

    .line 138
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mIsCameraLightSensorSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->auto_brightness_description_for_camera_access_disabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_COVER_SCREEN_BRIGHTNESS_MODE:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->auto_brightness_description_for_sub_screen:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

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

    .line 151
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    .line 213
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    .line 212
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mIsCameraSensorModel:Z

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mCameraModelContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$2;-><init>(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mCameraModelContentObserver:Landroid/database/ContentObserver;

    .line 231
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mIsCameraLightSensorSupported:Z

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mCameraAccessListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    if-nez v0, :cond_2

    .line 233
    new-instance v0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$3;-><init>(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mCameraAccessListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    :cond_2
    const/4 v0, 0x2

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mCameraAccessListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-virtual {v1, v0, p0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mIsCameraSensorModel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mCameraModelContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mCameraModelContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 193
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mIsCameraLightSensorSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mCameraAccessListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 195
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v0, 0x2e

    const/16 v1, 0x1ce8

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 161
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 162
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mIsCameraSensorModel:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adaptive_brightness_toggled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_1

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "samsung.intent.action.START_AUTO_BRIGHTNESS_ROOT"

    .line 167
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.adaptivebrightnessgo"

    const-string v4, "com.samsung.adaptivebrightnessgo.RootService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "from"

    const-string v3, "settings"

    .line 170
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "SecAutoBrightnessPreferenceController"

    const-string v3, "Error while calling adaptive brightness = "

    .line 174
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const/16 v0, 0x1ce9

    if-eqz p1, :cond_2

    const/16 p1, 0x3e8

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 177
    :goto_2
    invoke-static {v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 179
    :cond_3
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->SUPPORT_COVER_SCREEN_BRIGHTNESS_MODE:Z

    if-eqz p1, :cond_4

    .line 180
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_4
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 123
    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 v0, 0x2

    .line 126
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mIsCameraLightSensorSupported:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 127
    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 129
    :cond_0
    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
