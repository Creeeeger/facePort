.class public Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;
.super Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;

.field private mMuteIcon:I

.field private final mReceiver:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;

.field private mRingerMode:I

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mHandler:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateEffectsSuppressor(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->updateEffectsSuppressor()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRingerMode(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->updateRingerMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "ring_volume"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mRingerMode:I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "vibrator_manager"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibratorManager;

    invoke-virtual {p1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->updateRingerMode()V

    new-instance p1, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;-><init>(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;

    new-instance p1, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;-><init>(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mHandler:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private updateEffectsSuppressor()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Lcom/android/settings/notification/SuppressorHelper;->getSuppressorCaption(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x10408d3

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    iget-object v2, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iput-object v0, v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->updateSuppressionText()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->getAudioStream()I

    move-result v1

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->updatePreferenceIcon(I)V

    return-void
.end method

.method private updatePreferenceIcon()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f080674

    iput v1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mMuteIcon:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const v1, 0x7f080553

    iput v1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mMuteIcon:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_1
    const p0, 0x7f080550

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateRingerMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mRingerMode:I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->getAudioStream()I

    move-result v1

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->updatePreferenceIcon(I)V

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

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMuteIcon()I
    .locals 0

    const p0, 0x7f080df9

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "ring_volume"

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getStatusText()Ljava/lang/String;

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

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ring_volume"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->onPause()V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;->register(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->updateEffectsSuppressor()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->getAudioStream()I

    move-result v1

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->updatePreferenceIcon(I)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mRingerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f080e03

    iput v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mMuteIcon:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const v0, 0x7f080df9

    iput v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mMuteIcon:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f080dfe

    iput v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mMuteIcon:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public wasRingerModeVibrate()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->mRingerMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
