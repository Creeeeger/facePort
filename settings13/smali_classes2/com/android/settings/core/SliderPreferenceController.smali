.class public abstract Lcom/android/settings/core/SliderPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SliderPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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

.method public getControlType()I
    .locals 0

    const/4 p0, 0x2

    return p0
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

.method public abstract getMax()I
.end method

.method public abstract getMin()I
.end method

.method public getSliceEndItem(Landroid/content/Context;)Landroidx/slice/builders/SliceAction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSliceType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public abstract getSliderPosition()I
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getControlType()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v2

    const-string/jumbo v3, "max"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v2

    const-string/jumbo v3, "min"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_0
    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatusForControl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 109
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

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 39
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public abstract setSliderPosition(I)Z
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 5

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    new-instance v1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v3

    if-lt v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v3

    if-le v0, v3, :cond_0

    goto :goto_2

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v3

    if-eq v0, v3, :cond_4

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/core/SliderPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->shouldIgnoreUserInteraction()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->ignoreUserInteraction()V

    .line 133
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->REQUEST_USER_INTERACTION:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    if-ne p1, v0, :cond_3

    .line 135
    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->REQUEST_SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    goto :goto_1

    .line 137
    :cond_3
    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 144
    :cond_4
    :goto_1
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 120
    :cond_5
    :goto_2
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 121
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->OUT_OF_RANGE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 44
    instance-of v0, p1, Lcom/android/settings/widget/SeekBarPreference;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lcom/android/settings/widget/SeekBarPreference;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 47
    :cond_0
    instance-of v0, p1, Landroidx/preference/SeekBarPreference;

    if-eqz v0, :cond_1

    .line 48
    check-cast p1, Landroidx/preference/SeekBarPreference;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    goto :goto_0

    .line 50
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;

    if-eqz v0, :cond_2

    .line 51
    check-cast p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
