.class public Landroid/net/wifi/nl80211/WifiNl80211Manager;
.super Ljava/lang/Object;
.source "WifiNl80211Manager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameError;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanResultType;
    }
.end annotation


# static fields
.field public static final whitelist SCANNING_PARAM_ENABLE_6GHZ_RNR:Ljava/lang/String; = "android.net.wifi.nl80211.SCANNING_PARAM_ENABLE_6GHZ_RNR"

.field public static final whitelist SCAN_TYPE_PNO_SCAN:I = 0x1

.field public static final whitelist SCAN_TYPE_SINGLE_SCAN:I = 0x0

.field public static final whitelist SEND_MGMT_FRAME_ERROR_ALREADY_STARTED:I = 0x5

.field public static final whitelist SEND_MGMT_FRAME_ERROR_MCS_UNSUPPORTED:I = 0x2

.field public static final whitelist SEND_MGMT_FRAME_ERROR_NO_ACK:I = 0x3

.field public static final whitelist SEND_MGMT_FRAME_ERROR_TIMEOUT:I = 0x4

.field public static final whitelist SEND_MGMT_FRAME_ERROR_UNKNOWN:I = 0x1

.field private static final blacklist SEND_MGMT_FRAME_TIMEOUT_MS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "WifiNl80211Manager"

.field private static final blacklist TIMEOUT_ALARM_TAG:Ljava/lang/String; = "WifiNl80211Manager Send Management Frame Timeout"


# instance fields
.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mApInterfaceListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IApInterfaceEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mApInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IApInterface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IClientInterface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeathEventHandler:Ljava/lang/Runnable;

.field private blacklist mEventHandler:Landroid/os/Handler;

.field private final blacklist mLastSingleScanTriggeredTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private blacklist mPnoScanEventHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IPnoScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScanEventHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWificond:Landroid/net/wifi/nl80211/IWificond;

.field private blacklist mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

.field private blacklist mWificondScanners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IWifiScannerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlarmManager(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastSingleScanTriggeredTime(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mLastSingleScanTriggeredTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSendMgmtFrameInProgress(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    .line 112
    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    .line 120
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mLastSingleScanTriggeredTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 124
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 403
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 404
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;

    .line 405
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/wifi/nl80211/IWificond;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wificond"    # Landroid/net/wifi/nl80211/IWificond;

    .line 410
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;-><init>(Landroid/content/Context;)V

    .line 411
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 412
    return-void
.end method

.method private blacklist clearState()V
    .locals 2

    .line 1483
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1484
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1485
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1486
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1487
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1488
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1489
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1490
    return-void
.end method

.method private blacklist getApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1299
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IApInterface;

    return-object v0
.end method

.method private blacklist getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 896
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IClientInterface;

    return-object v0
.end method

.method private static blacklist getScanType(I)I
    .locals 3
    .param p0, "scanType"    # I

    .line 1052
    packed-switch p0, :pswitch_data_0

    .line 1060
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1056
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1054
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 964
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    return-object v0
.end method

.method static synthetic blacklist lambda$sendMgmtFrame$2(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1449
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMgmtFrame$3(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1457
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMgmtFrame$4(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1463
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method public static whitelist parseOemSecurityTypeElement(II[B)Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;
    .locals 17
    .param p0, "id"    # I
    .param p1, "idExt"    # I
    .param p2, "bytes"    # [B

    .line 1554
    move/from16 v1, p0

    const/4 v2, 0x0

    .line 1555
    .local v2, "protocol":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1556
    .local v3, "keyManagement":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 1557
    .local v4, "pairwiseCipher":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1558
    .local v5, "groupCipher":I
    const/16 v6, 0x44

    .line 1559
    .local v6, "EID_WAPI":I
    const/4 v7, 0x1

    .line 1560
    .local v7, "RSNE_VERSION":S
    const v8, 0x2721400

    .line 1561
    .local v8, "AKM_WAPI_PSK":I
    const v9, 0x1721400

    .line 1563
    .local v9, "AKM_WAPI_CERT":I
    const/4 v10, 0x0

    const/16 v0, 0x44

    if-ne v1, v0, :cond_3

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OemSecurityType : EID_WAPI id - "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", idExt - "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "WifiNl80211Manager"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-static/range {p2 .. p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1567
    .local v13, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_0

    .line 1568
    const-string v0, "parseWapiElement() incorrect version. return"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    return-object v10

    .line 1572
    :cond_0
    const/4 v2, 0x4

    .line 1573
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 1574
    .local v0, "akmCount":S
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v0, :cond_1

    .line 1575
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 1576
    .local v15, "akm":I
    sparse-switch v15, :sswitch_data_0

    goto :goto_1

    .line 1578
    :sswitch_0
    const/16 v16, 0xd

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    goto :goto_1

    .line 1581
    :sswitch_1
    const/16 v10, 0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    nop

    .line 1574
    .end local v15    # "akm":I
    :goto_1
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    goto :goto_0

    .line 1589
    .end local v14    # "i":I
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1590
    const-string v10, "parseWapiElement() set Default AKM to KEY_MGMT_EAP"

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1596
    .end local v0    # "akmCount":S
    :cond_2
    nop

    .line 1598
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    const/4 v0, 0x5

    .line 1600
    .end local v5    # "groupCipher":I
    .local v0, "groupCipher":I
    new-instance v5, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;

    invoke-direct {v5, v2, v3, v4, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;-><init>(ILjava/util/List;Ljava/util/List;I)V

    return-object v5

    .line 1593
    .end local v0    # "groupCipher":I
    .restart local v5    # "groupCipher":I
    :catch_0
    move-exception v0

    .line 1594
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const-string v10, "IE_Capabilities"

    const-string v12, "Couldn\'t parse WAPI IE, buffer underflow"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/4 v10, 0x0

    return-object v10

    .line 1604
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .end local v13    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    move/from16 v11, p1

    return-object v10

    nop

    :sswitch_data_0
    .sparse-switch
        0x1721400 -> :sswitch_1
        0x2721400 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist retrieveWificondAndRegisterForDeath()Z
    .locals 6

    .line 634
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const/4 v1, 0x1

    const-string v2, "WifiNl80211Manager"

    if-eqz v0, :cond_1

    .line 635
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 636
    const-string v0, "Wificond handle already retrieved"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    return v1

    .line 641
    :cond_1
    const-string/jumbo v0, "wifinl80211"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 642
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/nl80211/IWificond$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificond;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 643
    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 644
    const-string v1, "Failed to get reference to wificond"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return v4

    .line 648
    :cond_2
    :try_start_0
    invoke-interface {v3}, Landroid/net/wifi/nl80211/IWificond;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v5, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V

    invoke-interface {v3, v5, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 649
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    iget-object v5, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-interface {v3, v5}, Landroid/net/wifi/nl80211/IWificond;->registerWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    nop

    .line 655
    return v1

    .line 650
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to register death notification for wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return v4
.end method


# virtual methods
.method public whitelist abortScan(Ljava/lang/String;)V
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1236
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1237
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const-string v1, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return-void

    .line 1242
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->abortScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    goto :goto_0

    .line 1243
    :catch_0
    move-exception v2

    .line 1244
    .local v2, "e1":Landroid/os/RemoteException;
    const-string v3, "Failed to request abortScan due to remote exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    .end local v2    # "e1":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist binderDied()V
    .locals 2

    .line 595
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    return-void
.end method

.method public blacklist disableRandomMac(Ljava/lang/String;)V
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1616
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1617
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const-string v1, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1618
    const-string v2, "No valid wificond scanner interface handler, disableRandomMac"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    return-void

    .line 1623
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->disableRandomMac()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    goto :goto_0

    .line 1624
    :catch_0
    move-exception v2

    .line 1625
    .local v2, "e1":Landroid/os/RemoteException;
    const-string v3, "Failed to request disable random mac due to remote exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    .end local v2    # "e1":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 612
    iput-boolean p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    .line 613
    return-void
.end method

.method public whitelist getChannelsMhzForBand(I)[I
    .locals 6
    .param p1, "band"    # I

    .line 1263
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1264
    const-string v0, "getChannelsMhzForBand: mWificond binder is null! Did wificond die?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-array v0, v1, [I

    return-object v0

    .line 1267
    :cond_0
    const/4 v3, 0x0

    .line 1269
    .local v3, "result":[I
    sparse-switch p1, :sswitch_data_0

    .line 1286
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 1283
    :sswitch_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->getAvailable60gChannels()[I

    move-result-object v0

    .line 1284
    .end local v3    # "result":[I
    .local v0, "result":[I
    move-object v3, v0

    goto :goto_0

    .line 1280
    .end local v0    # "result":[I
    .restart local v3    # "result":[I
    :sswitch_1
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->getAvailable6gChannels()[I

    move-result-object v0

    .line 1281
    .end local v3    # "result":[I
    .restart local v0    # "result":[I
    move-object v3, v0

    goto :goto_0

    .line 1277
    .end local v0    # "result":[I
    .restart local v3    # "result":[I
    :sswitch_2
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->getAvailableDFSChannels()[I

    move-result-object v0

    .line 1278
    .end local v3    # "result":[I
    .restart local v0    # "result":[I
    move-object v3, v0

    goto :goto_0

    .line 1274
    .end local v0    # "result":[I
    .restart local v3    # "result":[I
    :sswitch_3
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->getAvailable5gNonDFSChannels()[I

    move-result-object v0

    .line 1275
    .end local v3    # "result":[I
    .restart local v0    # "result":[I
    move-object v3, v0

    goto :goto_0

    .line 1271
    .end local v0    # "result":[I
    .restart local v3    # "result":[I
    :sswitch_4
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->getAvailable2gChannels()[I

    move-result-object v0

    .line 1272
    .end local v3    # "result":[I
    .restart local v0    # "result":[I
    move-object v3, v0

    .line 1290
    .end local v0    # "result":[I
    .restart local v3    # "result":[I
    :goto_0
    goto :goto_2

    .line 1286
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported band "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "result":[I
    .end local p0    # "this":Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .end local p1    # "band":I
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    .restart local v3    # "result":[I
    .restart local p0    # "this":Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .restart local p1    # "band":I
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to request getChannelsForBand due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    .end local v0    # "e1":Landroid/os/RemoteException;
    :goto_2
    if-nez v3, :cond_1

    .line 1292
    new-array v3, v1, [I

    .line 1294
    :cond_1
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1313
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1314
    const-string v0, "WifiNl80211Manager"

    const-string v2, "getDeviceWiphyCapabilities: mWificond binder is null! Did wificond die?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return-object v1

    .line 1319
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/IWificond;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1320
    :catch_0
    move-exception v0

    .line 1321
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getMaxPnoSsidsPerScan(Ljava/lang/String;)I
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1035
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1036
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    return v1

    .line 1041
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->getMaxPnoSsidsPerScan()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1042
    :catch_0
    move-exception v3

    .line 1043
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to getMaxPnoSsidsPerScan"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getMaxSsidsPerScan(Ljava/lang/String;)I
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1016
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1017
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return v1

    .line 1022
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->getMaxSsidsPerScan()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1023
    :catch_0
    move-exception v3

    .line 1024
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to getMaxSsidsPerScan"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getScanResults(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;"
        }
    .end annotation

    .line 985
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 986
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const-string v1, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 990
    :cond_0
    const/4 v2, 0x0

    .line 992
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/nl80211/NativeScanResult;>;"
    if-nez p2, :cond_1

    .line 993
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->getScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 995
    :cond_1
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->getPnoScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 999
    :goto_0
    goto :goto_1

    .line 997
    :catch_0
    move-exception v3

    .line 998
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to create ScanDetail ArrayList"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .end local v3    # "e1":Landroid/os/RemoteException;
    :goto_1
    if-nez v2, :cond_2

    .line 1001
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 1003
    :cond_2
    iget-boolean v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_3

    .line 1004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan results from wificond"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_3
    return-object v2
.end method

.method public whitelist getTxPacketCounters(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 942
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v0

    .line 943
    .local v0, "iface":Landroid/net/wifi/nl80211/IClientInterface;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond client interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-object v1

    .line 950
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IClientInterface;->getPacketCounters()[I

    move-result-object v3

    .line 951
    .local v3, "resultArray":[I
    if-eqz v3, :cond_2

    array-length v4, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 958
    :cond_1
    nop

    .line 959
    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;

    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-direct {v1, v2, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;-><init>(II)V

    return-object v1

    .line 952
    :cond_2
    :goto_0
    :try_start_1
    const-string v4, "Invalid signal poll result from wificond"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 953
    return-object v1

    .line 955
    .end local v3    # "resultArray":[I
    :catch_0
    move-exception v3

    .line 956
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to do signal polling due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-object v1
.end method

.method public blacklist getWificondEventHandler()Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;
    .locals 1

    .line 417
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    return-object v0
.end method

.method synthetic blacklist lambda$binderDied$0$android-net-wifi-nl80211-WifiNl80211Manager()V
    .locals 2

    .line 596
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Wificond died!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->clearState()V

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 601
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mDeathEventHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 604
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$retrieveWificondAndRegisterForDeath$1$android-net-wifi-nl80211-WifiNl80211Manager()V
    .locals 0

    .line 648
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->binderDied()V

    return-void
.end method

.method public whitelist notifyCountryCodeChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "newCountryCode"    # Ljava/lang/String;

    .line 1363
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    if-nez v0, :cond_0

    .line 1364
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Wificond service doesn\'t exist!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1367
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->notifyCountryCodeChanged()V

    .line 1368
    const-string v0, "WifiNl80211Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive country code change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    goto :goto_0

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1372
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist registerApCallback(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1396
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v0

    .line 1397
    .local v0, "iface":Landroid/net/wifi/nl80211/IApInterface;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid ap interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return v1

    .line 1402
    :cond_0
    if-eqz p3, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 1408
    :cond_1
    :try_start_0
    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    invoke-direct {v3, p0, p2, p3}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;)V

    .line 1410
    .local v3, "wificondCallback":Landroid/net/wifi/nl80211/IApInterfaceEventCallback;
    iget-object v4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    invoke-interface {v0, v3}, Landroid/net/wifi/nl80211/IApInterface;->registerCallback(Landroid/net/wifi/nl80211/IApInterfaceEventCallback;)Z

    move-result v4

    .line 1412
    .local v4, "success":Z
    if-nez v4, :cond_2

    .line 1413
    const-string v5, "Failed to register ap callback."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    return v1

    .line 1419
    .end local v3    # "wificondCallback":Landroid/net/wifi/nl80211/IApInterfaceEventCallback;
    .end local v4    # "success":Z
    :cond_2
    nop

    .line 1420
    const/4 v1, 0x1

    return v1

    .line 1416
    :catch_0
    move-exception v3

    .line 1417
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in registering AP callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    return v1

    .line 1403
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    const-string v3, "registerApCallback called with a null callback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    return v1
.end method

.method public whitelist registerCountryCodeChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)Z
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    .line 1334
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    const/4 v0, 0x0

    return v0

    .line 1337
    :cond_0
    const-string v0, "WifiNl80211Manager"

    const-string v1, "registerCountryCodeEventListener called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->registerCountryCodeChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V

    .line 1339
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist semSetupInterface(Ljava/lang/String;)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting up interface for client mode. iface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 669
    return v2

    .line 672
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->GetClientInterfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 673
    .local v3, "it":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v4

    .line 674
    .local v4, "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    invoke-interface {v4}, Landroid/net/wifi/nl80211/IClientInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 675
    iget-object v5, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-interface {v4}, Landroid/net/wifi/nl80211/IClientInterface;->getWifiScannerImpl()Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v5

    .line 678
    .local v5, "wifiScanner":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    if-nez v5, :cond_1

    .line 679
    const-string v6, "Failed to get IWifiScannerImpl"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    goto :goto_0

    .line 682
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v3    # "it":Landroid/os/IBinder;
    .end local v4    # "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    .end local v5    # "wifiScanner":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    :cond_2
    goto :goto_0

    .line 688
    :cond_3
    nop

    .line 689
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "ignore":Landroid/os/RemoteException;
    const-string v3, "Failed to get IClientInterface due to remote exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return v2
.end method

.method public whitelist sendMgmtFrame(Ljava/lang/String;[BILjava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "frame"    # [B
    .param p3, "mcs"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1442
    const-string v0, "WifiNl80211Manager"

    if-eqz p5, :cond_4

    if-nez p4, :cond_0

    goto :goto_1

    .line 1447
    :cond_0
    if-nez p2, :cond_1

    .line 1448
    const-string v1, "frame cannot be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1450
    return-void

    .line 1454
    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v1

    .line 1455
    .local v1, "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    if-nez v1, :cond_2

    .line 1456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond client interface handler for iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1458
    return-void

    .line 1461
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1462
    const-string v2, "An existing management frame transmission is in progress!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1464
    return-void

    .line 1467
    :cond_3
    new-instance v2, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;

    invoke-direct {v2, p0, p4, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    .line 1469
    .local v2, "sendMgmtFrameEvent":Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;
    :try_start_0
    invoke-interface {v1, p2, v2, p3}, Landroid/net/wifi/nl80211/IClientInterface;->SendMgmtFrame([BLandroid/net/wifi/nl80211/ISendMgmtFrameEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    goto :goto_0

    .line 1470
    :catch_0
    move-exception v3

    .line 1471
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while starting link probe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-virtual {v2, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->OnFailure(I)V

    .line 1476
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1443
    .end local v1    # "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    .end local v2    # "sendMgmtFrameEvent":Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;
    :cond_4
    :goto_1
    const-string v1, "callback cannot be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    return-void
.end method

.method public whitelist setOnServiceDeadCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "deathEventHandler"    # Ljava/lang/Runnable;

    .line 623
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mDeathEventHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Death handler already present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mDeathEventHandler:Ljava/lang/Runnable;

    .line 627
    return-void
.end method

.method public whitelist setupInterfaceForClientMode(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "scanCallback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;
    .param p4, "pnoScanCallback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting up interface for client mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 706
    return v2

    .line 709
    :cond_0
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 714
    :cond_1
    const/4 v0, 0x0

    .line 716
    .local v0, "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3, p1}, Landroid/net/wifi/nl80211/IWificond;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .line 720
    nop

    .line 722
    if-nez v0, :cond_2

    .line 723
    const-string v3, "Could not get IClientInterface instance from wificond"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v2

    .line 726
    :cond_2
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IClientInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 729
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :try_start_1
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IClientInterface;->getWifiScannerImpl()Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v3

    .line 732
    .local v3, "wificondScanner":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    if-nez v3, :cond_3

    .line 733
    const-string v4, "Failed to get WificondScannerImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return v2

    .line 736
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-interface {v3}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 738
    new-instance v2, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;

    invoke-direct {v2, p0, p2, p3}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)V

    .line 739
    .local v2, "scanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;
    iget-object v4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-interface {v3, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->subscribeScanEvents(Landroid/net/wifi/nl80211/IScanEvent;)V

    .line 741
    new-instance v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;

    invoke-direct {v4, p0, p2, p4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)V

    .line 743
    .local v4, "pnoScanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;
    iget-object v5, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-interface {v3, v4}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->subscribePnoScanEvents(Landroid/net/wifi/nl80211/IPnoScanEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 747
    .end local v2    # "scanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;
    .end local v3    # "wificondScanner":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    .end local v4    # "pnoScanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;
    goto :goto_0

    .line 745
    :catch_0
    move-exception v2

    .line 746
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to refresh wificond scanner due to remote exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 717
    :catch_1
    move-exception v3

    .line 718
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to get IClientInterface due to remote exception"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return v2

    .line 710
    .end local v0    # "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    .end local v3    # "e1":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    const-string/jumbo v0, "setupInterfaceForClientMode invoked with null callbacks"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return v2
.end method

.method public whitelist setupInterfaceForSoftApMode(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting up interface for soft ap mode for iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 809
    return v2

    .line 812
    :cond_0
    const/4 v0, 0x0

    .line 814
    .local v0, "apInterface":Landroid/net/wifi/nl80211/IApInterface;
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3, p1}, Landroid/net/wifi/nl80211/IWificond;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 818
    nop

    .line 820
    if-nez v0, :cond_1

    .line 821
    const-string v3, "Could not get IApInterface instance from wificond"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return v2

    .line 824
    :cond_1
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IApInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 827
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const/4 v1, 0x1

    return v1

    .line 815
    :catch_0
    move-exception v3

    .line 816
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to get IApInterface due to remote exception"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return v2
.end method

.method public whitelist signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 911
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v0

    .line 912
    .local v0, "iface":Landroid/net/wifi/nl80211/IClientInterface;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond client interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return-object v1

    .line 919
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IClientInterface;->signalPoll()[I

    move-result-object v3

    .line 920
    .local v3, "resultArray":[I
    if-eqz v3, :cond_2

    array-length v4, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 927
    :cond_1
    nop

    .line 928
    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    aget v4, v3, v4

    const/4 v5, 0x3

    aget v5, v3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;-><init>(IIII)V

    return-object v1

    .line 921
    :cond_2
    :goto_0
    :try_start_1
    const-string v4, "Invalid signal poll result from wificond"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 922
    return-object v1

    .line 924
    .end local v3    # "resultArray":[I
    :catch_0
    move-exception v3

    .line 925
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to do signal polling due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return-object v1
.end method

.method public whitelist singleScanIsProgress()Z
    .locals 8

    .line 1630
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mLastSingleScanTriggeredTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1631
    return v1

    .line 1633
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mLastSingleScanTriggeredTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1634
    .local v4, "elapsedTimeFromLastSingleScanTriggered":J
    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    const-wide/16 v6, 0xfa0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "single scan is in progress : elapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const/4 v0, 0x1

    return v0

    .line 1640
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mLastSingleScanTriggeredTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1641
    return v1
.end method

.method public whitelist startPnoScan(Ljava/lang/String;Landroid/net/wifi/nl80211/PnoSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pnoSettings"    # Landroid/net/wifi/nl80211/PnoSettings;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;

    .line 1173
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1174
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return v1

    .line 1179
    :cond_0
    if-eqz p4, :cond_3

    if-nez p3, :cond_1

    goto :goto_1

    .line 1185
    :cond_1
    :try_start_0
    invoke-interface {v0, p2}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->startPnoScan(Landroid/net/wifi/nl80211/PnoSettings;)Z

    move-result v3

    .line 1186
    .local v3, "success":Z
    if-eqz v3, :cond_2

    .line 1187
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda4;

    invoke-direct {v4, p4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1189
    :cond_2
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda5;

    invoke-direct {v4, p4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    return v3

    .line 1192
    .end local v3    # "success":Z
    :catch_0
    move-exception v3

    .line 1193
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to start pno scan due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1

    .line 1180
    :cond_3
    :goto_1
    const-string/jumbo v3, "startPnoScan called with a null callback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    return v1
.end method

.method public whitelist startScan(Ljava/lang/String;ILjava/util/Set;Ljava/util/List;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1070
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->startScan(Ljava/lang/String;ILjava/util/Set;Ljava/util/List;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist startScan(Ljava/lang/String;ILjava/util/Set;Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .param p5, "extraScanningParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "[B>;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .line 1100
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1101
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return v1

    .line 1105
    :cond_0
    new-instance v3, Landroid/net/wifi/nl80211/SingleScanSettings;

    invoke-direct {v3}, Landroid/net/wifi/nl80211/SingleScanSettings;-><init>()V

    .line 1107
    .local v3, "settings":Landroid/net/wifi/nl80211/SingleScanSettings;
    :try_start_0
    invoke-static {p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScanType(I)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1111
    nop

    .line 1112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    .line 1113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    .line 1114
    if-eqz p5, :cond_1

    .line 1115
    const-string v4, "android.net.wifi.nl80211.SCANNING_PARAM_ENABLE_6GHZ_RNR"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->enable6GhzRnr:Z

    .line 1118
    :cond_1
    if-eqz p3, :cond_2

    .line 1119
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1120
    .local v5, "freq":Ljava/lang/Integer;
    new-instance v6, Landroid/net/wifi/nl80211/ChannelSettings;

    invoke-direct {v6}, Landroid/net/wifi/nl80211/ChannelSettings;-><init>()V

    .line 1121
    .local v6, "channel":Landroid/net/wifi/nl80211/ChannelSettings;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/nl80211/ChannelSettings;->frequency:I

    .line 1122
    iget-object v7, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    .end local v5    # "freq":Ljava/lang/Integer;
    .end local v6    # "channel":Landroid/net/wifi/nl80211/ChannelSettings;
    goto :goto_0

    .line 1125
    :cond_2
    if-eqz p4, :cond_4

    .line 1126
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1127
    .local v5, "ssid":[B
    new-instance v6, Landroid/net/wifi/nl80211/HiddenNetwork;

    invoke-direct {v6}, Landroid/net/wifi/nl80211/HiddenNetwork;-><init>()V

    .line 1128
    .local v6, "network":Landroid/net/wifi/nl80211/HiddenNetwork;
    iput-object v5, v6, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    .line 1132
    iget-object v7, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1133
    iget-object v7, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    .end local v5    # "ssid":[B
    .end local v6    # "network":Landroid/net/wifi/nl80211/HiddenNetwork;
    :cond_3
    goto :goto_1

    .line 1139
    :cond_4
    :try_start_1
    invoke-interface {v0, v3}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->scan(Landroid/net/wifi/nl80211/SingleScanSettings;)Z

    move-result v4

    .line 1140
    .local v4, "result":Z
    if-eqz v4, :cond_5

    .line 1141
    iget-object v5, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mLastSingleScanTriggeredTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1142
    :cond_5
    return v4

    .line 1143
    .end local v4    # "result":Z
    :catch_0
    move-exception v4

    .line 1144
    .local v4, "e1":Landroid/os/RemoteException;
    const-string v5, "Failed to request scan due to remote exception"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    .end local v4    # "e1":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mLastSingleScanTriggeredTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1147
    return v1

    .line 1108
    :catch_1
    move-exception v4

    .line 1109
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Invalid scan type "

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1110
    return v1
.end method

.method public whitelist stopPnoScan(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1211
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1212
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return v1

    .line 1217
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->stopPnoScan()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1218
    :catch_0
    move-exception v3

    .line 1219
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to stop pno scan due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist tearDownClientInterface(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 761
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond client interface handler for iface="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return v1

    .line 766
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    .line 767
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    if-eqz v0, :cond_1

    .line 768
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 769
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribePnoScanEvents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 774
    .end local v0    # "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    :cond_1
    nop

    .line 776
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    if-nez v0, :cond_2

    .line 777
    const-string/jumbo v0, "tearDownClientInterface: mWificond binder is null! Did wificond die?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return v1

    .line 783
    :cond_2
    :try_start_1
    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/IWificond;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 787
    .local v0, "success":Z
    nop

    .line 788
    if-nez v0, :cond_3

    .line 789
    const-string v3, "Failed to teardown client interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v1

    .line 793
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const/4 v1, 0x1

    return v1

    .line 784
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v3, "Failed to teardown client interface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return v1

    .line 771
    .end local v0    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to unsubscribe wificond scanner due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return v1
.end method

.method public whitelist tearDownInterfaces()Z
    .locals 5

    .line 872
    const-string v0, "WifiNl80211Manager"

    const-string/jumbo v1, "tearing down interfaces in wificond"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 876
    return v2

    .line 880
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 881
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/nl80211/IWifiScannerImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    invoke-interface {v4}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 882
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    invoke-interface {v4}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribePnoScanEvents()V

    .line 883
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/nl80211/IWifiScannerImpl;>;"
    goto :goto_0

    .line 884
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v1}, Landroid/net/wifi/nl80211/IWificond;->tearDownInterfaces()V

    .line 885
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->clearState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    const/4 v0, 0x1

    return v0

    .line 887
    :catch_0
    move-exception v1

    .line 888
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to tear down interfaces due to remote exception"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    .end local v1    # "e":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist tearDownSoftApInterface(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 840
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond ap interface handler for iface="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return v1

    .line 845
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    if-nez v0, :cond_1

    .line 846
    const-string/jumbo v0, "tearDownSoftApInterface: mWificond binder is null! Did wificond die?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return v1

    .line 852
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/IWificond;->tearDownApInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .local v0, "success":Z
    nop

    .line 857
    if-nez v0, :cond_2

    .line 858
    const-string v3, "Failed to teardown AP interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return v1

    .line 861
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const/4 v1, 0x1

    return v1

    .line 853
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v3, "Failed to teardown AP interface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return v1
.end method

.method public whitelist unregisterCountryCodeChangedListener(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    .line 1349
    const-string v0, "WifiNl80211Manager"

    const-string/jumbo v1, "unregisterCountryCodeEventListener called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-virtual {v0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->unregisterCountryCodeChangedListener(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V

    .line 1351
    return-void
.end method
