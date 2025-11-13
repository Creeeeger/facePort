.class public Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final DEFAULT_SATURATION_LEVEL:I = 0x7

.field private static final SATURATION_MAX:I = 0xa

.field private static final SATURATION_MIN:I


# instance fields
.field final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mSliderPosition:I

.field preference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateSeekBar(Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->updateSeekBar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController$1;-><init>(Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "accessibility_display_daltonizer_saturation_level"

    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mSliderPosition:I

    return-void
.end method

.method private getCurrentLevel()I
    .locals 2

    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "accessibility_display_daltonizer_saturation_level"

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getLevelStateDescription(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f14098c

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateSeekBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->preference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->getCurrentLevel()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->preference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/preference/SeekBarPreference;->setValueInternal(IZ)V

    iput v0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mSliderPosition:I

    iget-object v1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->preference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->getLevelStateDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->preference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    iget-object p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->preference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->getMin()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/SeekBarPreference;->setMin(I)V

    iget p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mSliderPosition:I

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->setSliderPosition(I)Z

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    sget-boolean p0, Lcom/android/server/accessibility/FeatureFlagsImpl;->accessibility_is_cached:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "accessibility"

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p0

    const-string v1, "com.android.server.accessibility.enable_color_correction_saturation"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/accessibility/FeatureFlagsImpl;->enableColorCorrectionSaturation:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    sput-boolean v2, Lcom/android/server/accessibility/FeatureFlagsImpl;->accessibility_is_cached:Z

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot read value from namespace accessibility from DeviceConfig. It could be that the code using flag executed before SettingsProvider initialization. Please use fixed read-only flag by adding is_fixed_read_only: true in flag declaration."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    sget-boolean p0, Lcom/android/server/accessibility/FeatureFlagsImpl;->enableColorCorrectionSaturation:Z

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x2

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

    const/16 p0, 0xa

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
    .locals 0

    iget p0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mSliderPosition:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getStatusText()Ljava/lang/String;

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

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->updateSeekBar()V

    iget-object p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "accessibility_display_daltonizer"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "accessibility_display_daltonizer_saturation_level"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
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

    invoke-virtual {p0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->getMin()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->getMax()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mSliderPosition:I

    iget-object v0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_display_daltonizer_saturation_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->preference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    iget v0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mSliderPosition:I

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->getLevelStateDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->setStateDescription(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/accessibility/DaltonizerSaturationSeekbarPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "accessibility_display_daltonizer"

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/DaltonizerRadioButtonPreferenceController;->getSecureAccessibilityDaltonizerValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
