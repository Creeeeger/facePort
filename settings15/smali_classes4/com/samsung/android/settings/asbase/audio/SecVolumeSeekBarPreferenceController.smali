.class public abstract Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;
.super Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field protected mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

.field protected mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

.field protected mVolumePreferenceCallback:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setAudioHelper(Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStream:I

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getMuteIcon()I

    move-result p0

    iget v0, p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iput p0, p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mMuteIconResId:I

    iget-object p0, p1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumeIcon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateLayout(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract getAudioStream()I
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget p0, v0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getMin()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget p0, v0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Invalid stream type "

    const-string v2, "AudioHelper"

    invoke-static {p0, v1, v2}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMuteIcon()I
    .locals 0

    const p0, 0x7f080df9

    return p0
.end method

.method public getNormalIcon()I
    .locals 0

    const p0, 0x7f080dfe

    return p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417d4

    return p0
.end method

.method public getSliderPosition()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget p0, v0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVibrateIcon()I
    .locals 0

    const p0, 0x7f080e03

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

    invoke-super {p0, p1}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mCallback:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;

    iput-object p0, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mCallback:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;

    iget-boolean p0, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStopped:Z

    if-eqz p0, :cond_1

    new-instance p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumeIcon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStream:I

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->initialize(Lcom/samsung/android/settings/asbase/widget/SecVolumeIconMotion;I)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->setupCustomInit()V

    :cond_1
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFirstBind:Z

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mStopped:Z

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;->stop()V

    iput-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizerDTMF:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizerDTMF;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizer:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->stop()V

    iput-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->mVolumizer:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    :cond_1
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setAudioHelper(Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    return-void
.end method

.method public setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;

    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v1
.end method

.method public abstract updatePreferenceIcon(I)V
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
