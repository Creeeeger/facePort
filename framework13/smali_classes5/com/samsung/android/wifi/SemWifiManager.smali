.class public Lcom/samsung/android/wifi/SemWifiManager;
.super Ljava/lang/Object;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiManager$WifiUwbCoexStatusCode;,
        Lcom/samsung/android/wifi/SemWifiManager$OptimizerMode;,
        Lcom/samsung/android/wifi/SemWifiManager$IWC;,
        Lcom/samsung/android/wifi/SemWifiManager$BandType;,
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;,
        Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;,
        Lcom/samsung/android/wifi/SemWifiManager$HotspotAntennaMode;,
        Lcom/samsung/android/wifi/SemWifiManager$TestModuleId;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_AUTO_WIFI_BUBBLE_TIP:Ljava/lang/String; = "com.samsung.android.wifi.ACTION_AUTO_WIFI_BUBBLE_TIP"

.field public static final blacklist ACTION_AUTO_WIFI_SCAN_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.wifi.AUTO_WIFI_SCAN_STATE_CHANGED"

.field public static final blacklist ACTION_DIAGNOSIS_RESULT_AVAILABLE:Ljava/lang/String; = "com.samsung.android.net.wifi.wifiguider.DIAGNOSIS_RESULT_AVAILABLE"

.field public static final blacklist ACTION_ISSUE_DETECTED:Ljava/lang/String; = "com.samsung.android.net.wifi.ISSUE_DETECTED"

.field public static final blacklist ACTION_NETWORK_CONNECT_FAILED:Ljava/lang/String; = "com.samsung.android.net.wifi.NETWORK_CONNECT_FAILED"

.field public static final whitelist ACTION_WIFI_AP_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final whitelist ACTION_WIFI_AP_STA_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

.field public static final whitelist BAND_2GHZ:I = 0x2

.field public static final whitelist BAND_5GHZ:I = 0x5

.field public static final whitelist BAND_6GHZ:I = 0x6

.field public static final blacklist BASE_ASSOC_REJECT_REASON:I = 0x2710

.field public static final blacklist BUSY:I = 0x2

.field private static final blacklist DEFAULT_MAX_CLIENT:I = 0xa

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

.field public static final whitelist EXTRA_WIFI_AP_STA_COUNT:Ljava/lang/String; = "STA_COUNT"

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

.field private static final blacklist MAX_CLIENT:I

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

.field public static final blacklist TEST_MODULE_ID_AUTO_WIFI:I = 0x1

.field public static final blacklist TEST_MODULE_ID_MAX:I = 0x6

.field public static final blacklist TEST_MODULE_ID_QOS_PROFILE_SHARE:I = 0x2

.field public static final blacklist TEST_MODULE_ID_SCPM_MONITOR:I = 0x4

.field public static final blacklist TEST_MODULE_ID_SILENT_ROAMING_TEST:I = 0x5

.field public static final blacklist TEST_MODULE_ID_WLAN_AUTO_TEST:I = 0x3

.field public static final blacklist WIFI_AP_DRIVER_STATE_HANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

.field public static final whitelist WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final whitelist WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final whitelist WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final whitelist WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final whitelist WIFI_AP_STATE_FAILED:I = 0xe

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


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lcom/samsung/android/wifi/ISemWifiManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 157
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 158
    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 167
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "CscFeature_Wifi_MaxClient4MobileAp"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/wifi/SemWifiManager;->MAX_CLIENT:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/wifi/ISemWifiManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/wifi/ISemWifiManager;
    .param p3, "ignore"    # Landroid/os/Looper;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    .line 614
    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    .line 615
    return-void
.end method

.method private blacklist insertHotSpotEnabledHistory(Ljava/lang/String;)V
    .locals 11
    .param p1, "apiSignature"    # Ljava/lang/String;

    .line 1731
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "packageName":Ljava/lang/String;
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

    .line 1734
    sget-boolean v1, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1737
    .local v2, "args":Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 1738
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    .line 1739
    .local v4, "callerElement":Ljava/lang/StackTraceElement;
    nop

    .line 1740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1739
    const-string/jumbo v7, "yy/MM/dd kk:mm:ss "

    invoke-static {v7, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1741
    .local v5, "dateTime":Ljava/lang/CharSequence;
    const-string v6, "]\n"

    const-string v7, ":"

    const-string v8, "["

    const-string v9, " setwifiap "

    const-string v10, "extra_log"

    if-eqz v1, :cond_1

    .line 1742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1744
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1745
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "():"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1746
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1742
    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1748
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1750
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1751
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1748
    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    :goto_0
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 1754
    return-void
.end method


# virtual methods
.method public blacklist addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 2697
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2699
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist blockFccChannelBackoff(Z)V
    .locals 2
    .param p1, "choice"    # Z

    .line 2636
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->blockFccChannelBackoff(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2639
    nop

    .line 2640
    return-void

    .line 2637
    :catch_0
    move-exception v0

    .line 2638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist canAutoHotspotBeEnabled()Z
    .locals 2

    .line 1585
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->canAutoHotspotBeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist checkAppForWiFiOffloading(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4050
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->checkAppForWiFiOffloading(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4053
    nop

    .line 4054
    return-void

    .line 4051
    :catch_0
    move-exception v0

    .line 4052
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearAutoHotspotLists()V
    .locals 1

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->clearAutoHotspotLists()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    goto :goto_0

    .line 799
    :catch_0
    move-exception v0

    .line 801
    :goto_0
    return-void
.end method

.method public blacklist connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "mhidden"    # I
    .param p4, "mSecurity"    # I
    .param p5, "mhs_mac"    # Ljava/lang/String;
    .param p6, "Username"    # Ljava/lang/String;
    .param p7, "ver"    # I

    .line 1105
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

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)Z
    .locals 2
    .param p1, "bleaddr"    # Ljava/lang/String;
    .param p2, "client_mac"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 871
    :try_start_0
    invoke-virtual {p3}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    move-result-object v0

    .line 872
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    .line 873
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/wifi/ISemWifiManager;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 874
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z
    .locals 11
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "mhidden"    # I
    .param p4, "mSecurity"    # I
    .param p5, "mhs_mac"    # Ljava/lang/String;
    .param p6, "user_name"    # Ljava/lang/String;
    .param p7, "ver"    # I
    .param p8, "wifiprofileshare"    # Z

    .line 702
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

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist disableRandomMac()V
    .locals 2

    .line 3210
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->disableRandomMac()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3213
    nop

    .line 3214
    return-void

    .line 3211
    :catch_0
    move-exception v0

    .line 3212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disconnectApBlockAutojoin(Z)Z
    .locals 2
    .param p1, "block"    # Z

    .line 3838
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->disconnectApBlockAutojoin(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3839
    :catch_0
    move-exception v0

    .line 3840
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist enableHotspotTsfInfo(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 4119
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->enableHotspotTsfInfo(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4122
    nop

    .line 4123
    return-void

    .line 4120
    :catch_0
    move-exception v0

    .line 4121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist externalTwtInterface(ILjava/lang/String;)V
    .locals 2
    .param p1, "cmdId"    # I
    .param p2, "cmdLine"    # Ljava/lang/String;

    .line 4079
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->externalTwtInterface(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4082
    nop

    .line 4083
    return-void

    .line 4080
    :catch_0
    move-exception v0

    .line 4081
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist factoryReset()V
    .locals 2

    .line 2731
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    nop

    .line 2735
    return-void

    .line 2732
    :catch_0
    move-exception v0

    .line 2733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAdvancedAutohotspotConnectSettings()I
    .locals 2

    .line 726
    const/4 v0, -0x1

    .line 728
    .local v0, "val":I
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getAdvancedAutohotspotConnectSettings()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 730
    goto :goto_0

    .line 729
    :catch_0
    move-exception v1

    .line 731
    :goto_0
    return v0
.end method

.method public blacklist getAdvancedAutohotspotLCDSettings()I
    .locals 2

    .line 762
    const/4 v0, -0x1

    .line 764
    .local v0, "val":I
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getAdvancedAutohotspotLCDSettings()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 766
    goto :goto_0

    .line 765
    :catch_0
    move-exception v1

    .line 767
    :goto_0
    return v0
.end method

.method public blacklist getAntInfo()Ljava/lang/String;
    .locals 2

    .line 1763
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAntInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1764
    :catch_0
    move-exception v0

    .line 1765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAutoShareDump()Ljava/lang/String;
    .locals 2

    .line 3005
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAutoShareDump()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3006
    :catch_0
    move-exception v0

    .line 3007
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAutoWifiDump()Ljava/lang/String;
    .locals 2

    .line 3046
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getAutoWifiDump()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3047
    :catch_0
    move-exception v0

    .line 3048
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getChannelUtilization()I
    .locals 2

    .line 3337
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getChannelUtilization()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3338
    :catch_0
    move-exception v0

    .line 3339
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 3063
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getConfiguredNetworkLocations()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3064
    :catch_0
    move-exception v0

    .line 3065
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 2746
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    .line 2747
    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2748
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lcom/samsung/android/wifi/SemWifiConfiguration;>;"
    if-nez v0, :cond_0

    .line 2749
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2751
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2752
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lcom/samsung/android/wifi/SemWifiConfiguration;>;"
    :catch_0
    move-exception v0

    .line 2753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .line 2836
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2837
    :catch_0
    move-exception v0

    .line 2838
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCountryCode()Ljava/lang/String;
    .locals 2

    .line 3502
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3503
    :catch_0
    move-exception v0

    .line 3504
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCountryRev()Ljava/lang/String;
    .locals 2

    .line 3487
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCountryRev()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3488
    :catch_0
    move-exception v0

    .line 3489
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCurrentStatusMode()I
    .locals 2

    .line 3252
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getCurrentStatusMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3253
    :catch_0
    move-exception v0

    .line 3254
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 2865
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getDiagnosisResults()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2866
    :catch_0
    move-exception v0

    .line 2867
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 3196
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getEasySetupScanSettings()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3197
    :catch_0
    move-exception v0

    .line 3198
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFactoryMacAddress()Ljava/lang/String;
    .locals 2

    .line 2605
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2606
    :catch_0
    move-exception v0

    .line 2607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFrameburstInfo()Ljava/lang/String;
    .locals 2

    .line 1776
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getFrameburstInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHotspotAntMode()I
    .locals 1

    .line 2136
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getHotspotAntMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2137
    :catch_0
    move-exception v0

    .line 2139
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getIWCQTables()Ljava/lang/String;
    .locals 2

    .line 3764
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getIWCQTables()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3765
    :catch_0
    move-exception v0

    .line 3766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIndoorStatus()I
    .locals 2

    .line 2429
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getIndoorStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2430
    :catch_0
    move-exception v0

    .line 2431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIssueDetectorDump(I)Ljava/lang/String;
    .locals 2
    .param p1, "maxCount"    # I

    .line 2783
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getIssueDetectorDump(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2784
    :catch_0
    move-exception v0

    .line 2785
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMHSConfig(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "aJson"    # Lorg/json/JSONObject;

    .line 2173
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

    .line 2174
    :catch_0
    move-exception v0

    .line 2176
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaxTdlsSession()I
    .locals 2

    .line 4261
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMaxTdlsSession()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4262
    :catch_0
    move-exception v0

    .line 4263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMcfConnectedStatus(Ljava/lang/String;)I
    .locals 2
    .param p1, "mhs_mac"    # Ljava/lang/String;

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getMcfConnectedStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 1069
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMcfScanDetail()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 1314
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getMonthlyDataUsage()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getNumOfTdlsSession()I
    .locals 2

    .line 4276
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNumOfTdlsSession()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4277
    :catch_0
    move-exception v0

    .line 4278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getNumOfWifiAnt()I
    .locals 2

    .line 4306
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getNumOfWifiAnt()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4307
    :catch_0
    move-exception v0

    .line 4308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getOptimizerMode()I
    .locals 2

    .line 3908
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getOptimizerMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3909
    :catch_0
    move-exception v0

    .line 3910
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getProfileShareDump()Ljava/lang/String;
    .locals 2

    .line 2991
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getProfileShareDump()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2992
    :catch_0
    move-exception v0

    .line 2993
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getProvisionSuccess()I
    .locals 2

    .line 2376
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getProvisionSuccess()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2377
    :catch_0
    move-exception v0

    .line 2378
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getPsmInfo()Ljava/lang/String;
    .locals 2

    .line 1789
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getPsmInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1790
    :catch_0
    move-exception v0

    .line 1791
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 2880
    .local p1, "bssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2881
    :catch_0
    move-exception v0

    .line 2882
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRVFModeStatus()I
    .locals 2

    .line 2441
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRVFModeStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2442
    :catch_0
    move-exception v0

    .line 2443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRoamBand()I
    .locals 2

    .line 3457
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamBand()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3458
    :catch_0
    move-exception v0

    .line 3459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRoamDelta()I
    .locals 2

    .line 3397
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamDelta()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3398
    :catch_0
    move-exception v0

    .line 3399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRoamScanPeriod()I
    .locals 2

    .line 3427
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamScanPeriod()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3428
    :catch_0
    move-exception v0

    .line 3429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRoamTrigger()I
    .locals 2

    .line 3367
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getRoamTrigger()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3368
    :catch_0
    move-exception v0

    .line 3369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRssi(Ljava/lang/String;)I
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 4021
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getRssi(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4022
    :catch_0
    move-exception v0

    .line 4023
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSilentRoamingDump(I)Ljava/lang/String;
    .locals 2
    .param p1, "maxCount"    # I

    .line 2798
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSilentRoamingDump(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2799
    :catch_0
    move-exception v0

    .line 2800
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSmartApConnectedStatus(Ljava/lang/String;)I
    .locals 2
    .param p1, "mhs_mac"    # Ljava/lang/String;

    .line 1509
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartApConnectedStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1510
    :catch_0
    move-exception v0

    .line 1511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 2
    .param p1, "clientMAC"    # Ljava/lang/String;

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSmartD2DClientConnectedStatus(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoftApBands()[I
    .locals 2

    .line 1570
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSoftApBands()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1571
    :catch_0
    move-exception v0

    .line 1572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .locals 2

    .line 1555
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .line 2090
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2091
    :catch_0
    move-exception v0

    .line 2093
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTWTParams()[I
    .locals 2

    .line 4091
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getTWTParams()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4092
    :catch_0
    move-exception v0

    .line 4093
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTcpMonitorAllSocketHistory(I)Ljava/lang/String;
    .locals 2
    .param p1, "count"    # I

    .line 4175
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getTcpMonitorAllSocketHistory(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4176
    :catch_0
    move-exception v0

    .line 4177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTcpMonitorDnsHistory(I)Ljava/lang/String;
    .locals 2
    .param p1, "count"    # I

    .line 4147
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getTcpMonitorDnsHistory(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4148
    :catch_0
    move-exception v0

    .line 4149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;
    .locals 2
    .param p1, "count"    # I

    .line 4161
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4162
    :catch_0
    move-exception v0

    .line 4163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTopHotspotClientsToday(II)Ljava/util/List;
    .locals 2
    .param p1, "topConnectedAndDisconnected"    # I
    .param p2, "maxListLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation

    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->getTopHotspotClientsToday(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTopHotspotClientsTodayAsString(II)Ljava/lang/String;
    .locals 2
    .param p1, "topConnectedAndDisconnected"    # I
    .param p2, "maxListLength"    # I

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;
    .locals 2
    .param p1, "timestampInMilliSecsDate1"    # J
    .param p3, "timestampInMilliSecsDate2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1303
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getValidState()I
    .locals 2

    .line 3266
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getValidState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3267
    :catch_0
    move-exception v0

    .line 3268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;

    .line 1802
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWcmEverQualityTested()I
    .locals 2

    .line 3224
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWcmEverQualityTested()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3225
    :catch_0
    move-exception v0

    .line 3226
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApBleD2DScanDetail()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiApChannel()I
    .locals 1

    .line 2077
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApChannel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2078
    :catch_0
    move-exception v0

    .line 2080
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .line 1170
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiApConnectedStationCount()I
    .locals 2

    .line 2402
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApConnectedStationCount()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2403
    :catch_0
    move-exception v0

    .line 2404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApDailyDataLimit()J
    .locals 2

    .line 1215
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApDailyDataLimit()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApFreq()I
    .locals 1

    .line 2102
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApFreq()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2103
    :catch_0
    move-exception v0

    .line 2105
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getWifiApGuestPassword()Ljava/lang/String;
    .locals 2

    .line 1248
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiApInterfaceName()Ljava/lang/String;
    .locals 2

    .line 2328
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApInterfaceName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2329
    :catch_0
    move-exception v0

    .line 2330
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getWifiApIsolate()Z
    .locals 2

    .line 2300
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApIsolate()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2301
    :catch_0
    move-exception v0

    .line 2302
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getWifiApLOHSState()I
    .locals 2

    .line 2417
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApLOHSState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2418
    :catch_0
    move-exception v0

    .line 2419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApMacAclMode()I
    .locals 2

    .line 2222
    const/4 v0, 0x0

    .line 2224
    .local v0, "retValue":I
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApMacAclMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2227
    goto :goto_0

    .line 2225
    :catch_0
    move-exception v1

    .line 2226
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 2228
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getWifiApMaxClient()I
    .locals 3

    .line 1924
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApMaxClient()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1925
    :catch_0
    move-exception v0

    .line 1926
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWifiManager"

    const-string v2, "getWifiApMaxClient() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    .end local v0    # "e":Landroid/os/RemoteException;
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getWifiApMaxClientFromFramework()I
    .locals 2

    .line 2364
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApMaxClientFromFramework()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2365
    :catch_0
    move-exception v0

    .line 2366
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/wifi/SemWifiManager;->MAX_CLIENT:I

    return v1
.end method

.method public blacklist getWifiApStaList()Ljava/lang/String;
    .locals 1

    .line 2038
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2039
    :catch_0
    move-exception v0

    .line 2041
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

    .line 2063
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2064
    :catch_0
    move-exception v0

    .line 2066
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWifiApState()I
    .locals 2

    .line 1525
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApTodaysTotalDataUsage()J
    .locals 2

    .line 1203
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApTodaysTotalDataUsage()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiApWarningActivityRunningState()I
    .locals 2

    .line 819
    const/4 v0, 0x0

    .line 821
    .local v0, "val":I
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApWarningActivityRunningState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 823
    goto :goto_0

    .line 822
    :catch_0
    move-exception v1

    .line 824
    :goto_0
    return v0
.end method

.method public blacklist getWifiApWpsPbc()Z
    .locals 2

    .line 2276
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiApWpsPbc()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2277
    :catch_0
    move-exception v0

    .line 2278
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getWifiCid()Ljava/lang/String;
    .locals 2

    .line 2577
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiCid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2578
    :catch_0
    move-exception v0

    .line 2579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiEnableHistory()Ljava/lang/String;
    .locals 2

    .line 2682
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiEnableHistory()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2683
    :catch_0
    move-exception v0

    .line 2684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiFirmwareVersion()Ljava/lang/String;
    .locals 2

    .line 2563
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiFirmwareVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2564
    :catch_0
    move-exception v0

    .line 2565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiIconVisibility()I
    .locals 2

    .line 3238
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiIconVisibility()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3239
    :catch_0
    move-exception v0

    .line 3240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiStaInfo()Ljava/lang/String;
    .locals 2

    .line 4292
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiStaInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4293
    :catch_0
    move-exception v0

    .line 4294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiSupportedFeatureSet()Ljava/lang/String;
    .locals 2

    .line 1613
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiSupportedFeatureSet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1614
    :catch_0
    move-exception v0

    .line 1615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiUsabilityStatsEntry(I)Ljava/lang/String;
    .locals 2
    .param p1, "size"    # I

    .line 4200
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4201
    :catch_0
    move-exception v0

    .line 4202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiVersions()Ljava/lang/String;
    .locals 2

    .line 2591
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->getWifiVersions()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2592
    :catch_0
    move-exception v0

    .line 2593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist hasConfiguredNetworkLocations(Ljava/lang/String;)Z
    .locals 2
    .param p1, "wifiConfigKey"    # Ljava/lang/String;

    .line 3080
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3081
    :catch_0
    move-exception v0

    .line 3082
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAvailableAutoWifiScan()Z
    .locals 2

    .line 3031
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isAvailableAutoWifiScan()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3032
    :catch_0
    move-exception v0

    .line 3033
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAvailableTdls()Z
    .locals 2

    .line 4215
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isAvailableTdls()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4216
    :catch_0
    move-exception v0

    .line 4217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isClientAcceptedWifiProfileSharing(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->isClientAcceptedWifiProfileSharing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    nop

    .line 982
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isGripSensorMonitorEnabled()Z
    .locals 2

    .line 3667
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isGripSensorMonitorEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3668
    :catch_0
    move-exception v0

    .line 3669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isIndividualAppSupported()Z
    .locals 2

    .line 4189
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isIndividualAppSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4190
    :catch_0
    move-exception v0

    .line 4191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isMCFClientAutohotspotSupported()Z
    .locals 2

    .line 1057
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isMCFClientAutohotspotSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isNCHOModeEnabled()Z
    .locals 2

    .line 3515
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isNCHOModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3516
    :catch_0
    move-exception v0

    .line 3517
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isOverAllMhsDataLimitReached()Z
    .locals 2

    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isOverAllMhsDataLimitReached()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isOverAllMhsDataLimitSet()Z
    .locals 2

    .line 1338
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isOverAllMhsDataLimitSet()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isP2pConnected()Z
    .locals 2

    .line 1599
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isP2pConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1600
    :catch_0
    move-exception v0

    .line 1601
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isScanningEnabled()Z
    .locals 2

    .line 3134
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isScanningEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3135
    :catch_0
    move-exception v0

    .line 3136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupportedAutoWifi()Z
    .locals 2

    .line 3018
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSupportedAutoWifi()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3019
    :catch_0
    move-exception v0

    .line 3020
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupportedProfileRequest()Z
    .locals 2

    .line 2976
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSupportedProfileRequest()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2977
    :catch_0
    move-exception v0

    .line 2978
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupportedQoSProvider()Z
    .locals 2

    .line 2961
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isSupportedQoSProvider()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2962
    :catch_0
    move-exception v0

    .line 2963
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUploadModeEnabled()Z
    .locals 2

    .line 3824
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isUploadModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3825
    :catch_0
    move-exception v0

    .line 3826
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWesModeEnabled()Z
    .locals 2

    .line 3570
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWesModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3571
    :catch_0
    move-exception v0

    .line 3572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWiderBandwidthTdlsSupported()Z
    .locals 2

    .line 4230
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWiderBandwidthTdlsSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4231
    :catch_0
    move-exception v0

    .line 4232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiApConcurrentSupported()Z
    .locals 1

    .line 1976
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1977
    :catch_0
    move-exception v0

    .line 1979
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiApEnabled()Z
    .locals 2

    .line 2388
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2389
    :catch_0
    move-exception v0

    .line 2390
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isWifiApEnabledWithDualBand()Z
    .locals 2

    .line 1628
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApEnabledWithDualBand()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiApGuestModeEnabled()Z
    .locals 2

    .line 1259
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApGuestModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiApGuestModeIsolationEnabled()Z
    .locals 2

    .line 1281
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApGuestModeIsolationEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiApMacAclEnabled()Z
    .locals 2

    .line 2236
    const/4 v0, 0x0

    .line 2238
    .local v0, "retValue":Z
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v1}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApMacAclEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2241
    goto :goto_0

    .line 2239
    :catch_0
    move-exception v1

    .line 2240
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 2242
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist isWifiApWpa3Supported()Z
    .locals 2

    .line 2549
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiApWpa3Supported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2550
    :catch_0
    move-exception v0

    .line 2551
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isWifiDeveloperModeEnabled()Z
    .locals 2

    .line 2537
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiDeveloperModeEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2538
    :catch_0
    move-exception v0

    .line 2539
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isWifiSharingEnabled()Z
    .locals 2

    .line 1541
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiSharingLiteSupported()Z
    .locals 1

    .line 2000
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2001
    :catch_0
    move-exception v0

    .line 2003
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiSharingSupported()Z
    .locals 1

    .line 1988
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->isWifiSharingSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1989
    :catch_0
    move-exception v0

    .line 1991
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist linkQosQuery(JJJ)Z
    .locals 7
    .param p1, "payloadBytes"    # J
    .param p3, "desiredLatencyMs"    # J
    .param p5, "desiredThroughputMbps"    # J

    .line 4103
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/wifi/ISemWifiManager;->linkQosQuery(JJJ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4104
    :catch_0
    move-exception v0

    .line 4105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "add_or_delete"    # I
    .param p4, "allow_or_deny"    # I

    .line 2186
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2187
    :catch_0
    move-exception v0

    .line 2188
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist notifyConnect(ILjava/lang/String;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 4133
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->notifyConnect(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4136
    nop

    .line 4137
    return-void

    .line 4134
    :catch_0
    move-exception v0

    .line 4135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyReachabilityLost()V
    .locals 2

    .line 3631
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->notifyReachabilityLost()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3634
    nop

    .line 3635
    return-void

    .line 3632
    :catch_0
    move-exception v0

    .line 3633
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist readWifiApMacAclList(I)Ljava/util/List;
    .locals 2
    .param p1, "allow_or_deny"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2199
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->readWifiApMacAclList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2200
    :catch_0
    move-exception v0

    .line 2201
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    .line 2896
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2901
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2904
    nop

    .line 2905
    return-void

    .line 2902
    :catch_0
    move-exception v0

    .line 2903
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2897
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request AP\'s bssid or callback should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerWifiApDataUsageListener(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1463
    if-eqz p1, :cond_1

    .line 1464
    if-eqz p2, :cond_0

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerApDataUsageChangedListener: listener="

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

    .line 1467
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;->getClient()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;

    move-result-object v0

    .line 1468
    .local v0, "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->init(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;)V

    .line 1469
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1471
    .local v1, "binder":Landroid/os/Binder;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v1, v0, v3}, Lcom/samsung/android/wifi/ISemWifiManager;->registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    nop

    .line 1475
    return-void

    .line 1472
    :catch_0
    move-exception v2

    .line 1473
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1464
    .end local v0    # "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    .end local v1    # "binder":Landroid/os/Binder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1001
    if-eqz p1, :cond_1

    .line 1002
    if-eqz p2, :cond_0

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerWifiApSmartCallback: callback="

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

    .line 1005
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    move-result-object v0

    .line 1006
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    .line 1007
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1009
    .local v1, "binder":Landroid/os/Binder;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v1, v0, v3}, Lcom/samsung/android/wifi/ISemWifiManager;->registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    nop

    .line 1013
    return-void

    .line 1010
    :catch_0
    move-exception v2

    .line 1011
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1002
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    .end local v1    # "binder":Landroid/os/Binder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeExcludedNetwork(I)V
    .locals 2
    .param p1, "networkId"    # I

    .line 3322
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->removeExcludedNetwork(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3325
    nop

    .line 3326
    return-void

    .line 3323
    :catch_0
    move-exception v0

    .line 3324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeFactoryMacAddress()Z
    .locals 2

    .line 1826
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->removeFactoryMacAddress()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1827
    :catch_0
    move-exception v0

    .line 1828
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeNetwork(Ljava/lang/String;)Z
    .locals 2
    .param p1, "configKey"    # Ljava/lang/String;

    .line 2715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2717
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->removeNetwork(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2718
    :catch_0
    move-exception v0

    .line 2719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .line 3991
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3992
    :catch_0
    move-exception v0

    .line 3993
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportHotspotDumpLogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "logs"    # Ljava/lang/String;

    .line 2489
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->reportHotspotDumpLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2492
    nop

    .line 2493
    return-void

    .line 2490
    :catch_0
    move-exception v0

    .line 2491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportIssue(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "reportId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 2766
    if-nez p2, :cond_0

    return-void

    .line 2768
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->reportIssue(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2771
    nop

    .line 2772
    return-void

    .line 2769
    :catch_0
    move-exception v0

    .line 2770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .line 2621
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2624
    nop

    .line 2625
    return-void

    .line 2622
    :catch_0
    move-exception v0

    .line 2623
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportRttStartRangingCallEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2670
    nop

    .line 2671
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unknown"

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 2670
    :goto_0
    const-string v1, "RAPP"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    return-void
.end method

.method public blacklist reportWifiOnOffEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2652
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2653
    const-string/jumbo p2, "unknown"

    .line 2656
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->addOrUpdateWifiControlHistory(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2659
    nop

    .line 2660
    return-void

    .line 2657
    :catch_0
    move-exception v0

    .line 2658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestPassword(Z)V
    .locals 2
    .param p1, "showConfirm"    # Z

    .line 2930
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->requestPassword(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2933
    nop

    .line 2934
    return-void

    .line 2931
    :catch_0
    move-exception v0

    .line 2932
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestStopAutohotspotAdvertisement(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->requestStopAutohotspotAdvertisement(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 719
    :goto_0
    return-void
.end method

.method public blacklist resetSoftAp(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2501
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->resetSoftAp(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    nop

    .line 2505
    return-void

    .line 2502
    :catch_0
    move-exception v0

    .line 2503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist restoreIWCSettingsValue(II)V
    .locals 2
    .param p1, "opType"    # I
    .param p2, "value"    # I

    .line 3752
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->restoreIWCSettingsValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3755
    nop

    .line 3756
    return-void

    .line 3753
    :catch_0
    move-exception v0

    .line 3754
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist restoreSemConfigurationsBackupData(Ljava/lang/String;)V
    .locals 2
    .param p1, "semconfig"    # Ljava/lang/String;

    .line 3704
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->restoreSemConfigurationsBackupData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3707
    nop

    .line 3708
    return-void

    .line 3705
    :catch_0
    move-exception v0

    .line 3706
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist retrieveSemWifiConfigsBackupData()Ljava/lang/String;
    .locals 2

    .line 3716
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->retrieveSemWifiConfigsBackupData()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3717
    :catch_0
    move-exception v0

    .line 3718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2050
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist saveFwDump()Z
    .locals 2

    .line 4005
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->saveFwDump()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4006
    :catch_0
    move-exception v0

    .line 4007
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist sendReassociationRequestFrame(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "channel"    # I

    .line 3619
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->sendReassociationRequestFrame(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3620
    :catch_0
    move-exception v0

    .line 3621
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "channel"    # I
    .param p3, "dwellTime"    # I
    .param p4, "frameBody"    # Ljava/lang/String;

    .line 3601
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3602
    :catch_0
    move-exception v0

    .line 3603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist set5GmmWaveSarBackoffEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1912
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->set5GmmWaveSarBackoffEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    nop

    .line 1916
    return-void

    .line 1913
    :catch_0
    move-exception v0

    .line 1914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAdvancedAutohotspotConnectSettings(I)V
    .locals 1
    .param p1, "val"    # I

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAdvancedAutohotspotConnectSettings(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 755
    :goto_0
    return-void
.end method

.method public blacklist setAdvancedAutohotspotLCDSettings(I)V
    .locals 1
    .param p1, "val"    # I

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAdvancedAutohotspotLCDSettings(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 779
    :goto_0
    return-void
.end method

.method public blacklist setAllowWifiScan(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 3119
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAllowWifiScan(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3122
    nop

    .line 3123
    return-void

    .line 3120
    :catch_0
    move-exception v0

    .line 3121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAntInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 1876
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAntInfo(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1877
    :catch_0
    move-exception v0

    .line 1878
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAntMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 2114
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAntMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    goto :goto_0

    .line 2115
    :catch_0
    move-exception v0

    .line 2117
    :goto_0
    return-void
.end method

.method public blacklist setArdkPowerSaveMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 1643
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setArdkPowerSaveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    nop

    .line 1647
    return-void

    .line 1644
    :catch_0
    move-exception v0

    .line 1645
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAutohotspotToastMessage(I)V
    .locals 1
    .param p1, "noti"    # I

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setAutohotspotToastMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 744
    :goto_0
    return-void
.end method

.method public blacklist setConnectionAttemptInfo(IZ)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "byUser"    # Z

    .line 3692
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    const-string v1, ""

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/wifi/ISemWifiManager;->setConnectionAttemptInfo(IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3695
    nop

    .line 3696
    return-void

    .line 3693
    :catch_0
    move-exception v0

    .line 3694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setConnectionAttemptInfo(IZLjava/lang/String;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "byUser"    # Z
    .param p3, "configKey"    # Ljava/lang/String;

    .line 3680
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setConnectionAttemptInfo(IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3683
    nop

    .line 3684
    return-void

    .line 3681
    :catch_0
    move-exception v0

    .line 3682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setConnectivityCheckDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z

    .line 3643
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setConnectivityCheckDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3646
    nop

    .line 3647
    return-void

    .line 3644
    :catch_0
    move-exception v0

    .line 3645
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCountryRev(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryRev"    # Ljava/lang/String;

    .line 3472
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setCountryRev(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3473
    :catch_0
    move-exception v0

    .line 3474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDtimInSuspendMode(I)V
    .locals 2
    .param p1, "interval"    # I

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setDtimInSuspendMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    nop

    .line 648
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setEasySetupScanSettings(Ljava/util/List;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .param p2, "pendingIntentForIdlePopup"    # Landroid/app/PendingIntent;
    .param p3, "pendingIntentForSettings"    # Landroid/app/PendingIntent;
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

    .line 3183
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, -0x37

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setEasySetupScanSettings(Ljava/util/List;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 3185
    return-void
.end method

.method public blacklist setEasySetupScanSettings(Ljava/util/List;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 3
    .param p2, "pendingIntentForIdlePopup"    # Landroid/app/PendingIntent;
    .param p3, "pendingIntentForSettings"    # Landroid/app/PendingIntent;
    .param p4, "minRssi"    # I
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

    .line 3164
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    return-void

    .line 3166
    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;-><init>()V

    .line 3167
    .local v0, "settings":Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    iput-object p1, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    .line 3168
    iput-object p2, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    .line 3169
    iput-object p3, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForSettings:Landroid/app/PendingIntent;

    .line 3170
    iput p4, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->minRssi:I

    .line 3171
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/wifi/ISemWifiManager;->setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3174
    .end local v0    # "settings":Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    nop

    .line 3175
    return-void

    .line 3172
    :catch_0
    move-exception v0

    .line 3173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFactoryMacAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 1838
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setFactoryMacAddress(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1839
    :catch_0
    move-exception v0

    .line 1840
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFccChannelBackoffEnabled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1852
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setFccChannelBackoffEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    nop

    .line 1856
    return-void

    .line 1853
    :catch_0
    move-exception v0

    .line 1854
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFrameburstInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 1888
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setFrameburstInfo(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1889
    :catch_0
    move-exception v0

    .line 1890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setGripSensorMonitorEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 3655
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setGripSensorMonitorEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3658
    nop

    .line 3659
    return-void

    .line 3656
    :catch_0
    move-exception v0

    .line 3657
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setHotspotAntMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 2125
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setHotspotAntMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2127
    goto :goto_0

    .line 2126
    :catch_0
    move-exception v0

    .line 2128
    :goto_0
    return-void
.end method

.method public blacklist setIWCMockAction(I)V
    .locals 2
    .param p1, "action"    # I

    .line 3800
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setIWCMockAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3803
    nop

    .line 3804
    return-void

    .line 3801
    :catch_0
    move-exception v0

    .line 3802
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setIWCQTables(Ljava/lang/String;)V
    .locals 2
    .param p1, "qTables"    # Ljava/lang/String;

    .line 3776
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setIWCQTables(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3779
    nop

    .line 3780
    return-void

    .line 3777
    :catch_0
    move-exception v0

    .line 3778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setImsCallEstablished(Z)V
    .locals 2
    .param p1, "isEstablished"    # Z

    .line 3852
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setImsCallEstablished(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3855
    nop

    .line 3856
    return-void

    .line 3853
    :catch_0
    move-exception v0

    .line 3854
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setKeepConnection(Z)V
    .locals 2
    .param p1, "keepConnection"    # Z

    .line 3280
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setKeepConnectionAlways(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3283
    nop

    .line 3284
    return-void

    .line 3281
    :catch_0
    move-exception v0

    .line 3282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setKeepConnection(ZZ)V
    .locals 2
    .param p1, "keepConnection"    # Z
    .param p2, "always"    # Z

    .line 3294
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setKeepConnection(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3297
    nop

    .line 3298
    return-void

    .line 3295
    :catch_0
    move-exception v0

    .line 3296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setKeepConnectionBigData(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 3308
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setKeepConnectionBigData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3311
    nop

    .line 3312
    return-void

    .line 3309
    :catch_0
    move-exception v0

    .line 3310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setLatencyCritical(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # I

    .line 3963
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setLatencyCritical(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3964
    :catch_0
    move-exception v0

    .line 3965
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "band"    # I

    .line 1702
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

    .line 1704
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/wifi/ISemWifiManager;->setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMHSConfig(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonMIFI"    # Lorg/json/JSONObject;

    .line 2160
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

    .line 2161
    :catch_0
    move-exception v0

    .line 2163
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setMaxDtimInSuspendMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setMaxDtimInSuspendMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    nop

    .line 633
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setNCHOModeEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 3529
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setNCHOModeEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3530
    :catch_0
    move-exception v0

    .line 3531
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setOptimizerMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 3893
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setOptimizerMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3894
    :catch_0
    move-exception v0

    .line 3895
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .line 3977
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3978
    :catch_0
    move-exception v0

    .line 3979
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setPowerSavingTime(I)V
    .locals 1
    .param p1, "min"    # I

    .line 2148
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setPowerSavingTime(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2150
    goto :goto_0

    .line 2149
    :catch_0
    move-exception v0

    .line 2151
    :goto_0
    return-void
.end method

.method public blacklist setProvisionSuccess(Z)Z
    .locals 2
    .param p1, "set"    # Z

    .line 2340
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setProvisionSuccess(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2341
    :catch_0
    move-exception v0

    .line 2342
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setPsmInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 1864
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setPsmInfo(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1865
    :catch_0
    move-exception v0

    .line 1866
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRVFmodeStatus(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 2453
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRVFmodeStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    nop

    .line 2457
    return-void

    .line 2454
    :catch_0
    move-exception v0

    .line 2455
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamBand(I)Z
    .locals 2
    .param p1, "band"    # I

    .line 3442
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamBand(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3443
    :catch_0
    move-exception v0

    .line 3444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamDelta(I)Z
    .locals 2
    .param p1, "roamDelta"    # I

    .line 3382
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamDelta(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3383
    :catch_0
    move-exception v0

    .line 3384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamScanChannels([Ljava/lang/String;)Z
    .locals 2
    .param p1, "channels"    # [Ljava/lang/String;

    .line 3557
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamScanChannels([Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3558
    :catch_0
    move-exception v0

    .line 3559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamScanEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 3543
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamScanEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3544
    :catch_0
    move-exception v0

    .line 3545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamScanPeriod(I)Z
    .locals 2
    .param p1, "roamScanPeriod"    # I

    .line 3412
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamScanPeriod(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3413
    :catch_0
    move-exception v0

    .line 3414
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRoamTrigger(I)Z
    .locals 2
    .param p1, "roamTrigger"    # I

    .line 3352
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setRoamTrigger(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3353
    :catch_0
    move-exception v0

    .line 3354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;

    .line 1656
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    nop

    .line 1660
    return-void

    .line 1657
    :catch_0
    move-exception v0

    .line 1658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTCRule(ZLjava/lang/String;I)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .line 4067
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setTCRule(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4070
    nop

    .line 4071
    return-void

    .line 4068
    :catch_0
    move-exception v0

    .line 4069
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTdlsEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 4247
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setTdlsEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4248
    :catch_0
    move-exception v0

    .line 4249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTestSettings(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "moduleId"    # I
    .param p2, "settings"    # Landroid/os/Bundle;

    .line 3099
    if-eqz p2, :cond_0

    .line 3103
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setTestSettings(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3106
    nop

    .line 3107
    return-void

    .line 3104
    :catch_0
    move-exception v0

    .line 3105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3100
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "settings should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setUploadModeEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 3812
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setUploadModeEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3813
    :catch_0
    move-exception v0

    .line 3814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUserConfirmForSharingPassword(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isAccept"    # Z
    .param p2, "userData"    # Ljava/lang/String;

    .line 2946
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setUserConfirmForSharingPassword(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2949
    nop

    .line 2950
    return-void

    .line 2947
    :catch_0
    move-exception v0

    .line 2948
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1814
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1815
    :catch_0
    move-exception v0

    .line 1816
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setVerboseLoggingEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 2513
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setVerboseLoggingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2516
    nop

    .line 2517
    return-void

    .line 2514
    :catch_0
    move-exception v0

    .line 2515
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWesModeEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 3584
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWesModeEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3585
    :catch_0
    move-exception v0

    .line 3586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApClientDataPaused(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 1160
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientDataPaused(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    nop

    .line 1164
    return-void

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApClientMobileDataLimit(Ljava/lang/String;J)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 1139
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientMobileDataLimit(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    nop

    .line 1143
    return-void

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApClientTimeLimit(Ljava/lang/String;J)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 1149
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApClientTimeLimit(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    nop

    .line 1153
    return-void

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApConfigurationToDefault()Z
    .locals 1

    .line 2024
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApConfigurationToDefault()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2025
    const/4 v0, 0x1

    return v0

    .line 2026
    :catch_0
    move-exception v0

    .line 2028
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setWifiApDailyDataLimit(J)V
    .locals 2
    .param p1, "bytes"    # J

    .line 1226
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApDailyDataLimit(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    nop

    .line 1230
    return-void

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z
    .locals 2
    .param p1, "softApConfig"    # Landroid/net/wifi/SoftApConfiguration;
    .param p2, "enabled"    # Z

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWifiApEnabled - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->insertHotSpotEnabledHistory(Ljava/lang/String;)V

    .line 1724
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApGuestModeEnabled(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 1270
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApGuestModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    nop

    .line 1274
    return-void

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApGuestModeIsolationEnabled(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 1292
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApGuestModeIsolationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    nop

    .line 1296
    return-void

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApGuestPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "pwd"    # Ljava/lang/String;

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApGuestPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    nop

    .line 1241
    return-void

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApIsolate(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 2288
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApIsolate(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2291
    nop

    .line 2292
    return-void

    .line 2289
    :catch_0
    move-exception v0

    .line 2290
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public blacklist setWifiApMacAclEnable(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 2251
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMacAclEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2254
    goto :goto_0

    .line 2252
    :catch_0
    move-exception v0

    .line 2255
    :goto_0
    return-void
.end method

.method public blacklist setWifiApMacAclMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 2211
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMacAclMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2214
    nop

    .line 2215
    return-void

    .line 2212
    :catch_0
    move-exception v0

    .line 2213
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public blacklist setWifiApMaxClient(I)V
    .locals 2
    .param p1, "num"    # I

    .line 2477
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMaxClient(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2480
    nop

    .line 2481
    return-void

    .line 2478
    :catch_0
    move-exception v0

    .line 2479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiApMaxClientToFramework(I)V
    .locals 1
    .param p1, "num"    # I

    .line 2352
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApMaxClientToFramework(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2355
    nop

    .line 2356
    return-void

    .line 2353
    :catch_0
    move-exception v0

    .line 2354
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public blacklist setWifiApWarningActivityRunning(I)V
    .locals 1
    .param p1, "val"    # I

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApWarningActivityRunning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 812
    :goto_0
    return-void
.end method

.method public blacklist setWifiApWpsPbc(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 2264
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiApWpsPbc(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2267
    nop

    .line 2268
    return-void

    .line 2265
    :catch_0
    move-exception v0

    .line 2266
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public blacklist setWifiDeveloperModeEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 2525
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiDeveloperModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2528
    nop

    .line 2529
    return-void

    .line 2526
    :catch_0
    move-exception v0

    .line 2527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiSettingsForegroundState(I)V
    .locals 1
    .param p1, "val"    # I

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiSettingsForegroundState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 790
    :goto_0
    return-void
.end method

.method public blacklist setWifiSharingEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 2012
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiSharingEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2013
    :catch_0
    move-exception v0

    .line 2015
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setWifiUwbCoexEnabled(IZ)I
    .locals 2
    .param p1, "uwbCh"    # I
    .param p2, "enable"    # Z

    .line 3949
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->setWifiUwbCoexEnabled(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3950
    :catch_0
    move-exception v0

    .line 3951
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startIssueMonitoring(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "settings"    # Landroid/os/Bundle;

    .line 2819
    if-nez p1, :cond_0

    return-void

    .line 2821
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->startIssueMonitoring(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2824
    nop

    .line 2825
    return-void

    .line 2822
    :catch_0
    move-exception v0

    .line 2823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startMcfClientMHSDiscovery(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .line 1081
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->startMcfClientMHSDiscovery(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startMcfMHSAdvertisement(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .line 1093
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->startMcfMHSAdvertisement(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startScan()Z
    .locals 2

    .line 3146
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

    .line 3147
    :catch_0
    move-exception v0

    .line 3148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startTimerForWifiOffload()V
    .locals 2

    .line 4036
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->startTimerForWifiOffload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4039
    nop

    .line 4040
    return-void

    .line 4037
    :catch_0
    move-exception v0

    .line 4038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist supportWifiAp5G()Z
    .locals 3

    .line 1937
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->supportWifiAp5G()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1938
    :catch_0
    move-exception v0

    .line 1939
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWifiManager"

    const-string/jumbo v2, "supportWifiAp5G() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportWifiAp5GBasedOnCountry()Z
    .locals 3

    .line 1950
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1951
    :catch_0
    move-exception v0

    .line 1952
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWifiManager"

    const-string/jumbo v2, "supportWifiAp5GBasedOnCountry() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportWifiAp6GBasedOnCountry()Z
    .locals 3

    .line 1963
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1964
    :catch_0
    move-exception v0

    .line 1965
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWifiManager"

    const-string/jumbo v2, "supportWifiAp6GBasedOnCountry() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist triggerBackoffRoutine(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1900
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->triggerBackoffRoutine(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1903
    nop

    .line 1904
    return-void

    .line 1901
    :catch_0
    move-exception v0

    .line 1902
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unRegisterWifiApDataUsageListener(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;

    .line 1487
    if-eqz p1, :cond_0

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterWifiApDataUsageListener: listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "callid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1489
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1488
    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;->getClient()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;

    move-result-object v0

    .line 1492
    .local v0, "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->unRegisterWifiApDataUsageCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->cleanUp()V

    .line 1497
    nop

    .line 1498
    return-void

    .line 1496
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1493
    :catch_0
    move-exception v1

    .line 1494
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    .end local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .end local p1    # "listener":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1496
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    .restart local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .restart local p1    # "listener":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener;
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;->cleanUp()V

    .line 1497
    throw v1

    .line 1487
    .end local v0    # "client":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApDataUsageListener$SemWifiApDataUsageClient;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    .line 2915
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2918
    nop

    .line 2919
    return-void

    .line 2916
    :catch_0
    move-exception v0

    .line 2917
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 1024
    if-eqz p1, :cond_0

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterWifiApSmartCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "callid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1026
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    const-string v1, "SemWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->getProxy()Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;

    move-result-object v0

    .line 1029
    .local v0, "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager;->unregisterWifiApSmartCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->cleanUpProxy()V

    .line 1034
    nop

    .line 1035
    return-void

    .line 1033
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v1

    .line 1031
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    .end local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .end local p1    # "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    .restart local p0    # "this":Lcom/samsung/android/wifi/SemWifiManager;
    .restart local p1    # "callback":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;->cleanUpProxy()V

    .line 1034
    throw v1

    .line 1024
    .end local v0    # "proxy":Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback$SemWifiApSmartCallbackProxy;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateGuiderFeature(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2849
    if-nez p1, :cond_0

    return-void

    .line 2851
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->updateGuiderFeature(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2854
    nop

    .line 2855
    return-void

    .line 2852
    :catch_0
    move-exception v0

    .line 2853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateHostapdMacList(I)V
    .locals 1
    .param p1, "val"    # I

    .line 2312
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->updateHostapdMacList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2315
    nop

    .line 2316
    return-void

    .line 2313
    :catch_0
    move-exception v0

    .line 2314
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public blacklist updateIWCHintCard(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .line 3788
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/wifi/ISemWifiManager;->updateIWCHintCard(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3791
    nop

    .line 3792
    return-void

    .line 3789
    :catch_0
    move-exception v0

    .line 3790
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;
    .locals 2

    .line 1349
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApBleClientRole(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleClientRole(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApBleD2DClientRole(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleD2DClientRole(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApBleD2DMhsRole(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleD2DMhsRole(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApBleMhsRole(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApBleMhsRole(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApDisassocSta(Ljava/lang/String;)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .line 2465
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApDisassocSta(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2468
    nop

    .line 2469
    return-void

    .line 2466
    :catch_0
    move-exception v0

    .line 2467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 1360
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager;->mService:Lcom/samsung/android/wifi/ISemWifiManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiManager;->wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    nop

    .line 1364
    return-void

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
