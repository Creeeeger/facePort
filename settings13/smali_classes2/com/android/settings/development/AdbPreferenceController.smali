.class public Lcom/android/settings/development/AdbPreferenceController;
.super Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;
.source "AdbPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/android/settings/development/AdbPreferenceController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 39
    iput-object p1, p0, Lcom/android/settings/development/AdbPreferenceController;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 44
    iput-object p2, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method


# virtual methods
.method public onAdbDialogConfirmed()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->writeAdbSetting(Z)V

    return-void
.end method

.method public onAdbDialogDismissed()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->writeAdbSetting(Z)V

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/AdbPreferenceController;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->enablePreference(Z)V

    :cond_2
    return-void
.end method

.method public showConfirmationDialog(Landroidx/preference/Preference;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/development/EnableAdbWarningDialog;->show(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 101
    invoke-super {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 102
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    new-instance p1, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v0

    const-wide/32 v2, 0x40000

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->enablePreference(Z)V

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
