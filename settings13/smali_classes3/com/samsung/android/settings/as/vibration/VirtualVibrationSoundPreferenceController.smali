.class public Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "VirtualVibrationSoundPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I = 0x0

.field private static final KEY_VIBRATION_SOUND_ENABLED:Ljava/lang/String; = "vibration_sound_enabled"

.field private static final NOTIFICATION_VIBRATION_SOUND_ENABLED:I = 0x1


# instance fields
.field private mPreference:Landroidx/preference/SecSwitchPreference;

.field private mSettingObserver:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "vibration_sound_enabled"

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    .line 111
    new-instance p1, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;-><init>(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->mSettingObserver:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;

    .line 112
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_vibration_sound_for_incoming_calls_summary:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "vibration_sound_enabled"

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 209
    sget p0, Lcom/android/settings/R$string;->menu_key_sound:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibration_sound_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 182
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->getControlType()I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 183
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatusForControl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

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

    .line 63
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibration_sound_enabled"

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

.method public isSliceable()Z
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "vibration_sound_enabled"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

    .line 132
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->mSettingObserver:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;->register(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->mSettingObserver:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$SettingObserver;->register(Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    .line 124
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "vibration_sound_enabled"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 124
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

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
    .locals 4

    const/16 v0, 0x150

    const/16 v1, 0x1c52

    .line 70
    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(IIZ)V

    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    new-instance v1, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$1;-><init>(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibration_sound_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 1

    .line 191
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 198
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 199
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_DEVICE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 200
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
