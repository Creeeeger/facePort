.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;
    }
.end annotation


# static fields
.field public static final blacklist ADAPTIVE_BRIGHTNESS_UID:I = 0x139d

.field public static final blacklist ADVMODEM_UID:I = 0x1399

.field public static final greylist-max-o AUDIOSERVER_UID:I = 0x411

.field public static final blacklist BCMGR_SERVICE_UID:I = 0x138e

.field public static final whitelist BLUETOOTH_UID:I = 0x3ea

.field public static final greylist-max-o CAMERASERVER_UID:I = 0x417

.field public static final blacklist CLAT_UID:I = 0x405

.field public static final blacklist CMH_SERVICE_UID:I = 0x138c

.field public static final blacklist CREDSTORE_UID:I = 0x434

.field public static final blacklist DEVICECARE_UID:I = 0xb57

.field public static final blacklist DNS_TETHER_UID:I = 0x41c

.field public static final greylist-max-r DRM_UID:I = 0x3fb

.field public static final blacklist DSMS_UID:I = 0x13a7

.field public static final blacklist EUICC_SERVICE_UID:I = 0xb5e

.field public static final blacklist EXTERNAL_STORAGE_GID:I = 0x435

.field public static final blacklist EXT_DATA_RW_GID:I = 0x436

.field public static final blacklist EXT_OBB_RW_GID:I = 0x437

.field public static final greylist-max-o FIRST_APPLICATION_CACHE_GID:I = 0x4e20

.field public static final whitelist FIRST_APPLICATION_UID:I = 0x2710

.field public static final blacklist FIRST_APP_ZYGOTE_ISOLATED_UID:I = 0x15f90

.field public static final blacklist FIRST_DATAUSAGE_UID:I = 0xb54

.field public static final greylist-max-r FIRST_ISOLATED_UID:I = 0x182b8

.field public static final blacklist FIRST_SDK_SANDBOX_UID:I = 0x4e20

.field public static final greylist-max-o FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final blacklist FMM_UID:I = 0xb5c

.field public static final blacklist FOTA_ATT_UID:I = 0xb59

.field public static final blacklist FOTA_UID:I = 0xb58

.field public static final blacklist FOTA_VZW_UID:I = 0xb5a

.field public static final blacklist FSVERITY_CERT_UID:I = 0x433

.field public static final blacklist IMS_DM_UID:I = 0xb5b

.field public static final greylist-max-o INCIDENTD_UID:I = 0x42b

.field public static final blacklist INET_GID:I = 0xbbb

.field public static final blacklist INTELLIGENCE_SERVICE_UID:I = 0x1392

.field public static final whitelist INVALID_PID:I = -0x1

.field public static final whitelist INVALID_UID:I = -0x1

.field public static final blacklist IPS_GEOFENCE_UID:I = 0x139e

.field public static final blacklist ISSUETRACKER_UID:I = 0xb67

.field public static final blacklist KER_UID:I = 0x15b2

.field public static final greylist-max-o KEYSTORE_UID:I = 0x3f9

.field public static final blacklist KNOXCORE_UID:I = 0x1482

.field public static final greylist-max-o LAST_APPLICATION_CACHE_GID:I = 0x752f

.field public static final whitelist LAST_APPLICATION_UID:I = 0x4e1f

.field public static final blacklist LAST_APP_ZYGOTE_ISOLATED_UID:I = 0x182b7

.field public static final blacklist LAST_DATAUSAGE_UID:I = 0xbb7

.field public static final greylist-max-r LAST_ISOLATED_UID:I = 0x1869f

.field public static final blacklist LAST_SDK_SANDBOX_UID:I = 0x752f

.field public static final greylist-max-o LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "Process"

.field public static final greylist-max-r LOG_UID:I = 0x3ef

.field public static final blacklist MDXKIT_SERVICE_UID:I = 0x13a1

.field public static final greylist-max-o MEDIA_RW_GID:I = 0x3ff

.field public static final greylist-max-r MEDIA_UID:I = 0x3f5

.field public static final blacklist NETWORK_DIAGNOSTIC_UID:I = 0x139f

.field public static final blacklist NETWORK_STACK_UID:I = 0x431

.field public static final greylist-max-r NFC_UID:I = 0x403
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o NOBODY_UID:I = 0x270f

.field public static final blacklist NS_FLP_UID:I = 0x1395

.field public static final blacklist NUM_UIDS_PER_APP_ZYGOTE:I = 0x64

.field public static final blacklist ODA_SERVICE_UID:I = 0xb5d

.field public static final blacklist OMC_UID:I = 0xb66

.field public static final greylist-max-o OTA_UPDATE_UID:I = 0x425

.field public static final greylist-max-o PACKAGE_INFO_GID:I = 0x408

.field public static final whitelist PHONE_UID:I = 0x3e9

.field private static final blacklist PIDFD_SUPPORTED:I = 0x1

.field private static final blacklist PIDFD_UNKNOWN:I = 0x0

.field private static final blacklist PIDFD_UNSUPPORTED:I = 0x2

.field public static final greylist-max-o PROC_CHAR:I = 0x800

.field public static final greylist-max-r PROC_COMBINE:I = 0x100

.field public static final blacklist PROC_NEWLINE_TERM:I = 0xa

.field public static final greylist-max-r PROC_OUT_FLOAT:I = 0x4000

.field public static final greylist-max-r PROC_OUT_LONG:I = 0x2000

.field public static final greylist-max-r PROC_OUT_STRING:I = 0x1000

.field public static final greylist-max-r PROC_PARENS:I = 0x200

.field public static final greylist-max-r PROC_QUOTES:I = 0x400

.field public static final greylist-max-r PROC_SPACE_TERM:I = 0x20

.field public static final greylist-max-r PROC_TAB_TERM:I = 0x9

.field public static final greylist-max-r PROC_TERM_MASK:I = 0xff

.field public static final greylist-max-r PROC_ZERO_TERM:I = 0x0

.field public static final whitelist ROOT_UID:I = 0x0

.field public static final greylist-max-o SCHED_BATCH:I = 0x3

.field public static final greylist-max-o SCHED_FIFO:I = 0x1

.field public static final greylist-max-o SCHED_IDLE:I = 0x5

.field public static final greylist-max-o SCHED_OTHER:I = 0x0

.field public static final greylist-max-o SCHED_RESET_ON_FORK:I = 0x40000000

.field public static final greylist-max-o SCHED_RR:I = 0x2

.field public static final blacklist SCLOUD_SERVICE_UID:I = 0x1391

.field public static final blacklist SDCARD_RW_GID:I = 0x3f7

.field public static final blacklist SDK_SANDBOX_VIRTUAL_UID:I = 0x442

.field public static final greylist-max-o SE_UID:I = 0x42c

.field public static final greylist-max-o SHARED_RELRO_UID:I = 0x40d

.field public static final greylist-max-o SHARED_USER_GID:I = 0x270d

.field public static final blacklist SHARE_LIVE_UID:I = 0x13a2

.field public static final whitelist SHELL_UID:I = 0x7d0

.field public static final blacklist SIGNAL_DEFAULT:I = 0x0

.field public static final whitelist SIGNAL_KILL:I = 0x9

.field public static final whitelist SIGNAL_QUIT:I = 0x3

.field public static final whitelist SIGNAL_USR1:I = 0xa

.field public static final blacklist SPASS_UID:I = 0x149e

.field public static final blacklist SPAY_UID:I = 0x149f

.field public static final blacklist STATSD_UID:I = 0x42a

.field public static final whitelist SYSTEM_UID:I = 0x3e8

.field public static final blacklist THREAD_GROUP_ABNORMAL:I = 0x8

.field public static final greylist-max-o THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final greylist-max-o THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final blacklist THREAD_GROUP_BACKGROUND:I = 0x0

.field public static final greylist-max-o THREAD_GROUP_DEFAULT:I = -0x1

.field private static final greylist-max-o THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final blacklist THREAD_GROUP_FOREGROUND_BOOST:I = 0xa

.field public static final blacklist THREAD_GROUP_MODERATE:I = 0x9

.field public static final greylist-max-o THREAD_GROUP_RESTRICTED:I = 0x7

.field public static final greylist-max-o THREAD_GROUP_RT_APP:I = 0x6

.field public static final greylist-max-o THREAD_GROUP_SYSTEM:I = 0x2

.field public static final greylist-max-o THREAD_GROUP_TOP_APP:I = 0x5

.field public static final whitelist THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final whitelist THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final whitelist THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final whitelist THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final whitelist THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final whitelist THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final whitelist THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final blacklist THREAD_PRIORITY_TOP_APP_BOOST:I = -0xa

.field public static final whitelist THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final whitelist THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final whitelist THREAD_PRIORITY_VIDEO:I = -0xa

.field public static final blacklist UWB_UID:I = 0x43b

.field public static final blacklist VENDOR_DATA_UID:I = 0xb66

.field public static final blacklist VIDEOCALL_UID:I = 0xb55

.field public static final greylist-max-r VPN_UID:I = 0x3f8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o WEBVIEW_ZYGOTE_UID:I = 0x41d

.field public static final whitelist WIFI_UID:I = 0x3f2

.field public static final blacklist ZYGOTE_POLICY_FLAG_BATCH_LAUNCH:I = 0x2

.field public static final blacklist ZYGOTE_POLICY_FLAG_EMPTY:I = 0x0

.field public static final blacklist ZYGOTE_POLICY_FLAG_LATENCY_SENSITIVE:I = 0x1

.field public static final blacklist ZYGOTE_POLICY_FLAG_SYSTEM_PROCESS:I = 0x4

.field public static final blacklist ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

.field private static blacklist sArgV0:Ljava/lang/String;

.field private static volatile blacklist sIdentity$ravenwood:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPidFdSupported:I

.field private static greylist-max-o sStartElapsedRealtime:J

.field private static blacklist sStartRequestedElapsedRealtime:J

.field private static blacklist sStartRequestedUptimeMillis:J

.field private static greylist-max-o sStartUptimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/os/Process;->sPidFdSupported:I

    new-instance v0, Landroid/os/ZygoteProcess;

    invoke-direct {v0}, Landroid/os/ZygoteProcess;-><init>()V

    sput-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist checkPid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalThrows(II)V

    return-void
.end method

.method public static final blacklist checkTid(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Process;->sendTgSignalThrows(III)V

    return-void
.end method

.method public static final native blacklist createProcessGroup(II)I
.end method

.method public static final native blacklist doSomethingOlaf(Z)V
.end method

.method public static final native blacklist enableFreezer(Z)V
.end method

.method public static final native greylist enableSlowdown(Z)V
.end method

.method public static final native blacklist freezeCgroupUid(IZ)V
.end method

.method public static final blacklist getAdvertisedMem()J
    .locals 5

    invoke-static {}, Landroid/sysprop/MemoryProperties;->memory_ddr_size()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "0KB"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/os/FileUtils;->parseSize(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v3

    return-wide v3

    :cond_0
    return-wide v1
.end method

.method public static final whitelist getAppUidForSdkSandboxUid(I)I
    .locals 2

    invoke-static {p0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit16 v0, p0, -0x2710

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input UID is not an SDK sandbox UID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final native whitelist getElapsedCpuTime()J
.end method

.method public static final native whitelist getExclusiveCores()[I
.end method

.method public static final native greylist getFreeMemory()J
.end method

.method public static final native whitelist getGidForName(Ljava/lang/String;)I
.end method

.method public static final greylist getParentPid(I)I
    .locals 5

    const-string v0, "PPid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native greylist getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native greylist getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native greylist-max-o getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native greylist getPss(I)J
.end method

.method public static final native blacklist getRss(I)[J
.end method

.method public static final whitelist getSdkSandboxUidForAppUid(I)I
    .locals 2

    invoke-static {p0}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit16 v0, p0, 0x2710

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input UID is not an app UID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getSharedSystemUidPackageName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    return-object v0

    :pswitch_1
    const-string v0, "com.salab.issuetracker"

    return-object v0

    :pswitch_2
    const-string v0, "com.samsung.android.app.omcagent"

    return-object v0

    :pswitch_3
    const-string v0, "com.samsung.euicc"

    return-object v0

    :pswitch_4
    const-string v0, "com.samsung.oda.service"

    return-object v0

    :pswitch_5
    const-string v0, "com.samsung.android.fmm"

    return-object v0

    :pswitch_6
    const-string v0, "com.ims.dm"

    return-object v0

    :pswitch_7
    const-string v0, "com.samsung.sdm"

    return-object v0

    :pswitch_8
    const-string v0, "com.ws.dm"

    return-object v0

    :pswitch_9
    const-string v0, "com.wssyncmldm"

    return-object v0

    :pswitch_a
    const-string v0, "com.samsung.android.lool"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb57
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist getStartElapsedRealtime()J
    .locals 2

    sget-wide v0, Landroid/os/Process;->sStartElapsedRealtime:J

    return-wide v0
.end method

.method public static whitelist getStartRequestedElapsedRealtime()J
    .locals 2

    sget-wide v0, Landroid/os/Process;->sStartRequestedElapsedRealtime:J

    return-wide v0
.end method

.method public static whitelist getStartRequestedUptimeMillis()J
    .locals 2

    sget-wide v0, Landroid/os/Process;->sStartRequestedUptimeMillis:J

    return-wide v0
.end method

.method public static whitelist getStartUptimeMillis()J
    .locals 2

    sget-wide v0, Landroid/os/Process;->sStartUptimeMillis:J

    return-wide v0
.end method

.method public static final greylist-max-o getThreadGroupLeader(I)I
    .locals 5

    const-string v0, "Tgid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native whitelist getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final blacklist getThreadPriority$ravenwood(I)I
    .locals 3

    sget-object v0, Landroid/os/Process;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v1, p0, :cond_0

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    return v1

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cross-thread priority management not yet available in Ravenwood"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final native blacklist getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native greylist getTotalMemory()J
.end method

.method public static final native whitelist getUidForName(Ljava/lang/String;)I
.end method

.method public static final greylist getUidForPid(I)I
    .locals 5

    const-string v0, "Uid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static blacklist init$ravenwood(II)V
    .locals 1

    new-instance v0, Landroid/os/Process$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/os/Process$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/os/Process;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final whitelist is64Bit()Z
    .locals 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static final blacklist is64Bit$ravenwood()Z
    .locals 2

    const-string/jumbo v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amd64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isApplicationUid(I)Z
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isCoreUid(I)Z
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    return v0
.end method

.method public static final native blacklist isFrozenState(I)Z
.end method

.method public static final whitelist isIsolated()Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0
.end method

.method public static final greylist isIsolated(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isIsolatedUid(I)Z
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const v0, 0x182b8

    if-lt p0, v0, :cond_0

    const v0, 0x1869f

    if-le p0, v0, :cond_1

    :cond_0
    const v0, 0x15f90

    if-lt p0, v0, :cond_2

    const v0, 0x182b7

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final whitelist isSdkSandbox()Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isSdkSandboxUid(I)Z
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x4e20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x752f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final greylist-max-o isThreadInProcess(II)Z
    .locals 4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/task/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v2, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :catch_0
    move-exception v2

    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1
.end method

.method public static final whitelist killProcess(I)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    return-void
.end method

.method public static final native greylist-max-o killProcessGroup(II)I
.end method

.method public static final greylist-max-o killProcessQuiet(I)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    return-void
.end method

.method public static final native blacklist killProcessWithMrelease(I)Z
.end method

.method static synthetic blacklist lambda$init$ravenwood$0(II)Lcom/android/internal/os/SomeArgs;
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    return-object v0
.end method

.method public static final whitelist myPid()I
    .locals 1

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static final blacklist myPid$ravenwood()I
    .locals 1

    sget-object v0, Landroid/os/Process;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    return v0
.end method

.method public static final greylist myPpid()I
    .locals 1

    invoke-static {}, Landroid/system/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static whitelist myProcessName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Process;->sArgV0:Ljava/lang/String;

    return-object v0
.end method

.method public static final whitelist myTid()I
    .locals 1

    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static final blacklist myTid$ravenwood()I
    .locals 1

    sget-object v0, Landroid/os/Process;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    return v0
.end method

.method public static final whitelist myUid()I
    .locals 1

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static final blacklist myUid$ravenwood()I
    .locals 1

    sget-object v0, Landroid/os/Process;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    return v0
.end method

.method public static whitelist myUserHandle()Landroid/os/UserHandle;
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist nativePidFdOpen(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static blacklist openPidFd(II)Ljava/io/FileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-static {p0, p1}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final native greylist parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native greylist readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native greylist readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native greylist-max-o removeAllProcessGroups()V
.end method

.method public static final native blacklist requestProcessProfile(II[Ljava/lang/String;)Z
.end method

.method public static final native blacklist requestTaskProfile(I[Ljava/lang/String;Z)Z
.end method

.method public static blacklist reset$ravenwood()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/os/Process;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final whitelist semGetPids(Ljava/lang/String;[I)[I
    .locals 1

    invoke-static {p0, p1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static final native whitelist sendSignal(II)V
.end method

.method public static final native greylist-max-p sendSignalQuiet(II)V
.end method

.method private static native blacklist sendSignalThrows(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public static final native blacklist sendSignalToProcessGroup(III)Z
.end method

.method private static native blacklist sendTgSignalThrows(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public static whitelist setArgV0(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Landroid/os/Process;->sArgV0:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Process;->setArgV0Native(Ljava/lang/String;)V

    return-void
.end method

.method private static native blacklist setArgV0Native(Ljava/lang/String;)V
.end method

.method public static final native greylist-max-o setCanSelfBackground(Z)V
.end method

.method public static final blacklist setCanSelfBackground$ravenwood(Z)V
    .locals 2

    sget-object v0, Landroid/os/Process;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    return-void
.end method

.method public static final native greylist-max-o setGid(I)I
.end method

.method public static final native blacklist setProcessFrozen(IIZ)V
.end method

.method public static final native greylist setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native blacklist setProcessMARsFrozen(IIZ)Z
.end method

.method public static final native greylist setProcessSlowdown(IIZ)V
.end method

.method public static final blacklist setStartTimes(JJJJ)V
    .locals 0

    sput-wide p0, Landroid/os/Process;->sStartElapsedRealtime:J

    sput-wide p2, Landroid/os/Process;->sStartUptimeMillis:J

    sput-wide p4, Landroid/os/Process;->sStartRequestedElapsedRealtime:J

    sput-wide p6, Landroid/os/Process;->sStartRequestedUptimeMillis:J

    return-void
.end method

.method public static final native greylist-max-o setSwappiness(IZ)Z
.end method

.method public static final native greylist-max-o setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native greylist-max-o setThreadGroupAndCpuset(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native whitelist setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native whitelist setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final blacklist setThreadPriority$ravenwood(I)V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0, p0}, Landroid/os/Process;->setThreadPriority(II)V

    return-void
.end method

.method public static final blacklist setThreadPriority$ravenwood(II)V
    .locals 5

    sget-object v0, Landroid/os/Process;->sIdentity$ravenwood:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v1, p0, :cond_3

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-lt p1, v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Priority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " blocked by setCanSelfBackground()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    nop

    return-void

    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cross-thread priority management not yet available in Ravenwood"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final native greylist-max-o setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native greylist-max-o setUid(I)I
.end method

.method public static blacklist start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZZ[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    invoke-virtual/range {v0 .. v23}, Landroid/os/ZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v17, p14

    move-object/from16 v23, p15

    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    move-result-object v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v0 .. v23}, Landroid/os/ZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist supportsPidFd()Z
    .locals 6

    sget v0, Landroid/os/Process;->sPidFdSupported:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3, v1}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v3

    move v0, v3

    sput v2, Landroid/os/Process;->sPidFdSupported:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_2

    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    iget v4, v3, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v4, v5, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    :goto_1
    sput v4, Landroid/os/Process;->sPidFdSupported:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v0, :cond_2

    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_0

    :goto_2
    if-ltz v0, :cond_1

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v2, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    :cond_1
    throw v1

    :cond_2
    :goto_3
    sget v0, Landroid/os/Process;->sPidFdSupported:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public static final whitelist supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final blacklist toSdkSandboxUid(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    add-int/lit16 v0, p0, 0x2710

    return v0
.end method

.method public static blacklist waitForProcessDeath(II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v4

    if-ltz v4, :cond_0

    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    move-object v3, v5

    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v3, :cond_4

    new-array v5, v1, [Landroid/system/StructPollfd;

    new-instance v6, Landroid/system/StructPollfd;

    invoke-direct {v6}, Landroid/system/StructPollfd;-><init>()V

    aput-object v6, v5, v2

    aget-object v6, v5, v2

    iput-object v3, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v6, v5, v2

    sget v7, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v7, v7

    iput-short v7, v6, Landroid/system/StructPollfd;->events:S

    aget-object v6, v5, v2

    iput-short v2, v6, Landroid/system/StructPollfd;->revents:S

    aget-object v6, v5, v2

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    invoke-static {v5, p1}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v6
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v6, :cond_2

    if-eqz v3, :cond_1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v7, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v7}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v7
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    if-eqz v3, :cond_7

    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_2
    iget v5, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EINTR:I

    if-eq v5, v6, :cond_5

    const/4 v0, 0x1

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v3, :cond_6

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    :cond_6
    throw v1

    :cond_7
    :goto_4
    if-eqz v0, :cond_b

    if-gez p1, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v5, v3

    :goto_6
    if-nez v1, :cond_9

    cmp-long v7, v3, v5

    if-gez v7, :cond_b

    :cond_9
    :try_start_3
    invoke-static {p0, v2}, Landroid/system/Os;->kill(II)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v7

    iget v8, v7, Landroid/system/ErrnoException;->errno:I

    sget v9, Landroid/system/OsConstants;->ESRCH:I

    if-ne v8, v9, :cond_a

    return-void

    :cond_a
    :goto_7
    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
.end method
