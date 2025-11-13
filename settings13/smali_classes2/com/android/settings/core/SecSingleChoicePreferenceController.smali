.class public abstract Lcom/android/settings/core/SecSingleChoicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SecSingleChoicePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private setAttributes(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntries()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getImageEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->setImageList(Ljava/util/List;)Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSubEntries()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->setSubTitleList(Ljava/util/List;)Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->build()Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setRadioItemDataInfo(Lcom/samsung/android/settings/widget/RadioItemDataInfo;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 49
    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->setAttributes(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;)V

    :cond_0
    return-void
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

.method public getControlType()I
    .locals 0

    const/16 p0, 0x65

    return p0
.end method

.method public abstract getEntries()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntryValues()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageEntries()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
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

.method public abstract getSelectedValue()Ljava/lang/String;
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getSubEntries()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getControlType()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntries()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "entries"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "entryValues"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getImageEntries()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "imageEntries"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSubEntries()Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v3, "subEntries"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_0
    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatusForControl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 98
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

    const/4 p0, 0x0

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

    .line 64
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->setSelectedValue(Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public abstract setSelectedValue(Ljava/lang/String;)Z
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 4

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 105
    new-instance v2, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 107
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 113
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->OUT_OF_RANGE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 115
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    if-eq v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->shouldIgnoreUserInteraction()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->ignoreUserInteraction()V

    .line 126
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->setSelectedValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->REQUEST_USER_INTERACTION:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    if-ne p1, v0, :cond_4

    .line 128
    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->REQUEST_SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    goto :goto_1

    .line 130
    :cond_4
    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 138
    :cond_5
    :goto_1
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 139
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 108
    :cond_6
    :goto_2
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->OUT_OF_RANGE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 109
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 57
    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
