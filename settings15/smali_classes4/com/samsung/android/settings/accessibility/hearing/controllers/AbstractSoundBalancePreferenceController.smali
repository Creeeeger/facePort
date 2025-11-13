.class public abstract Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityObservableController;


# static fields
.field public static final CENTER_POSITION:I = 0x64

.field static final DB_RUN_AMPLIFY_AMBIENT_SOUND:Ljava/lang/String; = "run_amplify_ambient_sound"

.field public static final MAX_AUDIO_BALANCE:I = 0xc8

.field public static final SNAP_THRESHOLD:F = 6.0f

.field private static final TAG:Ljava/lang/String; = "BalancePrefController"


# instance fields
.field private mTrackingTouch:Z

.field private final mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private preference:Landroidx/preference/Preference;

.field private soundBalancePreviewPlayer:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetsoundBalancePreviewPlayer(Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->soundBalancePreviewPlayer:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->mTrackingTouch:Z

    return-void
.end method

.method private getBalanceStateDescription(I)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f142ce8

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f142ce9

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ", "

    invoke-static {v0, p1, p0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isBalanceAdjusted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getDbKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getBalanceDbValue(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDisabledStatus()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "run_amplify_ambient_sound"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isDisabledStatus  muteAllSound : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  amplifyAmbientSound : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BalancePrefController"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->soundBalancePreviewPlayer:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    if-eqz p0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->pauseMediaPlayer()V

    :cond_4
    return v2
.end method

.method private registerVolumeFilter()V
    .locals 2

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-static {v0, v1}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterVolumeFilter()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->soundBalancePreviewPlayer:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->preference:Landroidx/preference/Preference;

    instance-of v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getMin()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/SeekBarPreference;->setMin(I)V

    iput-object p0, p1, Landroidx/preference/SeekBarPreference;->mOnSeekBarPreferenceChangeListener:Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getSliderPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getBalanceStateDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->setStateDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1401e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->leftLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->leftLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1401ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->rightLabel:Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->rightLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const-string/jumbo v0, "soundbalance"

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->isSupportAudioFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->isDisabledStatus()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBalanceDbValue(Ljava/lang/String;)F
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDeviceConnected()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/16 v6, 0x12

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "  name : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, "  type : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "BalancePrefController"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public abstract getDbKey()Ljava/lang/String;
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method public getMin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSliderPosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getDbKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getBalanceDbValue(Ljava/lang/String;)F

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSliderPosition() defaultValue : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " DONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BalancePrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x64

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUriList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getDbKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo v0, "run_amplify_ambient_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "all_sound_off"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

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

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public abstract isCorrectDeviceConnected()Z
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->unregisterVolumeFilter()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->soundBalancePreviewPlayer:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "releaseMediaPlayer() mMediaPlayer : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundBalancePreviewPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->isPrepared:Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->audioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    return-void
.end method

.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->mTrackingTouch:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->applySoundBalanceCenterPositionThreshold(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->registerVolumeFilter()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->soundBalancePreviewPlayer:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->context:Landroid/content/Context;

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "SoundBalancePreviewPlayer"

    const-string v0, "Exception thrown during preparing sound."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public bridge synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->mTrackingTouch:Z

    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->mTrackingTouch:Z

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->applySoundBalanceCenterPositionThreshold(Landroidx/appcompat/widget/SeslSeekBar;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSliderPosition(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->preference:Landroidx/preference/Preference;

    instance-of v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getBalanceStateDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 p1, p1, -0x64

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getDbKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->soundBalancePreviewPlayer:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->isCorrectDeviceConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->soundBalancePreviewPlayer:Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->isPrepared:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startMediaPlayer() mMediaPlayer : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundBalancePreviewPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p0, "startMediaPlayer() requestAudioFocus : fail"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "startMediaPlayer() requestAudioFocus : success"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    instance-of v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->isBalanceAdjusted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f060a61

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->progressTintList:Landroid/content/res/ColorStateList;

    if-eq v1, v0, :cond_2

    iput-object v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->progressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f060a62

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->tickMarkTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p0, :cond_5

    iput-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->tickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->progressTintList:Landroid/content/res/ColorStateList;

    if-eq v1, v0, :cond_4

    iput-object v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->progressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f0609a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->tickMarkTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p0, :cond_5

    iput-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->tickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
