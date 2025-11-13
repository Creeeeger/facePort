.class public final Lcom/android/settings/development/AdbPreferenceController;
.super Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field public final mRampartObserver:Lcom/android/settings/development/AdbPreferenceController$1;

.field public mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/development/AdbPreferenceController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/settings/development/AdbPreferenceController;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    new-instance p1, Lcom/android/settings/development/AdbPreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/development/AdbPreferenceController$1;-><init>(Lcom/android/settings/development/AdbPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/development/AdbPreferenceController;->mRampartObserver:Lcom/android/settings/development/AdbPreferenceController$1;

    iput-object p2, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDeveloperOptionsSwitchDisabled()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->writeAdbSetting(Z)V

    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final onDeveloperOptionsSwitchEnabled()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/AdbPreferenceController;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->enablePreference(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "rampart_blocked_adb_cmd"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->enablePreference(Z)V

    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v0, 0x7f141f05

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v0, 0x7f140dd1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/AdbPreferenceController;->mRampartObserver:Lcom/android/settings/development/AdbPreferenceController$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rampart_blocked_adb_cmd"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/development/AdbPreferenceController;->mRampartObserver:Lcom/android/settings/development/AdbPreferenceController$1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v1

    const-wide/32 v3, 0x40000

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->enablePreference(Z)V

    iget-object p1, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "rampart_blocked_adb_cmd"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const p1, 0x7f141f05

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const p1, 0x7f140dd1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
