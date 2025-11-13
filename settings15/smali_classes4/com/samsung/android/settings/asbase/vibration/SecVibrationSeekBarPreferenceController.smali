.class public abstract Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final MAX_VIBRATION_INTENSITY_DC_HAPTIC:I = 0x3

.field protected static final MAX_VIBRATION_INTENSITY_DEFAULT:I = 0x5

.field protected static final MAX_VIBRATION_INTENSITY_FORCE_TOUCH:I = 0x4


# instance fields
.field private mPrefObserver:Landroid/database/ContentObserver;

.field protected mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getSimSlot()I
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isEnabledSIM2Only()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getTitle()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getMaxVibrationIntensity()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getSAEventId()I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getSimSlot()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getStream()I

    move-result v6

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getSimSlot()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getEffect(I)Landroid/os/VibrationEffect;

    move-result-object v7

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getSimSlot()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getSyncDbName(I)Ljava/lang/String;

    move-result-object v8

    iput-object v1, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mSystemDBName:Ljava/lang/String;

    iput v3, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mSALogEventId:I

    iput v2, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mMaxIntensity:I

    invoke-virtual {v0, v2}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    iput-object p1, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mTitle:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mRingtone:Landroid/media/Ringtone;

    iput-object v5, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mVibrationAttributes:Landroid/os/VibrationAttributes;

    iput v6, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mStream:I

    iput-object v7, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mVibrationEffect:Landroid/os/VibrationEffect;

    iput-object v8, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mSyncDbName:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController$1;-><init>(Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    :cond_1
    return-void
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

.method public abstract getEffect(I)Landroid/os/VibrationEffect;
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
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    iget p0, v0, Landroidx/preference/SeekBarPreference;->mMax:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getMaxVibrationIntensity()I

    move-result p0

    return p0
.end method

.method public getMaxVibrationIntensity()I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method public getMin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getRingtone(I)Landroid/media/Ringtone;
.end method

.method public abstract getSAEventId()I
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSliderPosition()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    iget p0, v0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getMaxVibrationIntensity()I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getStream()I
.end method

.method public abstract getSyncDbName(I)Ljava/lang/String;
.end method

.method public abstract getSystemDBName()Ljava/lang/String;
.end method

.method public abstract getTitle()I
.end method

.method public abstract getVibrationAttributes()Landroid/os/VibrationAttributes;
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

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
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

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/preference/SeekBarPreference;->setValueInternal(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public abstract updatePreferenceIcon(I)V
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    instance-of p0, p1, Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
