.class public Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;
.super Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;
.source "SecRingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;,
        Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;
    }
.end annotation


# static fields
.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final TAG:Ljava/lang/String; = "SecRingVolumePreferenceController"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;

.field private mMuteIcon:I

.field private final mReceiver:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;

.field private mRingerMode:I

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mHandler:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateEffectsSuppressor(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->updateEffectsSuppressor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRingerMode(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->updateRingerMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ring_volume"

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mRingerMode:I

    .line 53
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;-><init>(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;

    .line 54
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;-><init>(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mHandler:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;

    .line 64
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    .line 65
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "vibrator_manager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibratorManager;

    invoke-virtual {p1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    iput-object p2, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private updateEffectsSuppressor()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 153
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    .line 154
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/notification/SuppressorHelper;->getSuppressionText(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->updatePreferenceIcon(I)V

    return-void
.end method

.method private updatePreferenceIcon()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_2

    .line 167
    iget v1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 168
    sget v1, Lcom/android/settings/R$drawable;->ic_volume_ringer_vibrate:I

    iput v1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mMuteIcon:I

    .line 169
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 171
    sget v1, Lcom/android/settings/R$drawable;->ic_notifications_off_24dp:I

    iput v1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mMuteIcon:I

    .line 172
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    .line 174
    :cond_1
    sget p0, Lcom/android/settings/R$drawable;->ic_notifications:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateRingerMode()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result v0

    .line 142
    iput v0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mRingerMode:I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->updatePreferenceIcon(I)V

    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

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

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMuteIcon()I
    .locals 0

    .line 130
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_mute_mtrl:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "ring_volume"

    return-object p0
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

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ring_volume"

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
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 88
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->onPause()V

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 75
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;->register(Z)V

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->updateEffectsSuppressor()V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->updatePreferenceIcon(I)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 2

    .line 229
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz p1, :cond_2

    .line 230
    iget v0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mRingerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 231
    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_vibrate_mtrl:I

    iput v0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mMuteIcon:I

    .line 232
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 234
    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_mute_mtrl:I

    iput v0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mMuteIcon:I

    .line 235
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    .line 237
    :cond_1
    sget v0, Lcom/android/settings/R$drawable;->tw_ic_audio_sound_ringtone:I

    iput v0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mMuteIcon:I

    .line 238
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected wasRingerModeVibrate()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->mRingerMode:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
