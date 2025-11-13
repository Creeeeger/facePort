.class public abstract Lcom/android/settings/core/SliderPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getControlType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getControlType()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)V

    const-string v2, "max"

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(ILjava/lang/String;)V

    const-string v2, "min"

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(ILjava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mSummary:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatusForControl()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mAvailabilityStatus:I

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mStatusCode:Ljava/lang/String;

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

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

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

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setSliderPosition(I)Z
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    iput-object v2, v1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v3

    sget-object v4, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    if-lt v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v3

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v3

    if-eq v0, v3, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/core/SliderPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    if-eq v3, v5, :cond_1

    iget-boolean p1, p1, Lcom/samsung/android/settings/cube/ControlValue;->mForceChange:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->ignoreUserInteraction()V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->REQUEST_USER_INTERACTION:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->REQUEST_SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    iput-object p1, v1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    goto :goto_0

    :cond_2
    iput-object v4, v1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object p1

    iput-object p1, v1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object p0

    :cond_3
    :goto_0
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    iput-object v2, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object p0

    :cond_4
    :goto_1
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    iput-object v4, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->OUT_OF_RANGE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    iput-object p0, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    instance-of v0, p1, Lcom/android/settings/widget/SeekBarPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/preference/SeekBarPreference;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/preference/SeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/preference/SeekBarPreference;->setValueInternal(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
