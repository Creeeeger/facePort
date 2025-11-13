.class public Lcom/samsung/android/settings/datausage/SecSetDataLimitController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecSetDataLimitController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mParent:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 28
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

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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

.method public isChecked()Z
    .locals 4

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->isDataLimitRestrict()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getPolicyLimitBytes()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isControllable()Z
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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 51
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;->mParent:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    if-eqz v2, :cond_1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VPP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;->mParent:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecConfirmLimitFragment;->show(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyLimitBytesByDefault()V

    goto :goto_0

    :cond_2
    const-wide/16 v1, -0x1

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyLimitBytes(J)V

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    const/16 v0, 0x1bd3

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public setParentFragment(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;->mParent:Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 66
    sget-object v0, Lcom/samsung/android/settings/datausage/SecSetDataLimitController;->TAG:Ljava/lang/String;

    const-string v1, "updateState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p0

    .line 72
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 74
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 77
    :cond_2
    sget v1, Lcom/android/settings/R$string;->data_usage_disable_mobile_limit_vzw:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    if-eqz v0, :cond_3

    const-string v0, ""

    .line 79
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->isDataLimitRestrict()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 84
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
