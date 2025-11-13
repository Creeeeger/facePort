.class public Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final KEY_AUTOMATIC_MODE:Ljava/lang/String; = "key_automatic_mode"

.field private static final KEY_BRIGHTNESS_VALUE:Ljava/lang/String; = "key_brightness_value"

.field private static MAX_BRIGHTNESS:I = 0x0

.field private static MIN_BRIGHTNESS:I = 0x0

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final PREFERENCE_KEY:Ljava/lang/String; = "secbrightness"

.field private static final TAG:Ljava/lang/String; = "com.samsung.android.settings.display.gtscontroller.BrightnessPreferenceController"


# instance fields
.field private mAutomaticMode:Z

.field private mBrightnessValue:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "secbrightness"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p1

    sput p1, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->MAX_BRIGHTNESS:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result p0

    sput p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->MIN_BRIGHTNESS:I

    return-void
.end method

.method private getBrightnessMode(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initBrightnessValues()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->getBrightnessMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mAutomaticMode:Z

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    return-void
.end method

.method private setBrightness()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    iget v2, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mAutomaticMode:Z

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "secbrightness"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f140851

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

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

    sget p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->MAX_BRIGHTNESS:I

    return p0
.end method

.method public getMin()I
    .locals 0

    sget p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->MIN_BRIGHTNESS:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "secbrightness"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSliderPosition()I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->initBrightnessValues()V

    iget p0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->initBrightnessValues()V

    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/cube/ControlValue;->mControlType:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "key_brightness_value"

    iget v3, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(ILjava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mAutomaticMode:Z

    const-string v2, "key_automatic_mode"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(ILjava/lang/String;)V

    iget p0, v0, Lcom/samsung/android/settings/cube/ControlValue;->mAvailabilityStatus:I

    iput p0, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mAvailabilityStatus:I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mForceChange:Ljava/lang/Boolean;

    iget-object p0, v0, Lcom/samsung/android/settings/cube/ControlValue;->mBundle:Landroid/os/Bundle;

    iput-object p0, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    iget-object p0, v0, Lcom/samsung/android/settings/cube/ControlValue;->mControlId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)V

    iget-boolean p0, v0, Lcom/samsung/android/settings/cube/ControlValue;->mIsDefault:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mIsDefault:Ljava/lang/Boolean;

    iget-object p0, v0, Lcom/samsung/android/settings/cube/ControlValue;->mStatusCode:Ljava/lang/String;

    iput-object p0, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mStatusCode:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

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

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSliderPosition(I)Z
    .locals 1

    iput p1, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_brightness"

    iget p0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 2

    :try_start_0
    const-string/jumbo v0, "secbrightness"

    iget-object v1, p1, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_brightness_value"

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    const-string v0, "key_automatic_mode"

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mAutomaticMode:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->setBrightness()V

    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    iput-object v0, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "setting value failed"

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setting value failed: "

    invoke-static {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    iput-object p0, v0, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
