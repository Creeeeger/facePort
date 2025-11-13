.class public Lcom/android/settings/development/WirelessDebuggingFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;
.implements Lcom/android/settings/development/DeveloperOptionAwareMixin;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static sAdbIpAddressPreferenceController:Lcom/android/settings/development/AdbIpAddressPreferenceController;


# instance fields
.field public mAdbManager:Landroid/debug/IAdbManager;

.field public mConnectionPort:I

.field public mDeviceNamePreference:Landroidx/preference/Preference;

.field public mFooterCategory:Landroidx/preference/PreferenceCategory;

.field public mIntentFilter:Landroid/content/IntentFilter;

.field public mIpAddrPreference:Landroidx/preference/Preference;

.field public mOffMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

.field public mPairedDevicePreferences:Ljava/util/Map;

.field public mPairedDevicesCategory:Landroidx/preference/PreferenceCategory;

.field public mPairingCodeDialog:Lcom/android/settings/development/AdbWirelessDialog;

.field public final mPairingCodeDialogListener:Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;

.field public mPairingMethodsCategory:Landroidx/preference/PreferenceCategory;

.field public final mReceiver:Lcom/android/settings/development/WirelessDebuggingFragment$1;

.field public mWifiDebuggingEnabler:Lcom/android/settings/development/WirelessDebuggingEnabler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/development/WirelessDebuggingFragment$2;

    const v1, 0x7f170032

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/development/WirelessDebuggingFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;

    invoke-direct {v0, p0}, Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;-><init>(Lcom/android/settings/development/WirelessDebuggingFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairingCodeDialogListener:Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;

    new-instance v0, Lcom/android/settings/development/WirelessDebuggingFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/WirelessDebuggingFragment$1;-><init>(Lcom/android/settings/development/WirelessDebuggingFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mReceiver:Lcom/android/settings/development/WirelessDebuggingFragment$1;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/development/AdbIpAddressPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/development/AdbIpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    sput-object v1, Lcom/android/settings/development/WirelessDebuggingFragment;->sAdbIpAddressPreferenceController:Lcom/android/settings/development/AdbIpAddressPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getDialogMetricsCategory(I)I
    .locals 0

    const/16 p0, 0x728

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WirelessDebuggingFrag"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x727

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170032

    return p0
.end method

.method public final launchPairedDeviceDetailsFragment(Lcom/android/settings/development/AdbPairedDevicePreference;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "paired_device"

    iget-object v2, p1, Lcom/android/settings/development/AdbPairedDevicePreference;->mPairedDevice:Landroid/debug/PairDevice;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v2, 0x7f140290

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const-class v1, Lcom/android/settings/development/AdbDeviceDetailsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 p1, 0x727

    iput p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object v0, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v1, Lcom/android/settings/development/WirelessDebuggingEnabler;

    new-instance v2, Lcom/android/settings/widget/MainSwitchBarController;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/MainSwitchBarController;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-direct {v1, p1, v2, p0, v0}, Lcom/android/settings/development/WirelessDebuggingEnabler;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/widget/MainSwitchBarController;Lcom/android/settings/development/WirelessDebuggingEnabler$OnEnabledListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mWifiDebuggingEnabler:Lcom/android/settings/development/WirelessDebuggingEnabler;

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "WirelessDebuggingFrag"

    const/4 v1, -0x1

    if-nez p1, :cond_2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Processing paired device request"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "request_type"

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string p1, "paired_device"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/debug/PairDevice;

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mAdbManager:Landroid/debug/IAdbManager;

    iget-object p1, p1, Landroid/debug/PairDevice;->guid:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/debug/IAdbManager;->unpairDevice(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to forget the device"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    if-eq p2, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "request_type_pairing"

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_4

    const-string p0, "Successfully paired device"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/development/AdbQrCodePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/AdbQrCodePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/development/AdbQrCodePreferenceController;->setParentFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "adb_device_name_pref"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mDeviceNamePreference:Landroidx/preference/Preference;

    const-string p1, "adb_ip_addr_pref"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mIpAddrPreference:Landroidx/preference/Preference;

    const-string p1, "adb_pairing_methods_category"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairingMethodsCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "adb_pair_method_code_pref"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/WirelessDebuggingFragment;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "adb_paired_devices_category"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicesCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "adb_wireless_footer_category"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mFooterCategory:Landroidx/preference/PreferenceCategory;

    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mOffMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    const p1, 0x7f140293

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mOffMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mFooterCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mOffMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.android.server.adb.WIRELESS_DEBUG_PAIRED_DEVICES"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.server.adb.WIRELESS_DEBUG_STATUS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairingCodeDialogListener:Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Lcom/android/settings/development/AdbWirelessDialog;

    invoke-direct {v3, v0, v2, p1}, Lcom/android/settings/development/AdbWirelessDialog;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;I)V

    if-nez p1, :cond_1

    iput-object v3, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairingCodeDialog:Lcom/android/settings/development/AdbWirelessDialog;

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mAdbManager:Landroid/debug/IAdbManager;

    invoke-interface {p1}, Landroid/debug/IAdbManager;->enablePairingByPairingCode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "WirelessDebuggingFrag"

    const-string v0, "Unable to enable pairing"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairingCodeDialog:Lcom/android/settings/development/AdbWirelessDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v3, Lcom/android/settings/development/AdbWirelessDialog;

    const/4 p1, 0x2

    invoke-direct {v3, p0, v1, p1}, Lcom/android/settings/development/AdbWirelessDialog;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;I)V

    :cond_1
    :goto_1
    return-object v3
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mWifiDebuggingEnabler:Lcom/android/settings/development/WirelessDebuggingEnabler;

    iget-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    iget-object v1, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/WirelessDebuggingEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mReceiver:Lcom/android/settings/development/WirelessDebuggingFragment$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mReceiver:Lcom/android/settings/development/WirelessDebuggingFragment$1;

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final updatePairedDevicePreferences(Ljava/util/Map;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicePreferences:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicePreferences:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicePreferences:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lcom/android/settings/development/AdbPairedDevicePreference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/debug/PairDevice;

    iget-object v3, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/development/AdbPairedDevicePreference;-><init>(Landroid/debug/PairDevice;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicePreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/WirelessDebuggingFragment;I)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicePreferences:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/development/WirelessDebuggingFragment;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicePreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/settings/development/AdbPairedDevicePreference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/debug/PairDevice;

    iget-object v3, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/development/AdbPairedDevicePreference;-><init>(Landroid/debug/PairDevice;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicePreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/WirelessDebuggingFragment;I)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_4
    return-void
.end method
