.class public Lcom/samsung/android/wifi/SemWifiManager;
.super Ljava/lang/Object;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;,
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;,
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;,
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;,
        Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;,
        Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;,
        Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;,
        Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigSubscription;,
        Lcom/samsung/android/wifi/SemWifiManager$WifiUwbCoexStatusCode;,
        Lcom/samsung/android/wifi/SemWifiManager$OptimizerMode;,
        Lcom/samsung/android/wifi/SemWifiManager$IWC;,
        Lcom/samsung/android/wifi/SemWifiManager$BandType;,
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApLogger;,
        Lcom/samsung/android/wifi/SemWifiManager$HotspotAntennaMode;,
        Lcom/samsung/android/wifi/SemWifiManager$TestModuleId;,
        Lcom/samsung/android/wifi/SemWifiManager$TasPolicy;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_AUTO_WIFI_BUBBLE_TIP:Ljava/lang/String; = "com.samsung.android.wifi.ACTION_AUTO_WIFI_BUBBLE_TIP"

.field public static final blacklist ACTION_AUTO_WIFI_SCAN_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.wifi.AUTO_WIFI_SCAN_STATE_CHANGED"

.field public static final blacklist ACTION_DIAGNOSIS_RESULT_AVAILABLE:Ljava/lang/String; = "com.samsung.android.net.wifi.wifiguider.DIAGNOSIS_RESULT_AVAILABLE"

.field public static final blacklist ACTION_ISSUE_DETECTED:Ljava/lang/String; = "com.samsung.android.net.wifi.ISSUE_DETECTED"

.field public static final blacklist ACTION_NETWORK_CONNECT_FAILED:Ljava/lang/String; = "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

.field public static final whitelist ACTION_WIFI_AP_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = false
        since = "16.0"
    .end annotation
.end field

.field public static final whitelist ACTION_WIFI_AP_STA_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = false
        since = "16.0"
    .end annotation
.end field

.field public static final whitelist BAND_2GHZ:I = 0x2

.field public static final whitelist BAND_5GHZ:I = 0x5

.field public static final whitelist BAND_6GHZ:I = 0x6

.field public static final blacklist BASE_ASSOC_REJECT_REASON:I = 0x2710

.field public static final blacklist BUSY:I = 0x2

.field public static final blacklist DEFAULT_PROVISION_VALUE:I = 0x0

.field public static final blacklist ERROR:I = 0x0

.field public static final blacklist ERROR_AUTH_FAILURE_EAP_CA_CERTIFICATION:I = 0x4

.field public static final blacklist ERROR_AUTH_FAILURE_EAP_DOMAIN_MISMATCH:I = 0x5

.field public static final blacklist ERROR_AUTH_FAILURE_EAP_FAILURE:I = 0x3

.field public static final blacklist ERROR_AUTH_FAILURE_NONE:I = 0x0

.field public static final blacklist ERROR_AUTH_FAILURE_TIMEOUT:I = 0x1

.field public static final blacklist ERROR_AUTH_FAILURE_WRONG_PSWD:I = 0x2

.field public static final blacklist ERROR_DHCP:I = 0x4e20

.field public static final blacklist EXTRA_AUTO_WIFI_SCAN_AVAILABLE:Ljava/lang/String; = "autoWifiScanAvailable"

.field public static final blacklist EXTRA_BIGDATA_FEATURE:Ljava/lang/String; = "bigdataFeature"

.field public static final blacklist EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final blacklist EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field public static final blacklist EXTRA_CATEGORY_ID:Ljava/lang/String; = "categoryId"

.field public static final blacklist EXTRA_NET_ID:Ljava/lang/String; = "networkId"

.field public static final blacklist EXTRA_PATTERN_ID:Ljava/lang/String; = "patternId"

.field public static final blacklist EXTRA_REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final whitelist EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = false
        since = "16.0"
    .end annotation
.end field

.field public static final whitelist EXTRA_WIFI_AP_STA_COUNT:Ljava/lang/String; = "STA_COUNT"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = false
        since = "16.0"
    .end annotation
.end field

.field public static final blacklist HOTSPOT_MODE_MIMO:I = 0x1

.field public static final blacklist HOTSPOT_MODE_SISO:I = 0x2

.field public static final blacklist INTERWORKING_DISABLED_BY_DEVICE:I = 0x2

.field public static final blacklist INTERWORKING_DISABLED_BY_USER:I = 0x0

.field public static final blacklist INTERWORKING_ENABLED_BY_DEVICE:I = 0x3

.field public static final blacklist INTERWORKING_ENABLED_BY_USER:I = 0x1

.field public static final blacklist INTERWORKING_INVALID_VALUE:I = -0x1

.field public static final blacklist IN_PROGRESS:I = 0x1

.field public static final blacklist KEY_GEO_LOCATION_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final blacklist KEY_GEO_LOCATION_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final blacklist MAX_CLIENT:I = 0xa

.field public static final blacklist MHSDBG:Z

.field public static final blacklist OPTIMIZER_MODE_DEFAULT:I = 0x0

.field public static final blacklist OPTIMIZER_MODE_FORCE_DISABLE:I = 0x2

.field public static final blacklist OPTIMIZER_MODE_FORCE_ENABLE:I = 0x1

.field public static final blacklist PROVISION_FAILED:I = 0x2

.field public static final blacklist PROVISION_SUCCESS:I = 0x1

.field public static final blacklist STATUS_WIFI_UWB_COEX_ERROR_INVALID:I = 0x2

.field public static final blacklist STATUS_WIFI_UWB_COEX_ERROR_REJECT:I = 0x1

.field public static final blacklist STATUS_WIFI_UWB_COEX_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiManager"

.field public static final blacklist TAS_POLICY_HIGH:I = 0x2

.field public static final blacklist TAS_POLICY_LOW:I = 0x0

.field public static final blacklist TAS_POLICY_MID:I = 0x1

.field public static final blacklist TAS_POLICY_UNDER_HIGH:I = 0x5

.field public static final blacklist TAS_POLICY_UNDER_LOW:I = 0x3

.field public static final blacklist TAS_POLICY_UNDER_MID:I = 0x4

.field public static final blacklist TAS_POLICY_UNKNOWN:I = -0x1

.field public static final blacklist TEST_MODULE_ID_AUTO_WIFI:I = 0x1

.field public static final blacklist TEST_MODULE_ID_BACK_OFF_CONTROLLER:I = 0x6

.field public static final blacklist TEST_MODULE_ID_HAL_MONKEY_TEST:I = 0x7

.field public static final blacklist TEST_MODULE_ID_MAX:I = 0x8

.field public static final blacklist TEST_MODULE_ID_QOS_PROFILE_SHARE:I = 0x2

.field public static final blacklist TEST_MODULE_ID_SCPM_MONITOR:I = 0x4

.field public static final blacklist TEST_MODULE_ID_SILENT_ROAMING_TEST:I = 0x5

.field public static final blacklist TEST_MODULE_ID_WLAN_AUTO_TEST:I = 0x3

.field public static final blacklist WIFI_AP_DRIVER_STATE_HANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

.field public static final whitelist WIFI_AP_STATE_DISABLED:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = false
        since = "16.0"
    .end annotation
.end field

.field public static final whitelist WIFI_AP_STATE_DISABLING:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = false
        since = "16.0"
    .end annotation
.end field

.field public static final whitelist WIFI_AP_STATE_ENABLED:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = false
        since = "16.0"
    .end annotation
.end field

.field public static final whitelist WIFI_AP_STATE_ENABLING:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = false
        since = "16.0"
    .end annotation
.end field

.field public static final whitelist WIFI_AP_STATE_FAILED:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = false
        since = "16.0"
    .end annotation
.end field

.field public static final blacklist WIFI_AP_STA_DHCPACK_EVENT:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

.field public static final blacklist WIFI_CONNECTIVITY_HIDE_ICON_ACTION:Ljava/lang/String; = "com.sec.android.WIFI_ICON_HIDE_ACTION"

.field public static final blacklist WIFI_CONNECTIVITY_TEST_REPORT_ACTION:Ljava/lang/String; = "com.sec.android.WIFI_CONNECTIVITY_ACTION"

.field public static final blacklist WIFI_DIALOG_CANCEL_ACTION:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

.field public static final blacklist WIFI_DIALOG_ENABLING_HOTSPOT:I = 0x2

.field public static final blacklist WIFI_TCP_MONITOR_ACTION_SETTINGS:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_ACTION_SETTINGS"

.field public static final blacklist WIFI_TCP_MONITOR_ACTION_USE_MOBILE_DATA:Ljava/lang/String; = "com.samsung.android.net.wifi.TCP_MONITOR_ACTION_USE_MOBILE_DATA"

.field public static final blacklist WIFI_TCP_MONITOR_DELETE_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

.field public static final blacklist WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED"

.field public static final blacklist WIFI_WCM_CONFIGURATION_CHANGED:Ljava/lang/String; = "com.sec.android.WIFI_WCM_CONFIGURATION_CHANGED"

.field public static final blacklist WIFI_WCM_ICON_INVALID_FORCED:I = 0x0

.field public static final blacklist WIFI_WCM_ICON_NOT_FORCED:I = -0x1

.field public static final blacklist WIFI_WCM_ICON_VALID_FORCED:I = 0x1

.field public static final blacklist WIFI_WCM_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.sec.android.WIFI_WCM_STATE_CHANGED_ACTION"

.field private static final blacklist sSemAbTestConfigurationUpdateObserverMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lcom/samsung/android/wifi/ISemWifiManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiManager;->sSemAbTestConfigurationUpdateObserverMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/wifi/ISemWifiManager;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    return-void
.end method

.method private blacklist insertHotSpotEnabledHistory(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setwifiap packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "yy/MM/dd kk:mm:ss "

    invoke-static {v6, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    const-string v6, "]\n"

    const-string v7, ":"

    const-string v8, "["

    const-string v9, " setwifiap "

    const-string v10, "extra_log"

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "():"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->reportHotspotDumpLogs(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist allowAutojoinPasspoint(Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist autohotspotWifiScanConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/wifi/ISemWifiManager;->autohotspotWifiScanConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist blockFccChannelBackoff(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->blockFccChannelBackoff(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist canAutoHotspotBeEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->canAutoHotspotBeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist canSmartMHSLocked()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->canSmartMHSLocked()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist checkAppForWiFiOffloading(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->checkAppForWiFiOffloading(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearAutoHotspotLists()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->clearAutoHotspotLists()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/wifi/ISemWifiManager;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p3}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/wifi/ISemWifiManager;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z
    .locals 11

    move-object v1, p0

    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/samsung/android/wifi/ISemWifiManager;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method public blacklist disableRandomMac()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->disableRandomMac()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disconnectApBlockAutojoin(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->disconnectApBlockAutojoin(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist enableHotspotTsfInfo(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->enableHotspotTsfInfo(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist enableTxPowerLogging(ZI)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->enableTxPowerLogging(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist externalTwtInterface(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->externalTwtInterface(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist factoryReset()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAbTestConfigs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAbTestConfigs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAbTestConfiguredModule(Ljava/lang/String;)Lcom/samsung/android/wifi/SemAbTestConfiguration;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getAbTestConfiguredModule(Ljava/lang/String;)Lcom/samsung/android/wifi/SemAbTestConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAdvancedAutohotspotConnectSettings()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getAdvancedAutohotspotConnectSettings()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public blacklist getAdvancedAutohotspotLCDSettings()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getAdvancedAutohotspotLCDSettings()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public blacklist getAntInfo()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAntInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAutoShareDump()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAutoShareDump()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAutoWifiDefaultValue()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAutoWifiDefaultValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAutoWifiDump()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAutoWifiDump()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getChannelUtilization()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getChannelUtilization()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getChannelUtilizationExtended()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getChannelUtilizationExtended()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getConfiguredNetworkLocations()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getConfiguredNetworkLocations()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCountryCode()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCountryRev()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCountryRev()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCtlFeatureState()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCtlFeatureState()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCurrentL2TransitionMode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCurrentL2TransitionMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCurrentStateAndEnterTime()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCurrentStateAndEnterTime()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCurrentStatusMode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCurrentStatusMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCurrentWifiRouterInfo()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCurrentWifiRouterInfo()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDailyUsageInfo(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getDailyUsageInfo(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDataConsumedValues()[J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getDataConsumedValues()[J

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDcxoCalibrationData()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getDcxoCalibrationData()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDiagnosisResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getDiagnosisResults()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDynamicFeatureStatus()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getDynamicFeatureStatus()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getEasySetupScanSettings()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getEasySetupScanSettings()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFactoryMacAddress()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFrameburstInfo()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getFrameburstInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHotspotAntMode()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getHotspotAntMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getIWCQTables()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getIWCQTables()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIndoorStatus()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getIndoorStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIsPacketCaptureSupportedByDriver()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getIsPacketCaptureSupportedByDriver()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIssueDetectorDump(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getIssueDetectorDump(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIwhState()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getIwhState()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getL2TransitionLog()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getL2TransitionLog()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMHSClientTrafficDetails()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMHSClientTrafficDetails()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMHSConfig(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->getMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMHSMacFromInterface()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMHSMacFromInterface()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMaxTdlsSession()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMaxTdlsSession()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMcfConnectedStatus(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getMcfConnectedStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMcfScanDetail()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMcfScanDetail()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMonthlyDataUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMonthlyDataUsage()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getNRTTrafficbandwidth()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNRTTrafficbandwidth()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getNetworkLastUpdatedTimeMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNetworkLastUpdatedTimeMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getNetworkUsageInfo(Ljava/lang/String;)[J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getNetworkUsageInfo(Ljava/lang/String;)[J

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getNumOfTdlsSession()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNumOfTdlsSession()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getNumOfWifiAnt()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNumOfWifiAnt()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getNumberOfDataInEachRssiLevel()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNumberOfDataInEachRssiLevel()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getOptimizerForceControlMode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getOptimizerForceControlMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getOptimizerState()[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getOptimizerState()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPasspointConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getProfileShareDump()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getProfileShareDump()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getProvisionSuccess()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getProvisionSuccess()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getPsmInfo()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getPsmInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getQoSScores(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRVFModeStatus()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRVFModeStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRoamBand()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamBand()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRoamDelta()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamDelta()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRoamScanPeriod()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamScanPeriod()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRoamTrigger()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamTrigger()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRssi(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getRssi(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSamsungIwhCtrl()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSamsungIwhCtrl()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSamsungMloCtrl()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSamsungMloCtrl()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getServiceDetectionResult()[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getServiceDetectionResult()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSilentRoamingDump(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSilentRoamingDump(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSmartApConnectedStatus(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartApConnectedStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSmartD2DClientConnectedStatus(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSmartMHSLockStatus()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartMHSLockStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoftApBands()[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSoftApBands()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoftApFreq()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSoftApFreq()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoftApSecurityType()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSoftApSecurityType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoftApUpStreamNetworkType()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSoftApUpStreamNetworkType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTWTParams()[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getTWTParams()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTasAverage()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getTasAverage()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTcpMonitorAllSocketHistory(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getTcpMonitorAllSocketHistory(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTcpMonitorDnsHistory(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getTcpMonitorDnsHistory(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTopHotspotClientsToday(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->getTopHotspotClientsToday(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTopHotspotClientsTodayAsString(II)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTxPower()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getTxPower()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getValidState()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getValidState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWcmEverQualityTested()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWcmEverQualityTested()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifi7DisabledCountry()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifi7DisabledCountry()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApBleD2DScanDetail()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApBleD2DScanDetail()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApBleScanDetail()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiApChannel()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApChannel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiApConnectedStationCount()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApConnectedStationCount()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApDailyDataLimit()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApDailyDataLimit()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApFreq()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApFreq()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getWifiApGuestPassword()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApHostapdFreq()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApHostapdFreq()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApHostapdSecurtiy()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApHostapdSecurtiy()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiApInterfaceName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApInterfaceName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getWifiApInterfaceNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApInterfaceNames()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public blacklist getWifiApIsolate()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApIsolate()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getWifiApLOHSState()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApLOHSState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApMacAclMode()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApMacAclMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getWifiApMaxClient()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApMaxClient()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWifiManager"

    const-string v2, "getWifiApMaxClient() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getWifiApMaxClientFromFramework()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApMaxClientFromFramework()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/16 v1, 0xa

    return v1
.end method

.method public blacklist getWifiApStaList()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiApStaListDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWifiApState()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApTodaysTotalDataUsage()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApTodaysTotalDataUsage()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApWarningActivityRunningState()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApWarningActivityRunningState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public blacklist getWifiApWpsPbc()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApWpsPbc()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getWifiCid()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiCid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiEnableHistory()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiEnableHistory()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiFirmwareVersion()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiFirmwareVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiIconVisibility()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiIconVisibility()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiMACAddress()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiMACAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiRouterInfoBestEffortByBssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiRouterInfoBestEffortByBssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiRouterInfoByBssid(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiRouterInfoByBssid(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiRouterInfoPresentableByBssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiRouterInfoPresentableByBssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiStaInfo()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiStaInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiSupportedFeatureSet()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiSupportedFeatureSet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiUsabilityStatsEntry(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiVersions()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiVersions()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist hasConfiguredNetworkLocations(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAvailableAutoWifiScan()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isAvailableAutoWifiScan()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAvailableTdls()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isAvailableTdls()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isCaptureRunning()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isCaptureRunning()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isClientAcceptedWifiProfileSharing(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->isClientAcceptedWifiProfileSharing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isDataSaverEnabled()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isDataSaverEnabled()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isGripSensorMonitorEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isGripSensorMonitorEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isIndividualAppSupported()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isIndividualAppSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isMCFClientAutohotspotSupported()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isMCFClientAutohotspotSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isNCHOModeEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isNCHOModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isNeededToShowWifiApDatalimitReachedDialog()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isNeededToShowWifiApDatalimitReachedDialog()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isOverAllMhsDataLimitReached()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isOverAllMhsDataLimitReached()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isOverAllMhsDataLimitSet()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isOverAllMhsDataLimitSet()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isP2pConnected()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isP2pConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSAFamilySupportedBasedOnCountry()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSAFamilySupportedBasedOnCountry()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isScanningEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isScanningEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSoftAp6ENetwork()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSoftAp6ENetwork()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSoftap11axEnabled()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSoftap11axEnabled()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupportedAutoWifi()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSupportedAutoWifi()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupportedProfileRequest()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSupportedProfileRequest()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupportedQoSProvider()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSupportedQoSProvider()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSwitchToMobileDataDefaultOff()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSwitchToMobileDataDefaultOff()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUploadModeEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isUploadModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUsingNonTerrestrialNetwork()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isUsingNonTerrestrialNetwork()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWesModeEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWesModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWiderBandwidthTdlsSupported()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWiderBandwidthTdlsSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiApConcurrentSupported()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiApEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isWifiApEnabledWithDualBand()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApEnabledWithDualBand()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiApGuestClient(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApGuestClient(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiApGuestModeEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApGuestModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiApGuestModeIsolationEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApGuestModeIsolationEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiApMacAclEnabled()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApMacAclEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isWifiApWpa3Supported()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApWpa3Supported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isWifiDeveloperModeEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiDeveloperModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isWifiSharingEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = false
        since = "16.0"
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiSharingLiteSupported()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiSharingSupported()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist iwhIntendedDisconnection()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->iwhIntendedDisconnection()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist launchWifiApWarningForMcfMHS(IIZ)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->launchWifiApWarningForMcfMHS(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist linkQosQuery(JJJILjava/lang/Long;)Z
    .locals 12

    move-object v1, p0

    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    invoke-interface/range {v2 .. v11}, Lcom/samsung/android/wifi/ISemWifiManager;->linkQosQuery(JJJIJ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public blacklist notifyConnect(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->notifyConnect(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyReachabilityLost()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->notifyReachabilityLost()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readWifiApMacAclList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->readWifiApMacAclList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist registerAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/wifi/SemWifiManager;->sSemAbTestConfigurationUpdateObserverMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;-><init>(Lcom/samsung/android/wifi/SemWifiManager;Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Lcom/samsung/android/wifi/SemWifiManager;->sSemAbTestConfigurationUpdateObserverMap:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v3, v2, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->registerAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->registered()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerClientDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerClientDataUsageCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;)V

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v1, v0, v3, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerClientListDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;Ljava/util/concurrent/Executor;II)V
    .locals 8

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerClientListDataUsageCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;)V

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move-object v4, v0

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/wifi/ISemWifiManager;->registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request AP\'s bssid or callback should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerTasPolicyChangedListener(Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;)V

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/wifi/ISemWifiManager;->registerTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist registerWifiApDataUsageListener(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;Ljava/util/concurrent/Executor;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerApDataUsageChangedListener: listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;->getClient()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->init(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;)V

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v1, v0, v3}, Lcom/samsung/android/wifi/ISemWifiManager;->registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;Ljava/util/concurrent/Executor;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerWifiApSmartCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v1, v0, v3}, Lcom/samsung/android/wifi/ISemWifiManager;->registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeExcludedNetwork(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->removeExcludedNetwork(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeFactoryMacAddress()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->removeFactoryMacAddress()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeNetwork(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->removeNetwork(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->reportAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportHotspotDumpLogs(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->reportHotspotDumpLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportIssue(ILandroid/os/Bundle;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->reportIssue(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportRttStartRangingCallEvent(Ljava/lang/String;)V
    .locals 2

    nop

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const-string v1, "RAPP"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist reportWifiOnOffEvent(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "unknown"

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->addOrUpdateWifiControlHistory(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestPassword(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->requestPassword(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestStopAutohotspotAdvertisement(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->requestStopAutohotspotAdvertisement(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist resetCallbackCondition(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->resetCallbackCondition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resetComebackCondition()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->resetComebackCondition()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resetDeveloperOptionsSettings()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->resetDeveloperOptionsSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resetSoftAp(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->resetSoftAp(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resetTotalPriorityDataConsumedValues()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->resetTotalPriorityDataConsumedValues()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist restoreIWCSettingsValue(II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->restoreIWCSettingsValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist restoreSemConfigurationsBackupData(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->restoreSemConfigurationsBackupData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist retrieveSemWifiConfigsBackupData()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->retrieveSemWifiConfigsBackupData()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist runAutoShareForCurrent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->runAutoShareForCurrent(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist saveFwDump()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->saveFwDump()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist sendReassociationFrequencyRequestFrame(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->sendReassociationFrequencyRequestFrame(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist sendReassociationRequestFrame(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->sendReassociationRequestFrame(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist set5GmmWaveSarBackoffEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->set5GmmWaveSarBackoffEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAdvancedAutohotspotConnectSettings(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAdvancedAutohotspotConnectSettings(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setAdvancedAutohotspotLCDSettings(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAdvancedAutohotspotLCDSettings(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setAllowWifiScan(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAllowWifiScan(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAntInfo(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAntInfo(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAntMode(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAntMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setArdkPowerSaveMode(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setArdkPowerSaveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAutohotspotToastMessage(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAutohotspotToastMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setBtmOptionUserDisabled(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setBtmOptionUserDisabled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setBtmOptionUserEnabled(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setBtmOptionUserEnabled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setConnectionAttemptInfo(IZ)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    const-string v1, ""

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->setConnectionAttemptInfo(IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setConnectionAttemptInfo(IZLjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setConnectionAttemptInfo(IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setConnectivityCheckDisabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setConnectivityCheckDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCountryRev(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setCountryRev(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDcxoCalibrationData(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setDcxoCalibrationData(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDtimInSuspendMode(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setDtimInSuspendMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setEasySetupScanSettings(Ljava/util/List;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    const/16 v0, -0x37

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setEasySetupScanSettings(Ljava/util/List;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist setEasySetupScanSettings(Ljava/util/List;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    iput-object p2, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    iput-object p3, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForSettings:Landroid/app/PendingIntent;

    iput p4, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->minRssi:I

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/wifi/ISemWifiManager;->setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFactoryMacAddress(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setFactoryMacAddress(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFccChannelBackoffEnabled(Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setFccChannelBackoffEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFrameburstInfo(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setFrameburstInfo(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setGripSensorMonitorEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setGripSensorMonitorEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setHotspotAntMode(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setHotspotAntMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setIWCMockAction(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setIWCMockAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setIWCQTables(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setIWCQTables(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setIlaTrainingResult(DLjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setIlaTrainingResult(DLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setImsCallEstablished(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setImsCallEstablished(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setKeepConnection(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setKeepConnectionAlways(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setKeepConnection(ZZ)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setKeepConnection(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setKeepConnectionBigData(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setKeepConnectionBigData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setLatencyCritical(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setLatencyCritical(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setLocalOnlyHotspotEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMHSConfig(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->setMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setMaxDtimInSuspendMode(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setMaxDtimInSuspendMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMcfMultiControlMode(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setMcfMultiControlMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMhsAiServiceNsdResult([I[Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setMhsAiServiceNsdResult([I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMhsAiServiceState(Z[I[I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setMhsAiServiceState(Z[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setNCHOModeEnabled(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setNCHOModeEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setOptimizerForceControlMode(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setOptimizerForceControlMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setPowerSavingTime(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setPowerSavingTime(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setProvisionSuccess(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setProvisionSuccess(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setPsmInfo(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setPsmInfo(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRVFmodeStatus(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRVFmodeStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamBand(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamBand(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamDelta(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamDelta(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamScanChannels([Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamScanChannels([Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamScanEnabled(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamScanEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamScanPeriod(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamScanPeriod(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamTrigger(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamTrigger(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSamsungIwhCtrl(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setSamsungIwhCtrl(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSamsungMloCtrl(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setSamsungMloCtrl(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSmartMHSLocked(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setSmartMHSLocked(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTCRule(ZLjava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setTCRule(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTasPolicy(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->setTasPolicy(II)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTasPolicy(II)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setTasPolicy(II)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTdlsEnabled(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setTdlsEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTestMode(Ljava/lang/Boolean;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->setTestMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTestSettings(ILandroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setTestSettings(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "settings should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setTrafficPatternTestSettings(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setTrafficPatternTestSettings(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "settings should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setUploadModeEnabled(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setUploadModeEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUserConfirmForSharingPassword(ZLjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setUserConfirmForSharingPassword(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setVerboseLoggingEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setVerboseLoggingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWesModeEnabled(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWesModeEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiAiIwhInferenceResult([Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiAiIwhInferenceResult([Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiAiIwhTrainingResult(Ljava/lang/String;III)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiAiIwhTrainingResult(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiAiServiceNsdResult([I[I[I[Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiAiServiceNsdResult([I[I[I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiAiServiceState(Z[I[I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiAiServiceState(Z[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApClientDataPaused(Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientDataPaused(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApClientEditedName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientEditedName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApClientMobileDataLimit(Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientMobileDataLimit(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApClientTimeLimit(Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientTimeLimit(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApConfigurationToDefault()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApConfigurationToDefault()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setWifiApDailyDataLimit(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApDailyDataLimit(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setWifiApEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApGuestModeEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApGuestModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApGuestModeIsolationEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApGuestModeIsolationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApGuestPassword(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApGuestPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApIsolate(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApIsolate(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public blacklist setWifiApMacAclEnable(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMacAclEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setWifiApMacAclMode(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMacAclMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public blacklist setWifiApMaxClient(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMaxClient(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApMaxClientToFramework(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMaxClientToFramework(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public blacklist setWifiApWarningActivityRunning(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApWarningActivityRunning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setWifiApWpsPbc(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApWpsPbc(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public blacklist setWifiDeveloperModeEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiDeveloperModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiSettingsForegroundState(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiSettingsForegroundState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public blacklist setWifiSharingEnabled(Z)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiSharingEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setWifiUwbCoexEnabled(IZ)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiUwbCoexEnabled(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist shouldShowAutoWifiBubbleTip()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->shouldShowAutoWifiBubbleTip()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startCapture(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->startCapture(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startIssueMonitoring(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->startIssueMonitoring(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startMcfClientMHSDiscovery(Z)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->startMcfClientMHSDiscovery(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startMcfMHSAdvertisement(Z)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->startMcfMHSAdvertisement(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startScan()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->startScan(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startTimerForWifiOffload()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->startTimerForWifiOffload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist stopCapture()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->stopCapture()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist supportWifiAp5GBasedOnCountry()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWifiManager"

    const-string v2, "supportWifiAp5GBasedOnCountry() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportWifiAp6GBasedOnCountry()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWifiManager"

    const-string v2, "supportWifiAp6GBasedOnCountry() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist triggerBackoffRoutine(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->triggerBackoffRoutine(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unRegisterWifiApDataUsageListener(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterWifiApDataUsageListener: listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "callid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;->getClient()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->unRegisterWifiApDataUsageCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->cleanUp()V

    nop

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->cleanUp()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserver;)V
    .locals 5

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/wifi/SemWifiManager;->sSemAbTestConfigurationUpdateObserverMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/samsung/android/wifi/SemWifiManager;->sSemAbTestConfigurationUpdateObserverMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SemWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    sget-object v3, Lcom/samsung/android/wifi/SemWifiManager;->sSemAbTestConfigurationUpdateObserverMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;

    invoke-interface {v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;)V

    sget-object v2, Lcom/samsung/android/wifi/SemWifiManager;->sSemAbTestConfigurationUpdateObserverMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterClientDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterClientDataUsageCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "callid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterClientDataUsageCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->cleanUpProxy()V

    nop

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback$SemWifiApClientUpdateCallbackProxy;->cleanUpProxy()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterClientListDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterClientListDataUsageCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "callid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterClientListDataUsageCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;->cleanUpProxy()V

    nop

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;->cleanUpProxy()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterTasPolicyChangedListener(Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$TasPolicyListener$TasPolicyListenerProxy;->cleanUpProxy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist unregisterWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterWifiApSmartCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "callid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterWifiApSmartCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->cleanUpProxy()V

    nop

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->cleanUpProxy()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateGuiderFeature(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->updateGuiderFeature(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateHostapdMacList(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->updateHostapdMacList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public blacklist updateIWCHintCard(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->updateIWCHintCard(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApBleClientRole(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleClientRole(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApBleD2DClientRole(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleD2DClientRole(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApBleD2DMhsRole(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleD2DMhsRole(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApBleMhsRole(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleMhsRole(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApDisassocSta(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApDisassocSta(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApRestoreDailyHotspotDataLimit(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApRestoreDailyHotspotDataLimit(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
