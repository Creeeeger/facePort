.class public Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "BrightnessPreferenceController.java"


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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "secbrightness"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 42
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p1

    sput p1, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->MAX_BRIGHTNESS:I

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result p0

    sput p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->MIN_BRIGHTNESS:I

    return-void
.end method

.method private getBrightnessMode(I)I
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initBrightnessValues()V
    .locals 3

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->getBrightnessMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isAdaptiveBrightnessNoLSEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mAutomaticMode:Z

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x64

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    return-void
.end method

.method private setBrightness()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mAutomaticMode:Z

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "secbrightness"

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->brightness_title:I

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

.method public getMax()I
    .locals 0

    .line 124
    sget p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->MAX_BRIGHTNESS:I

    return p0
.end method

.method public getMin()I
    .locals 0

    .line 129
    sget p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->MIN_BRIGHTNESS:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "secbrightness"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSliderPosition()I
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->initBrightnessValues()V

    .line 112
    iget p0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 4

    .line 89
    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object v0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->initBrightnessValues()V

    .line 91
    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getControlType()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    const-string v3, "key_brightness_value"

    .line 92
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 93
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mAutomaticMode:Z

    const-string v2, "key_automatic_mode"

    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 94
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getAvailabilityStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 95
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setIgnoreUserInteraction(Ljava/lang/Boolean;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 96
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setBundle(Landroid/os/Bundle;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->isDefault()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setDefault(Z)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

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

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSliderPosition(I)Z
    .locals 1

    .line 117
    iput p1, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    .line 118
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    const-string v0, "screen_brightness"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 3

    :try_start_0
    const-string v0, "secbrightness"

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_brightness_value"

    .line 70
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mBrightnessValue:I

    const-string v0, "key_automatic_mode"

    .line 71
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->mAutomaticMode:Z

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->setBrightness()V

    .line 73
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 74
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    const-string p1, "setting value failed"

    goto :goto_1

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 79
    sget-object v0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting value failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_1
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 82
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
