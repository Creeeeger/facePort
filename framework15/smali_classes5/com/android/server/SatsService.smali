.class public final Lcom/android/server/SatsService;
.super Lcom/samsung/android/service/sats/ISatsService$Stub;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SatsService$EngModesCmdHelper;,
        Lcom/android/server/SatsService$AtCmdHandler;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_EM_AT_ACTIVATION_REQUEST:Ljava/lang/String; = "com.sec.atd.em_at_activation_request"

.field private static final blacklist ACTION_EM_AT_REQUEST_RECONNECT:Ljava/lang/String; = "com.sec.atd.em_at_request_reconnect"

.field private static final blacklist ACTION_FACM_REQUEST_FTCLIENT_START:Ljava/lang/String; = "com.sec.factory.entry.REQUEST_FTCLIENT_START"

.field private static final blacklist ACTION_HMT_REQUEST_RECONNECT:Ljava/lang/String; = "com.sec.hmt.request_reconnect"

.field private static final blacklist CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final blacklist CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field private static final blacklist JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field public static final blacklist SATS_EXCEPTION_ERROR:I = -0x7

.field public static final blacklist SATS_FLAG_NOT_EXISTS:I = -0x2

.field public static final blacklist SATS_NO_ERROR:I = 0x0

.field public static final blacklist SATS_RETURN_INVALID_ARGUMENTS:I = -0x5

.field public static final blacklist SATS_RETURN_NATIVE_ERROR:I = -0x1

.field public static final blacklist SATS_RETURN_PERMISSION_DENIED:I = -0x4

.field public static final blacklist SATS_SERVICE_NOT_AVAILABLE:I = -0x6

.field public static final blacklist SATS_SERVICE_NOT_SUPPORTED:I = 0x0

.field public static final blacklist SATS_SERVICE_SUPPORTED:I = 0x1

.field public static final blacklist SATS_STRING_NOT_EXISTS:I = -0x3

.field private static final blacklist TAG:Ljava/lang/String; = "SatsService"

.field private static blacklist mContext:Landroid/content/Context;

.field private static final blacklist mLockUEvent:Ljava/lang/Object;


# instance fields
.field private blacklist cmdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDrkAtCommander:Lcom/android/server/IWorkOnAt;

.field private blacklist mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

.field private blacklist mErrorCode:I

.field private blacklist mHermesAtCommander:Lcom/android/server/IWorkOnAt;

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mThreadUart:Ljava/lang/Thread;

.field private blacklist mThreadUartGoWait:Z

.field private blacklist mThreadUsb:Ljava/lang/Thread;

.field private final blacklist mUEventObserver:Landroid/os/UEventObserver;

.field private blacklist serviceInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/IWorkOnAt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcmdList(Lcom/android/server/SatsService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEmCmdHelper(Lcom/android/server/SatsService;)Lcom/android/server/SatsService$EngModesCmdHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SatsService;->mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThreadUart(Lcom/android/server/SatsService;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThreadUartGoWait(Lcom/android/server/SatsService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetserviceInterfaces(Lcom/android/server/SatsService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThreadUartGoWait(Lcom/android/server/SatsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmLockUEvent()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/SatsService;->mLockUEvent:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SatsService;->mLockUEvent:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/service/sats/ISatsService$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SatsService;->mThreadUartGoWait:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    iput-object v1, p0, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    iput-object v1, p0, Lcom/android/server/SatsService;->mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

    new-instance v1, Lcom/android/server/SatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/SatsService$1;-><init>(Lcom/android/server/SatsService;)V

    iput-object v1, p0, Lcom/android/server/SatsService;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v1, Lcom/android/server/SatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/SatsService$2;-><init>(Lcom/android/server/SatsService;)V

    iput-object v1, p0, Lcom/android/server/SatsService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/SatsService;->mErrorCode:I

    invoke-static {p1}, Lcom/android/server/SatsService;->setContext(Landroid/content/Context;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/AuthUnlockATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/AuthUnlockATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v3, "AT+FRPUNLCK"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/HdcptestATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/HdcptestATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v3, "AT+HDCPTEST"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/SamsungAttestationATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/SamsungAttestationATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v3, "AT+DEVROOTK"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/HermesATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/HermesATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v3, "AT+ISOSECHW"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/AutoBlockATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/AutoBlockATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v3, "AT+ABSTACHK"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/UserDeviceATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/UserDeviceATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v3, "AT+URDEVICE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/SatsService$EngModesCmdHelper;

    invoke-direct {v2, p0}, Lcom/android/server/SatsService$EngModesCmdHelper;-><init>(Lcom/android/server/SatsService;)V

    iput-object v2, p0, Lcom/android/server/SatsService;->mEmCmdHelper:Lcom/android/server/SatsService$EngModesCmdHelper;

    iget-object v2, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v3, "AT+ENGMODES"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "jdm"

    const-string/jumbo v3, "in_house"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v3, "AT+JDMMODES"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/SatsService;->serviceInterfaces:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/CassATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/CassATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/SatsService;->cmdList:Ljava/util/ArrayList;

    const-string v3, "AT+MGRTCASS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/SatsService$AtCmdHandler;

    invoke-direct {v3, p0, v1}, Lcom/android/server/SatsService$AtCmdHandler;-><init>(Lcom/android/server/SatsService;I)V

    const-string v1, "SATServiceAt"

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/SatsService$AtCmdHandler;

    invoke-direct {v2, p0, v0}, Lcom/android/server/SatsService$AtCmdHandler;-><init>(Lcom/android/server/SatsService;I)V

    const-string v0, "SATServiceData"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/SatsService;->mThreadUsb:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/server/SatsService;->mThreadUsb:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/server/SatsService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SWITCH_NAME"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SatsService;->registerForBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string v0, ".engmodejni.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerForBroadcasts()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.atd.em_at_request_reconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.atd.em_at_activation_request"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.hmt.request_reconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.factory.entry.REQUEST_FTCLIENT_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    nop

    sget-object v1, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/SatsService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private static blacklist setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public native blacklist commandForESS(Landroid/content/Context;Ljava/lang/String;)[B
.end method

.method public blacklist executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "AT+"

    const-string v3, "\r\n\r\nOK\r\n"

    const-string v4, "="

    const-string v5, "NG (Exception OCCURS)"

    const-string v6, "NG (Permission Denied)"

    const-string v7, "\r\n\r\nOK\r\n"

    const-string v8, "NG (INVALID PARAM)"

    const-string v9, "\r\n"

    const-string v10, "eng"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "SatsService"

    if-nez v10, :cond_0

    const-string v0, "It is only supported on eng binary."

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    const-string v13, ""

    sget-object v14, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    invoke-virtual {v14}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v15, :cond_3

    :try_start_1
    invoke-virtual {v14}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    :try_start_2
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v10, :cond_1

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v13, v6

    goto :goto_1

    :cond_1
    move-object/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_0

    :cond_2
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_5

    :cond_3
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :goto_1
    :try_start_3
    const-string/jumbo v5, "system"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x3e8

    if-eq v12, v5, :cond_4

    move-object/from16 v18, v7

    goto/16 :goto_4

    :cond_4
    iget-object v5, v1, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v5, :cond_5

    :try_start_4
    new-instance v5, Lcom/android/server/SamsungAttestationATCmd;

    sget-object v6, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/SamsungAttestationATCmd;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_5

    :cond_5
    :goto_2
    :try_start_5
    iget-object v5, v1, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v5, :cond_6

    :try_start_6
    new-instance v5, Lcom/android/server/HermesATCmd;

    sget-object v6, Lcom/android/server/SatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/HermesATCmd;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_6
    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v6, v1, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    invoke-interface {v6}, Lcom/android/server/IWorkOnAt;->getCmd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string v6, ":"

    const-string v15, "+"

    if-eqz v5, :cond_7

    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v2, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/SatsService;->mDrkAtCommander:Lcom/android/server/IWorkOnAt;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/android/server/IWorkOnAt;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v18, v7

    goto/16 :goto_3

    :cond_7
    :try_start_9
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v18, v7

    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    invoke-interface {v7}, Lcom/android/server/IWorkOnAt;->getCmd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/SatsService;->mHermesAtCommander:Lcom/android/server/IWorkOnAt;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/android/server/IWorkOnAt;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "NG (INVALID PARAM)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_6

    :cond_9
    move-object/from16 v18, v7

    :goto_4
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied : Name = ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "], UID = ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NG (Permission Denied)"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    :goto_5
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to excute Pseudo DRK AT command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG (Exception OCCURS)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    return-object v0

    :catchall_4
    move-exception v0

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    throw v0
.end method
