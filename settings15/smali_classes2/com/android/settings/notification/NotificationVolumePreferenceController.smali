.class public Lcom/android/settings/notification/NotificationVolumePreferenceController;
.super Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final TAG:Ljava/lang/String; = "NotificationVolumePreferenceController"


# instance fields
.field private final mHandler:Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

.field private final mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Lcom/android/settings/notification/NotificationVolumePreferenceController$H;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mHandler:Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateEnabledState(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updateEnabledState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "NotificationVolumePreferenceController"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;-><init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    new-instance p1, Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mHandler:Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    const p1, 0x7f080550

    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNormalIconId:I

    const p1, 0x7f080674

    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrateIconId:I

    const p1, 0x7f080553

    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSilentIconId:I

    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateRingerMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updateEnabledState()V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private updateEnabledState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setupVolPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateEffectsSuppressor()V

    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->selectPreferenceIconState()V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updateContentDescription()V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updateEnabledState()V

    return-void
.end method

.method public getAudioStream()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    goto :goto_0

    :cond_1
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

    invoke-super {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEffectiveRingerMode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    return p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "notification_volume"

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hintsMatch(I)Z
    .locals 2

    and-int/lit8 p0, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    iget-object p0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    iget-object p0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updateContentDescription()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getEffectiveRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f141b16

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1431e9

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :goto_2
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    return-void
.end method
