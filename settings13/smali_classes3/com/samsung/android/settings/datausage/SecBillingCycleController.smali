.class public Lcom/samsung/android/settings/datausage/SecBillingCycleController;
.super Lcom/android/settings/core/SecCustomPreferenceController;
.source "SecBillingCycleController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mParent:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/settings/datausage/SecBillingCycleController;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getAvailableBillingCycleSetting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getCycleDay()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$array;->data_usage_billing_cycle_summary:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    .line 55
    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 3

    .line 81
    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getControlType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {v1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getCycleDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatusForControl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 62
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1bd1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleController;->mParent:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    check-cast p1, Landroidx/preference/SecPreference;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->show(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;Landroidx/preference/SecPreference;)Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    const/4 p0, 0x1

    return p0

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
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

.method public setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleController;->mParent:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    return-void
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 2

    .line 90
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getAvailableBillingCycleSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->NOT_SUPPORT_DEVICE:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 100
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/16 v1, 0x1f

    if-le p1, v1, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setCycleDay(I)V

    .line 115
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 108
    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->INVALID_DATA:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 109
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 102
    :catch_0
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->INVALID_DATA:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 103
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 44
    sget-object v0, Lcom/samsung/android/settings/datausage/SecBillingCycleController;->TAG:Ljava/lang/String;

    const-string v1, "updateState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 46
    check-cast p1, Landroidx/preference/SecPreference;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
