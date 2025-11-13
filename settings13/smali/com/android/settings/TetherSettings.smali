.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "TetherSettings.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$EthernetListener;,
        Lcom/android/settings/TetherSettings$TetheringEventCallback;,
        Lcom/android/settings/TetherSettings$OnStartTetheringCallback;,
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KEY_ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field static final KEY_TETHER_PREFS_SCREEN:Ljava/lang/String; = "tether_prefs_screen"

.field static final KEY_TETHER_PREFS_TOP_INTRO:Ljava/lang/String; = "tether_prefs_top_intro"

.field static final KEY_USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field static final KEY_WIFI_TETHER:Ljava/lang/String; = "wifi_tether"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final mAvailableInterfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroidx/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDataSaverFooter:Landroidx/preference/Preference;

.field private mEm:Landroid/net/EthernetManager;

.field private mEthernetListener:Lcom/android/settings/TetherSettings$EthernetListener;

.field private mEthernetTether:Landroidx/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetheringEventCallback:Lcom/android/settings/TetherSettings$TetheringEventCallback;

.field mTm:Landroid/net/TetheringManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$9t3geb1J6ISI-sc7a0t9TffijI4(Lcom/android/settings/TetherSettings;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->lambda$onStart$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KsWjhUGxETszlf1mK3W37m5dcjU(Lcom/android/settings/TetherSettings;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->lambda$onStart$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableInterfaces(Lcom/android/settings/TetherSettings;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothEnableForTether(Lcom/android/settings/TetherSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothPan(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothEnableForTether(Lcom/android/settings/TetherSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMassStorageActive(Lcom/android/settings/TetherSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsbConnected(Lcom/android/settings/TetherSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTethering(Lcom/android/settings/TetherSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBluetoothAndEthernetState(Lcom/android/settings/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothAndEthernetState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBluetoothAndEthernetState(Lcom/android/settings/TetherSettings;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->updateBluetoothAndEthernetState([Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBluetoothState(Lcom/android/settings/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUsbPreference(Lcom/android/settings/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateUsbPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/TetherSettings;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TetheringSettings"

    const/4 v1, 0x3

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/TetherSettings;->DEBUG:Z

    .line 571
    new-instance v0, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v0}, Lcom/android/settings/TetherSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/TetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_tethering"

    .line 139
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    .line 561
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private synthetic lambda$onStart$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onStart$1(Ljava/lang/Runnable;)V
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startTethering(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 519
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 521
    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 522
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 523
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private updateBluetoothAndEthernetState()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->updateBluetoothAndEthernetState([Ljava/lang/String;)V

    return-void
.end method

.method private updateBluetoothAndEthernetState([Ljava/lang/String;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothState()V

    .line 397
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/TetherSettings;->updateEthernetState([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateBluetoothState()V
    .locals 4

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getBluetoothState()I

    move-result v0

    .line 463
    sget-boolean v1, Lcom/android/settings/TetherSettings;->DEBUG:Z

    const-string v2, "TetheringSettings"

    if-eqz v1, :cond_0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBluetoothState() btState : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    const-string/jumbo p0, "updateBluetoothState() Bluetooth state is error!"

    .line 467
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v1, 0xd

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 472
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 474
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isBluetoothTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p0, v3

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 481
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private updateUsbPreference()V
    .locals 5

    .line 433
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 434
    :goto_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    .line 435
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 438
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-boolean p0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 442
    :cond_2
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateUsbState()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getBluetoothState()I
    .locals 0

    .line 448
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 452
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p0

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 558
    sget p0, Lcom/android/settings/R$string;->help_url_tether:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method isBluetoothTetheringOn()Z
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothPan;

    if-eqz p0, :cond_0

    .line 458
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

.method public onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 145
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 146
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    sget p1, Lcom/android/settings/R$xml;->tether_prefs:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    .line 155
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 156
    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    const-string p1, "disabled_on_data_saver"

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Landroidx/preference/Preference;

    const/4 p1, 0x1

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 162
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 167
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->setupTetherPreference()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->setTopIntroPreferenceTitle()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    const-string v0, "connectivity"

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "tethering"

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTm:Landroid/net/TetheringManager;

    .line 182
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/EthernetManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mEm:Landroid/net/EthernetManager;

    .line 184
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, p1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 188
    array-length v0, v0

    if-eqz v0, :cond_3

    move v0, p1

    goto :goto_1

    :cond_3
    move v0, v3

    .line 189
    :goto_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v1, :cond_4

    move v1, p1

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-eqz v2, :cond_5

    .line 191
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 192
    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 195
    :cond_6
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    if-nez v0, :cond_7

    .line 198
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_8

    .line 201
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 204
    :cond_8
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    if-nez v1, :cond_9

    .line 207
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 209
    :cond_9
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/TetherSettings;->onDataSaverChanged(Z)V

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    .line 234
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    .line 235
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 236
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 237
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 238
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Landroidx/preference/Preference;

    iget-boolean p0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 216
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    .line 219
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v0, :cond_1

    .line 534
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 535
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 540
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 541
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_5

    .line 546
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_4

    .line 547
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 549
    :cond_4
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 553
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 317
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 319
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->tethering_settings_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 323
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 328
    :cond_1
    new-instance v0, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    .line 329
    new-instance v0, Lcom/android/settings/TetherSettings$TetheringEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/TetherSettings$TetheringEventCallback;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$TetheringEventCallback-IA;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTetheringEventCallback:Lcom/android/settings/TetherSettings$TetheringEventCallback;

    .line 330
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTm:Landroid/net/TetheringManager;

    new-instance v2, Lcom/android/settings/TetherSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/TetherSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TetherSettings;)V

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetheringEventCallback:Lcom/android/settings/TetherSettings$TetheringEventCallback;

    invoke-virtual {v0, v2, v3}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 332
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "shared"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->registerReceiver()V

    .line 335
    new-instance v0, Lcom/android/settings/TetherSettings$EthernetListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/TetherSettings$EthernetListener;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$EthernetListener-IA;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mEthernetListener:Lcom/android/settings/TetherSettings$EthernetListener;

    .line 336
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_2

    .line 337
    new-instance v1, Lcom/android/settings/TetherSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/TetherSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/TetherSettings;)V

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mEthernetListener:Lcom/android/settings/TetherSettings$EthernetListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 339
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateUsbState()V

    .line 340
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothAndEthernetState()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 345
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 347
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTm:Landroid/net/TetheringManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetheringEventCallback:Lcom/android/settings/TetherSettings$TetheringEventCallback;

    invoke-virtual {v0, v1}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mEthernetListener:Lcom/android/settings/TetherSettings$EthernetListener;

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->removeInterfaceStateListener(Landroid/net/EthernetManager$InterfaceStateListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    .line 356
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTetheringEventCallback:Lcom/android/settings/TetherSettings$TetheringEventCallback;

    return-void
.end method

.method registerReceiver()V
    .locals 4

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 363
    new-instance v1, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$TetherChangeReceiver-IA;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 364
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 367
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.hardware.usb.action.USB_STATE"

    .line 368
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_SHARED"

    .line 372
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    .line 373
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    .line 374
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 377
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 378
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    .line 379
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 382
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method setTopIntroPreferenceTitle()V
    .locals 2

    const-string/jumbo v0, "tether_prefs_top_intro"

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 252
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 253
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isStaApConcurrencySupported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 254
    sget p0, Lcom/android/settings/R$string;->tethering_footer_info_sta_ap_concurrency:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 256
    :cond_0
    sget p0, Lcom/android/settings/R$string;->tethering_footer_info:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    return-void
.end method

.method setupTetherPreference()V
    .locals 1

    const-string/jumbo v0, "usb_tether_settings"

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v0, "enable_bluetooth_tethering"

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    const-string v0, "enable_ethernet_tethering"

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method updateEthernetState([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 491
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    aget-object v5, p1, v2

    .line 492
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_1
    array-length p1, p2

    move v0, v1

    move v2, v0

    :goto_1
    if-ge v0, p1, :cond_3

    aget-object v5, p2, v0

    .line 496
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 499
    :cond_3
    sget-boolean p1, Lcom/android/settings/TetherSettings;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateEthernetState() isAvailable : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isTethered : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TetheringSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v2, :cond_5

    .line 505
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p2, v4

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 506
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 507
    :cond_5
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 508
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p2, v4

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 509
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 511
    :cond_6
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 512
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method updateUsbState([Ljava/lang/String;)V
    .locals 10

    .line 408
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_2

    aget-object v5, p1, v2

    .line 409
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 410
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

    .line 413
    :cond_2
    sget-boolean p1, Lcom/android/settings/TetherSettings;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateUsbState() mUsbConnected : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mMassStorageActive : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

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

    .line 419
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 420
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 421
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    .line 422
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 424
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 427
    :cond_4
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 428
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateUsbPreference()V

    :cond_5
    :goto_2
    return-void
.end method
