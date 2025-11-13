.class public Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "VibrateWhenRingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I = 0x0

.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final NOTIFICATION_VIBRATE_WHEN_RINGING:I = 0x1

.field private static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field private mPreference:Landroidx/preference/SecSwitchPreference;

.field private mSettingObserver:Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "vibrate_when_ringing"

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    .line 93
    new-instance p1, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;-><init>(Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportVibrateWhenRing(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "vibrate_when_ringing"

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 167
    sget p0, Lcom/android/settings/R$string;->menu_key_sound:I

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
    .locals 2

    .line 62
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

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

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

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

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;->register(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->mSettingObserver:Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController$SettingObserver;->register(Z)V

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

    const/16 v0, 0x150

    const/16 v1, 0xfa1

    .line 69
    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(IIZ)V

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_2

    .line 122
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibrateWhenRingPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 123
    :goto_1
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
