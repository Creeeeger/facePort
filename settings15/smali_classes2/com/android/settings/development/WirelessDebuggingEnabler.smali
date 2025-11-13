.class public final Lcom/android/settings/development/WirelessDebuggingEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mListener:Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;

.field public mListeningToOnSwitchChange:Z

.field public final mRampartObserver:Lcom/android/settings/development/WirelessDebuggingEnabler$1;

.field public mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field public final mSettingsObserver:Lcom/android/settings/development/WirelessDebuggingEnabler$1;

.field public final mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/widget/MainSwitchBarController;Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    new-instance v1, Lcom/android/settings/development/WirelessDebuggingEnabler$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/development/WirelessDebuggingEnabler$1;-><init>(Lcom/android/settings/development/WirelessDebuggingEnabler;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mRampartObserver:Lcom/android/settings/development/WirelessDebuggingEnabler$1;

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    iput-object p0, p2, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    invoke-virtual {p2}, Lcom/android/settings/widget/MainSwitchBarController;->setupView()V

    iput-object p3, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListener:Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/android/settings/development/WirelessDebuggingEnabler$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v0, p2}, Lcom/android/settings/development/WirelessDebuggingEnabler$1;-><init>(Lcom/android/settings/development/WirelessDebuggingEnabler;Landroid/os/Handler;I)V

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSettingsObserver:Lcom/android/settings/development/WirelessDebuggingEnabler$1;

    return-void
.end method


# virtual methods
.method public final isAdbWifiEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "adb_wifi_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isUsbDebuggingAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result p0

    const-string v0, "isUsbDebuggingAllowed = "

    const-string v1, "WirelessDebuggingEnabler"

    invoke-static {v0, v1, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSettingsObserver:Lcom/android/settings/development/WirelessDebuggingEnabler$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mRampartObserver:Lcom/android/settings/development/WirelessDebuggingEnabler$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    iput-boolean v1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/WirelessDebuggingEnabler;->isAdbWifiEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/WirelessDebuggingEnabler;->onWirelessDebuggingEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "adb_wifi_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSettingsObserver:Lcom/android/settings/development/WirelessDebuggingEnabler$1;

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/development/WirelessDebuggingEnabler;->isUsbDebuggingAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "rampart_blocked_adb_cmd"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mRampartObserver:Lcom/android/settings/development/WirelessDebuggingEnabler$1;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/development/WirelessDebuggingEnabler;->updateState$1()V

    return-void
.end method

.method public final onSwitchToggled(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f140294

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    return p1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "adb_wifi_enabled"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v0
.end method

.method public final onWirelessDebuggingEnabled(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListener:Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/android/settings/development/WirelessDebuggingFragment;

    const-string v0, "WirelessDebuggingFrag"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mDeviceNamePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mIpAddrPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairingMethodsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mFooterCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string p1, "adb"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mAdbManager:Landroid/debug/IAdbManager;

    :try_start_0
    invoke-interface {p1}, Landroid/debug/IAdbManager;->getPairedDevices()[Landroid/debug/FingerprintAndPairDevice;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    iget-object v5, v4, Landroid/debug/FingerprintAndPairDevice;->keyFingerprint:Ljava/lang/String;

    iget-object v4, v4, Landroid/debug/FingerprintAndPairDevice;->device:Landroid/debug/PairDevice;

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/development/WirelessDebuggingFragment;->updatePairedDevicePreferences(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mAdbManager:Landroid/debug/IAdbManager;

    invoke-interface {p1}, Landroid/debug/IAdbManager;->getAdbWirelessPort()I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mConnectionPort:I

    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnabled(): connect_port="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mConnectionPort:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Unable to request the paired list for Adb wireless"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    sget-object p1, Lcom/android/settings/development/WirelessDebuggingFragment;->sAdbIpAddressPreferenceController:Lcom/android/settings/development/AdbIpAddressPreferenceController;

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mIpAddrPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/development/AdbIpAddressPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mDeviceNamePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mIpAddrPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairingMethodsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mFooterCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateState$1()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/WirelessDebuggingEnabler;->isUsbDebuggingAllowed()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "rampart_blocked_adb_cmd"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :goto_1
    return-void
.end method
