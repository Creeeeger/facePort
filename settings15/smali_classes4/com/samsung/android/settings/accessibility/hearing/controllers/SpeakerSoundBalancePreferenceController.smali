.class public Lcom/samsung/android/settings/accessibility/hearing/controllers/SpeakerSoundBalancePreferenceController;
.super Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;
.implements Lcom/samsung/android/settings/accessibility/base/logging/A11yStatusLoggingProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActionButtonDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f143141

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportStereoSpeaker()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getAvailabilityStatus()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDbKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "speaker_balance"

    return-object p0
.end method

.method public getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    const/16 p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getFragmentClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.hearing.HearingEnhancementsFragment"

    return-object p0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 0

    const-string p0, "SoundBalancePhoneSpeaker"

    return-object p0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const p0, 0x7f080189

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

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

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLearnMoreButtonIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo p1, "soundbalance"

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->isSupportAudioFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/SpeakerSoundBalancePreferenceController;->getAvailabilityStatus()I

    move-result p1

    const/4 v0, 0x3

    const-string v1, "A11YS4001"

    const-string v2, "master_balance"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getBalanceDbValue(Ljava/lang/String;)F

    move-result p0

    cmpl-float p0, p0, v5

    if-eqz p0, :cond_1

    move v3, v4

    :cond_1
    if-eqz v3, :cond_2

    const-string p0, "MonoAudioAdjusted"

    goto :goto_0

    :cond_2
    const-string p0, "MonoBalanced"

    :goto_0
    invoke-static {v1, p0}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getBalanceDbValue(Ljava/lang/String;)F

    move-result p1

    cmpl-float p1, p1, v5

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/SpeakerSoundBalancePreferenceController;->getDbKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getBalanceDbValue(Ljava/lang/String;)F

    move-result p0

    cmpl-float p0, p0, v5

    if-eqz p0, :cond_5

    move v3, v4

    :cond_5
    if-eqz p1, :cond_6

    if-eqz v3, :cond_6

    const-string p0, "BothAdjusted"

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    const-string p0, "OnlyAudioAdjusted"

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    const-string p0, "OnlySpeakerAdjusted"

    goto :goto_2

    :cond_8
    const-string p0, "AllBalanced"

    :goto_2
    invoke-static {v1, p0}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUsingFunctionHighlightKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUsingFunctionTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const p0, 0x7f142cea

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f142ced

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUsingFunctionType()I
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getUsingFunctionType()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCorrectDeviceConnected()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceInfo;

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1
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

    invoke-super {p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

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

.method public bridge synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
