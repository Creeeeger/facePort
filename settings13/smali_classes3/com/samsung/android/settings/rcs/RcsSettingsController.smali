.class public Lcom/samsung/android/settings/rcs/RcsSettingsController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "RcsSettingsController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_RCS_SETTINGS:Ljava/lang/String; = "rcs_settings_partial_branded_cpr"

.field private static final TAG:Ljava/lang/String; = "RcsSettingsController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

.field private mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "rcs_settings_partial_branded_cpr"

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p1, p2}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 25
    new-instance p1, Lcom/samsung/android/settings/rcs/PreferenceController;

    iget-object p2, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/rcs/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    return-void
.end method

.method private removePreference(Landroidx/preference/Preference;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/rcs/PreferenceController;->removePreference(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 31
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    const-string v0, "rcs_settings_partial_branded_cpr"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/rcs/PreferenceController;->displaySwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isDisabledForUser(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const-string p0, "getAvailabilityStatus : true"

    .line 95
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "rcs_settings_partial_branded_cpr"

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
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
    .locals 3

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isChecked()Z

    move-result p0

    .line 52
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCheck() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getPermanentDisable()Z

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettingsController;->isChecked()Z

    move-result p0

    invoke-virtual {v1, p1, v0, p0}, Lcom/samsung/android/settings/rcs/PreferenceController;->refreshSwitchSummary(Landroidx/preference/Preference;ZZ)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 59
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCheck() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.messaging"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->rcs_settings_title_when_partial_branded_for_cpr:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v2, p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->showAlertDialog(ZLjava/lang/String;Landroid/content/Context;)V

    return v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->checkMdmRcsStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    invoke-virtual {p1, v1, v1}, Lcom/samsung/android/settings/rcs/PreferenceController;->setChecked(ZZ)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/rcs/RcsUtils;->setRcsUserSetting(Z)Z

    move-result v1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/settings/rcs/PreferenceController;->setChecked(ZZ)V

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/rcs/PreferenceController;->getSwitchPreference()Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/rcs/RcsSettingsController;->refreshSummary(Landroidx/preference/Preference;)V

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 37
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {p1}, Lcom/samsung/android/settings/rcs/RcsUtils;->updateAlertDialog()V

    .line 38
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/rcs/PreferenceController;->getSwitchPreference()Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/rcs/RcsSettingsController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
