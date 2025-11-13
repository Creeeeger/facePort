.class public Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/android/settings/development/OemUnlockDialogHost;
.implements Lcom/android/settings/development/AdbDialogHost;
.implements Lcom/android/settings/development/AdbClearKeysDialogHost;
.implements Lcom/android/settings/development/LogPersistDialogHost;
.implements Lcom/android/settings/development/BluetoothHwOffloadRebootDialog$OnHwOffloadDialogListener;
.implements Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

.field private final mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAvailable:Z

.field private mPreferenceControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mSwitchBarController:Lcom/android/settings/development/DevelopmentSwitchBarController;

.field private final mSystemPropertiesChanged:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothA2dpConfigStore(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferenceControllers(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothA2dp(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 752
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;

    sget v1, Lcom/android/settings/R$xml;->development_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;-><init>(I)V

    sput-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_debugging_features"

    .line 211
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    .line 128
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 196
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;",
            "Lcom/android/settings/development/BluetoothA2dpConfigStore;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    new-instance v1, Lcom/android/settings/development/MemoryUsagePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    new-instance v1, Lcom/android/settings/development/BugReportPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v1, Lcom/android/settings/development/BugReportHandlerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportHandlerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance v1, Lcom/android/settings/development/SystemServerHeapDumpPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SystemServerHeapDumpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v1, Lcom/android/settings/development/RebootWithMtePreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/RebootWithMtePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v1, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v1, Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/StayAwakePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v1, Lcom/android/settings/development/HdcpCheckingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HdcpCheckingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v1, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/settings/development/OemUnlockPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance p1, Lcom/android/settings/development/PictureColorModePreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/PictureColorModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance p1, Lcom/android/settings/development/WebViewAppPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WebViewAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance p1, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance p1, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance p1, Lcom/samsung/android/settings/development/ShowTextIdPreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/ShowTextIdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance p1, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/SaLoggingCheckingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    new-instance p1, Lcom/android/settings/development/AdbPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/AdbPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance p1, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance p1, Lcom/android/settings/development/AtcmdPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AtcmdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance p1, Lcom/android/settings/development/WirelessDebuggingPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    new-instance p1, Lcom/android/settings/development/AdbAuthorizationTimeoutPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AdbAuthorizationTimeoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance p1, Lcom/android/settings/development/LocalTerminalPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance p1, Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    new-instance p1, Lcom/android/settings/development/AutomaticSystemServerHeapDumpPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AutomaticSystemServerHeapDumpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance p1, Lcom/android/settings/development/MockLocationAppPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/MockLocationAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    new-instance p1, Lcom/android/settings/development/MockModemPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/MockModemPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance p1, Lcom/android/settings/development/DebugViewAttributesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DebugViewAttributesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance p1, Lcom/android/settings/development/SelectDebugAppPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/SelectDebugAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance p1, Lcom/android/settings/development/WaitForDebuggerPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance p1, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance p1, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance p1, Lcom/samsung/android/settings/development/SiopModePreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/SiopModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance p1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance p1, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance p1, Lcom/android/settings/development/ArtVerifierPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ArtVerifierPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance p1, Lcom/android/settings/development/LogdSizePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/LogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance p1, Lcom/android/settings/development/EnableSamsungLogPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableSamsungLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance p1, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/settings/development/LogPersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance p1, Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance p1, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance p1, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    new-instance p1, Lcom/android/settings/development/WifiSafePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiSafePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance p1, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    new-instance p1, Lcom/android/settings/development/WifiNonPersistentMacRandomizationPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WifiNonPersistentMacRandomizationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance p1, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    new-instance p1, Lcom/samsung/android/settings/development/MultiCorePacketSchedulerPreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/MultiCorePacketSchedulerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance p1, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance p1, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    new-instance p1, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance p1, Lcom/samsung/android/settings/development/BluetoothDisableAvcBlocklistPreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/BluetoothDisableAvcBlocklistPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance p1, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance p1, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    new-instance p1, Lcom/samsung/android/settings/development/BluetoothHfpRvpCodecPreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/BluetoothHfpRvpCodecPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    new-instance p1, Lcom/samsung/android/settings/development/BluetoothHfpDisablePreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/BluetoothHfpDisablePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    new-instance p1, Lcom/samsung/android/settings/development/BluetoothDualModeDisablePreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/BluetoothDualModeDisablePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    new-instance p1, Lcom/samsung/android/settings/development/BluetoothMapNetworkTypePreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/BluetoothMapNetworkTypePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    new-instance p1, Lcom/samsung/android/settings/development/BluetoothSapActivationController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/BluetoothSapActivationController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance p1, Lcom/android/settings/development/NetworkModeOf5gTypeController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/NetworkModeOf5gTypeController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance p1, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;

    const-string/jumbo v1, "sim_vonr_calls0"

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    new-instance p1, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;

    const-string/jumbo v1, "sim_vonr_calls1"

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    new-instance p1, Lcom/android/settings/development/NfcStackDebugLogPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/NfcStackDebugLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance p1, Lcom/android/settings/development/ShowTapsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowTapsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    new-instance p1, Lcom/android/settings/development/PointerLocationPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/PointerLocationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    new-instance p1, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance p1, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    new-instance p1, Lcom/android/settings/development/ShowRefreshRatePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowRefreshRatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance p1, Lcom/android/settings/development/RtlLayoutPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/RtlLayoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance p1, Lcom/android/settings/development/WindowAnimationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    new-instance p1, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    new-instance p1, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance p1, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    new-instance p1, Lcom/android/settings/development/SecondaryDisplayPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    new-instance p1, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance p1, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    new-instance p1, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance p1, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    new-instance p1, Lcom/android/settings/development/ForceDarkPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForceDarkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    new-instance p1, Lcom/android/settings/development/EnableBlursPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableBlursPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    new-instance p1, Lcom/android/settings/development/ForceMSAAPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForceMSAAPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    new-instance p1, Lcom/android/settings/development/HardwareOverlaysPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    new-instance p1, Lcom/android/settings/development/SimulateColorSpacePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    new-instance p1, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    new-instance p1, Lcom/android/settings/development/StrictModePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/StrictModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    new-instance p1, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    new-instance p1, Lcom/android/settings/development/KeepActivitiesPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/KeepActivitiesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance p1, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance p1, Lcom/android/settings/development/CachedAppsFreezerPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/CachedAppsFreezerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance p1, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    new-instance p1, Lcom/android/settings/development/AppsNotRespondingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AppsNotRespondingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance p1, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    new-instance p1, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    new-instance p1, Lcom/android/settings/development/ResizableActivityPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ResizableActivityPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    new-instance p1, Lcom/android/settings/development/FreeformWindowsPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/FreeformWindowsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    new-instance p1, Lcom/android/settings/development/DesktopModePreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/DesktopModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    new-instance p1, Lcom/android/settings/development/NonResizableMultiWindowPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/NonResizableMultiWindowPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    new-instance p1, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    new-instance p1, Lcom/android/settings/development/PackagePolicyPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/PackagePolicyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    new-instance p1, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string/jumbo v1, "running_apps"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "demo_mode"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string/jumbo v1, "quick_settings_tiles"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "feature_flags_dashboard"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance p1, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "density"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "background_check"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance p1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v1, "inactive_apps"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    new-instance p1, Lcom/android/settings/development/autofill/AutofillCategoryController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/autofill/AutofillCategoryController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance p1, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance p1, Lcom/android/settings/development/autofill/AutofillResetOptionsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/autofill/AutofillResetOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;

    invoke-direct {p1, p0, p2, p4, p3}, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothSampleRateDialogPreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/bluetooth/BluetoothSampleRateDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothBitPerSampleDialogPreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/bluetooth/BluetoothBitPerSampleDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothQualityDialogPreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/bluetooth/BluetoothQualityDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothChannelModeDialogPreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/bluetooth/BluetoothChannelModeDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothHDAudioPreferenceController;

    invoke-direct {p1, p0, p2, p4, p3}, Lcom/android/settings/development/bluetooth/BluetoothHDAudioPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    new-instance p1, Lcom/android/settings/development/storage/SharedDataPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/storage/SharedDataPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    new-instance p1, Lcom/android/settings/development/OverlaySettingsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/OverlaySettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance p1, Lcom/android/settings/development/StylusHandwritingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/StylusHandwritingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance p1, Lcom/android/settings/development/IngressRateLimitPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/IngressRateLimitPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance p1, Lcom/samsung/android/settings/development/DisableMessageSandboxingPreferenceController;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/development/DisableMessageSandboxingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 717
    new-instance p1, Lcom/android/settings/development/BackAnimationPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/BackAnimationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private disableDeveloperOptions()V
    .locals 3

    .line 534
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 537
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 538
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->blockPokes()V

    .line 540
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 541
    instance-of v2, v1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v2, :cond_1

    .line 542
    check-cast v1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    .line 543
    invoke-virtual {v1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    goto :goto_0

    .line 546
    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->unblockPokes()V

    .line 547
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    return-void
.end method

.method private enableDeveloperOptions()V
    .locals 2

    .line 522
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 525
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 526
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 527
    instance-of v1, v0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v1, :cond_1

    .line 528
    check-cast v0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleQsTileLongPressActionIfAny()V
    .locals 3

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "DevSettingsDashboard"

    const-string v2, "Developer options started from qstile long-press"

    .line 289
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    .line 290
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_1

    return-void

    .line 296
    :cond_1
    const-class v2, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;

    .line 298
    invoke-virtual {v0}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Long press from wireless debugging qstile"

    .line 299
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/development/WirelessDebuggingFragment;

    .line 301
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x727

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .line 507
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 511
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    .line 512
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .line 517
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 518
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 482
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    const/4 p0, 0x0

    return-object p0

    .line 486
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 487
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    .line 486
    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    return-object p1
.end method

.method getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DevSettingsDashboard"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x27

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 477
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$xml;->placeholder_prefs:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$xml;->development_settings:I

    :goto_0
    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_developer_options"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 234
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 253
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 256
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBarController:Lcom/android/settings/development/DevelopmentSwitchBarController;

    if-eqz p1, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBarController:Lcom/android/settings/development/DevelopmentSwitchBarController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 260
    :cond_1
    new-instance p1, Lcom/android/settings/development/DevelopmentSwitchBarController;

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-boolean v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/settings/development/DevelopmentSwitchBarController;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SettingsMainSwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBarController:Lcom/android/settings/development/DevelopmentSwitchBarController;

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->enableDeveloperOptions()V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->handleQsTileLongPressActionIfAny()V

    goto :goto_0

    .line 269
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result p1

    if-nez p1, :cond_4

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->development_settings_not_available:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 245
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 452
    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_0

    .line 455
    check-cast v2, Lcom/android/settings/development/OnActivityResultListener;

    .line 456
    invoke-interface {v2, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 461
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onAdbClearKeysDialogConfirmed()V
    .locals 1

    .line 401
    const-class v0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->onClearAdbKeysConfirmed()V

    return-void
.end method

.method protected onBindPreferences()V
    .locals 1

    .line 495
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onBindPreferences()V

    .line 496
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "games_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    return-void
.end method

.method public onBluetoothCodecChanged()V
    .locals 2

    .line 730
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 731
    instance-of v1, v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;

    if-nez v1, :cond_0

    .line 733
    check-cast v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    .line 734
    invoke-virtual {v0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->onBluetoothCodecUpdated()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBluetoothHDAudioEnabled(Z)V
    .locals 2

    .line 741
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 742
    instance-of v1, v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    if-eqz v1, :cond_0

    .line 743
    check-cast v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->onHDAudioEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->init(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 218
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dev_settings_disabled_warning:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 311
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->registerReceivers()V

    .line 312
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 313
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 318
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 3

    .line 323
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 324
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->unregisterReceivers()V

    .line 326
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 328
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/SystemProperties;->removeChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method onDisableDevelopmentOptionsConfirmed()V
    .locals 0

    .line 560
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    return-void
.end method

.method onDisableDevelopmentOptionsRejected()V
    .locals 1

    .line 565
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public onDisableLogPersistDialogConfirmed()V
    .locals 1

    .line 408
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogConfirmed()V

    return-void
.end method

.method public onDisableLogPersistDialogRejected()V
    .locals 1

    .line 415
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogRejected()V

    return-void
.end method

.method public onEnableAdbDialogConfirmed()V
    .locals 1

    .line 386
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/AdbPreferenceController;

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogConfirmed()V

    return-void
.end method

.method public onEnableAdbDialogDismissed()V
    .locals 1

    .line 394
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/AdbPreferenceController;

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogDismissed()V

    return-void
.end method

.method onEnableDevelopmentOptionsConfirmed()V
    .locals 0

    .line 551
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->enableDeveloperOptions()V

    return-void
.end method

.method onEnableDevelopmentOptionsRejected()V
    .locals 1

    .line 556
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public onHwOffloadDialogCanceled()V
    .locals 1

    .line 436
    const-class v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->onHwOffloadDialogCanceled()V

    return-void
.end method

.method public onHwOffloadDialogConfirmed()V
    .locals 1

    .line 422
    const-class v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 423
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->onHwOffloadDialogConfirmed()V

    return-void
.end method

.method public onOemUnlockDialogConfirmed()V
    .locals 1

    .line 372
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockConfirmed()V

    return-void
.end method

.method public onOemUnlockDialogDismissed()V
    .locals 1

    .line 379
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockDismissed()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eq p2, p1, :cond_4

    if-eqz p2, :cond_1

    .line 348
    invoke-static {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    goto :goto_1

    .line 350
    :cond_1
    const-class p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    if-eqz p1, :cond_3

    .line 360
    invoke-virtual {p1}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->isDefaultValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 364
    :cond_2
    invoke-static {p0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    goto :goto_1

    .line 362
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected shouldSkipForInitialSUW()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
