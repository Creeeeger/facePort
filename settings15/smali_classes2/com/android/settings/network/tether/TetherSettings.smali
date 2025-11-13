.class public Lcom/android/settings/network/tether/TetherSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# static fields
.field public static final DEBUG:Z

.field static final KEY_ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field static final KEY_TETHER_PREFS_SCREEN:Ljava/lang/String; = "tether_prefs_screen"

.field static final KEY_TETHER_PREFS_TOP_INTRO:Ljava/lang/String; = "tether_prefs_top_intro"

.field static final KEY_USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field static final KEY_WIFI_TETHER:Ljava/lang/String; = "wifi_tether"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public final mAvailableInterfaces:Ljava/util/HashSet;

.field public mBluetoothEnableForTether:Z

.field public final mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

.field public mBluetoothStateReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

.field mBluetoothTether:Landroidx/preference/TwoStatePreference;

.field public mCm:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field public mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field public mDataSaverEnabled:Z

.field mDataSaverFooter:Landroidx/preference/Preference;

.field public mEm:Landroid/net/EthernetManager;

.field public mEthernetListener:Lcom/android/settings/network/tether/TetherSettings$EthernetListener;

.field mEthernetTether:Landroidx/preference/TwoStatePreference;

.field public final mHandler:Landroid/os/Handler;

.field public mMassStorageActive:Z

.field public final mProfileServiceListener:Lcom/android/settings/network/tether/TetherSettings$1;

.field public mStartTetheringCallback:Lcom/android/settings/network/tether/TetherSettings$OnStartTetheringCallback;

.field public mTetherChangeReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

.field mTm:Landroid/net/TetheringManager;

.field public mUsbConnected:Z

.field mUsbRegexs:[Ljava/lang/String;

.field mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

.field mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TetheringSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/tether/TetherSettings;->DEBUG:Z

    new-instance v0, Lcom/android/settings/network/tether/TetherSettings$2;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/network/tether/TetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    new-instance v0, Lcom/android/settings/network/tether/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/tether/TetherSettings$1;-><init>(Lcom/android/settings/network/tether/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mProfileServiceListener:Lcom/android/settings/network/tether/TetherSettings$1;

    return-void
.end method


# virtual methods
.method public getBluetoothState()I
    .locals 0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p0

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method public isBluetoothTetheringOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothPan;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f170279

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v1, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p1, v1, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    const-string p1, "disabled_on_data_saver"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverFooter:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->setupTetherPreference()V

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->setupViewModel()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/network/tether/TetherSettings;->mProfileServiceListener:Lcom/android/settings/network/tether/TetherSettings$1;

    const/4 v3, 0x5

    invoke-virtual {v1, p1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothStateReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/network/tether/TetherSettings;I)V

    iput-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothStateReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    iget-object v2, p0, Lcom/android/settings/network/tether/TetherSettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->setTopIntroPreferenceTitle()V

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/EthernetManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/EthernetManager;

    iput-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mEm:Landroid/net/EthernetManager;

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v1, :cond_4

    array-length p1, p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_1
    iget-object v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_7
    iget-object v2, p0, Lcom/android/settings/network/tether/TetherSettings;->mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothPan;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    if-nez v1, :cond_a

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p1, p1, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/tether/TetherSettings;->onDataSaverChanged(Z)V

    return-void
.end method

.method public final onDataSaverChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->setDataSaverEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    iget-boolean v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetTether:Landroidx/preference/TwoStatePreference;

    iget-boolean v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverFooter:Landroidx/preference/Preference;

    iget-boolean p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothStateReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothStateReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    :cond_2
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v0, :cond_1

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/network/tether/TetherSettings;->startTethering$1(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    if-ne p1, v0, :cond_3

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/settings/network/tether/TetherSettings;->startTethering$1(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetTether:Landroidx/preference/TwoStatePreference;

    if-ne p1, v0, :cond_5

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/settings/network/tether/TetherSettings;->startTethering$1(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f142ef5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    :cond_1
    new-instance v0, Lcom/android/settings/network/tether/TetherSettings$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/network/tether/TetherSettings$OnStartTetheringCallback;-><init>(Lcom/android/settings/network/tether/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/network/tether/TetherSettings$OnStartTetheringCallback;

    const-string v0, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mMassStorageActive:Z

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->registerReceiver()V

    new-instance v0, Lcom/android/settings/network/tether/TetherSettings$EthernetListener;

    invoke-direct {v0, p0}, Lcom/android/settings/network/tether/TetherSettings$EthernetListener;-><init>(Lcom/android/settings/network/tether/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetListener:Lcom/android/settings/network/tether/TetherSettings$EthernetListener;

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetListener:Lcom/android/settings/network/tether/TetherSettings$EthernetListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/tether/TetherSettings;->updateUsbState([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->updateBluetoothAndEthernetState()V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mTetherChangeReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetListener:Lcom/android/settings/network/tether/TetherSettings$EthernetListener;

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->removeInterfaceStateListener(Landroid/net/EthernetManager$InterfaceStateListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mTetherChangeReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/network/tether/TetherSettings$OnStartTetheringCallback;

    return-void
.end method

.method public registerReceiver()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/network/tether/TetherSettings;I)V

    iput-object v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mTetherChangeReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/network/tether/TetherSettings;->mTetherChangeReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/tether/TetherSettings;->mTetherChangeReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/tether/TetherSettings;->mTetherChangeReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/tether/TetherSettings;->mTetherChangeReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mTetherChangeReceiver:Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/tether/TetherSettings$TetherChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setTopIntroPreferenceTitle()V
    .locals 2

    const-string v0, "tether_prefs_top_intro"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isStaApConcurrencySupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f142eef

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f142eee

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public setupTetherPreference()V
    .locals 1

    const-string v0, "usb_tether_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v0, "enable_bluetooth_tethering"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    const-string v0, "enable_ethernet_tethering"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetTether:Landroidx/preference/TwoStatePreference;

    return-void
.end method

.method public setupViewModel()V
    .locals 9

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    const-string v3, "store"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "factory"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultCreationExtras"

    invoke-static {v2, v3, v0, v1, v2}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object v0

    const-class v1, Lcom/android/settings/network/tether/TetheringManagerModel;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/tether/TetheringManagerModel;

    new-instance v8, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/net/wifi/WifiManager;

    const-string v1, "no_wifi_tethering"

    invoke-static {v2, v1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->hasUserRestrictionFromT(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_0
    const-string v1, "WifiEntResUtils"

    const-string v5, "Wi-Fi Tethering isn\'t available due to user restriction."

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x1

    move-object v1, v8

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;ZZLcom/android/settings/network/tether/TetheringManagerModel;)V

    iput-object v8, p0, Lcom/android/settings/network/tether/TetherSettings;->mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    iget-object v1, v0, Lcom/android/settings/network/tether/TetheringManagerModel;->mTetheringManager:Landroid/net/TetheringManager;

    iput-object v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mTm:Landroid/net/TetheringManager;

    iget-object v0, v0, Lcom/android/settings/network/tether/TetheringManagerModel;->mTetheredInterfaces:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/MutableLiveData;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/tether/TetherSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/tether/TetherSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/tether/TetherSettings;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startTethering$1(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothEnableForTether:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/network/tether/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/network/tether/TetherSettings$OnStartTetheringCallback;

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final updateBluetoothAndEthernetState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->updateBluetoothState$1()V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/network/tether/TetherSettings;->updateEthernetState([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final updateBluetoothState$1()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->getBluetoothState()I

    move-result v0

    sget-boolean v1, Lcom/android/settings/network/tether/TetherSettings;->DEBUG:Z

    const-string v2, "TetheringSettings"

    if-eqz v1, :cond_0

    const-string v1, "updateBluetoothState() btState : "

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    const-string p0, "updateBluetoothState() Bluetooth state is error!"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v1, 0xd

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->isBluetoothTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    iget-boolean p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p0, v3

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    iget-boolean v1, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mBluetoothTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public updateEthernetState([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    aget-object v5, p1, v2

    iget-object v6, p0, Lcom/android/settings/network/tether/TetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p2

    move v0, v1

    move v2, v0

    :goto_1
    if-ge v0, p1, :cond_3

    aget-object v5, p2, v0

    iget-object v6, p0, Lcom/android/settings/network/tether/TetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-boolean p1, Lcom/android/settings/network/tether/TetherSettings;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "updateEthernetState() isAvailable : "

    const-string p2, ", isTethered : "

    const-string v0, "TetheringSettings"

    invoke-static {p1, v3, p2, v2, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetTether:Landroidx/preference/TwoStatePreference;

    iget-boolean p2, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p2, v4

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetTether:Landroidx/preference/TwoStatePreference;

    iget-boolean p2, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p2, v4

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mEthernetTether:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method public final updateUsbPreference()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbConnected:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mMassStorageActive:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/tether/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-boolean p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p0, v2

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public updateUsbState([Ljava/lang/String;)V
    .locals 10

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_2

    aget-object v5, p1, v2

    iget-object v6, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/settings/network/tether/TetherSettings;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateUsbState() mUsbConnected : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mMassStorageActive : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mMassStorageActive:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", usbTethered : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TetheringSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/network/tether/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/tether/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/network/tether/TetherSettings;->updateUsbPreference()V

    :cond_5
    :goto_2
    return-void
.end method
