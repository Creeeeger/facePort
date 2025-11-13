.class public Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SecTetherDataSaverFooterPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# instance fields
.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field mPreference:Lcom/samsung/android/settings/widget/SecClickableTextPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;)I
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecClickableTextPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecClickableTextPreference;

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->onDataSaverChanged(Z)V

    .line 92
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->tether_settings_disabled_on_data_saver_subtext:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_tether_settings_title_all:I

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->data_saver_title_chn:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->data_saver_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecClickableTextPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->setBeginIndex(I)V

    .line 101
    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecClickableTextPreference;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->setEndIndex(I)V

    .line 102
    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController$1;-><init>(Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;)V

    .line 112
    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecClickableTextPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecClickableTextPreference;->setClickableSpan(Landroid/text/style/ClickableSpan;)V

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecClickableTextPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x4

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

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(II)V
    .locals 0

    return-void
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecClickableTextPreference;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    return-void
.end method

.method public startTethering()V
    .locals 0

    return-void
.end method

.method public updateController()V
    .locals 0

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
