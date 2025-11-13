.class public abstract Lcom/android/settings/core/TogglePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TogglePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TogglePrefController"


# direct methods
.method public static synthetic $r8$lambda$nxyGPW0OD_dHIohFqcZkWwKiRCc(Lcom/android/settings/core/TogglePreferenceController;Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;->lambda$displayPreference$0(Landroid/widget/Switch;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroid/widget/Switch;Z)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor;->detectToggleJank(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 66
    instance-of v0, p1, Lcom/android/settingslib/widget/MainSwitchPreference;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/android/settingslib/widget/MainSwitchPreference;

    new-instance v0, Lcom/android/settings/core/TogglePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/core/TogglePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/core/TogglePreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

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

    const/4 p0, 0x1

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

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 116
    sget p0, Lcom/android/settings/R$string;->menu_key_network:I

    return p0
.end method

.method public getSliceType()I
    .locals 0

    const/4 p0, 0x1

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

    .line 131
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->getControlType()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_0
    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatusForControl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 137
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

.method public abstract isChecked()Z
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 88
    instance-of v0, p1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/settings/widget/TwoStateButtonPreference;

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 93
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public abstract setChecked(Z)Z
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 4

    .line 142
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->shouldIgnoreUserInteraction()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    .line 152
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->REQUEST_USER_INTERACTION:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    if-ne p1, v1, :cond_2

    .line 154
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->REQUEST_SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    goto :goto_1

    .line 156
    :cond_2
    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 164
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 74
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 76
    :cond_0
    instance-of v0, p1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_1

    .line 77
    check-cast p1, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 78
    :cond_1
    instance-of v0, p1, Lcom/android/settings/widget/TwoStateButtonPreference;

    if-eqz v0, :cond_2

    .line 79
    check-cast p1, Lcom/android/settings/widget/TwoStateButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
