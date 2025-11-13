.class public Landroid/util/BoostFramework;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/BoostFramework$ScrollOptimizer;,
        Landroid/util/BoostFramework$WorkloadType;,
        Landroid/util/BoostFramework$Draw;,
        Landroid/util/BoostFramework$Launch;,
        Landroid/util/BoostFramework$Scroll;
    }
.end annotation


# static fields
.field public static final blacklist MPCTLV3_GPU_IS_APP_BG:I = 0x42824000

.field public static final blacklist MPCTLV3_GPU_IS_APP_FG:I = 0x42820000

.field public static final blacklist MPCTLV3_SCHED_TASK_BOOST:I = 0x40c80000

.field private static final blacklist PERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.Performance"

.field private static final blacklist PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QPerformance.jar"

.field public static final blacklist PERF_HAL_V22:F = 2.2f

.field public static final blacklist PERF_HAL_V23:F = 2.3f

.field private static final blacklist TAG:Ljava/lang/String; = "BoostFramework"

.field public static final blacklist UXE_EVENT_BINDAPP:I = 0x2

.field public static final blacklist UXE_EVENT_DISPLAYED_ACT:I = 0x3

.field public static final blacklist UXE_EVENT_GAME:I = 0x5

.field public static final blacklist UXE_EVENT_KILL:I = 0x4

.field public static final blacklist UXE_EVENT_PKG_INSTALL:I = 0x8

.field public static final blacklist UXE_EVENT_PKG_UNINSTALL:I = 0x7

.field public static final blacklist UXE_EVENT_SUB_LAUNCH:I = 0x6

.field public static final blacklist UXE_TRIGGER:I = 0x1

.field private static final blacklist UXPERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.UxPerformance"

.field private static final blacklist UXPERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/UxPerformance.jar"

.field public static final blacklist VENDOR_FEEDBACK_LAUNCH_END_POINT:I = 0x1602

.field public static final blacklist VENDOR_FEEDBACK_PA_FW:I = 0x1604

.field public static final blacklist VENDOR_FEEDBACK_WORKLOAD_TYPE:I = 0x1601

.field public static final blacklist VENDOR_HINT_ACTIVITY_BOOST:I = 0x1084

.field public static final blacklist VENDOR_HINT_ANIM_BOOST:I = 0x1083

.field public static final blacklist VENDOR_HINT_APP_UPDATE:I = 0x1092

.field public static final blacklist VENDOR_HINT_BINDAPP:I = 0x10a0

.field public static final blacklist VENDOR_HINT_BOOST_RENDERTHREAD:I = 0x1096

.field public static final blacklist VENDOR_HINT_DRAG_BOOST:I = 0x1087

.field public static final blacklist VENDOR_HINT_DRAG_END:I = 0x1052

.field public static final blacklist VENDOR_HINT_DRAG_START:I = 0x1051

.field public static final blacklist VENDOR_HINT_FIRST_DRAW:I = 0x1042

.field public static final blacklist VENDOR_HINT_FIRST_LAUNCH_BOOST:I = 0x1081

.field public static final blacklist VENDOR_HINT_IME_LAUNCH_EVENT:I = 0x109f

.field public static final blacklist VENDOR_HINT_KILL:I = 0x1093

.field public static final blacklist VENDOR_HINT_MTP_BOOST:I = 0x1086

.field public static final blacklist VENDOR_HINT_PACKAGE_INSTALL_BOOST:I = 0x1088

.field public static final blacklist VENDOR_HINT_PERFORMANCE_MODE:I = 0x1091

.field public static final blacklist VENDOR_HINT_PKG_INSTALL:I = 0x10a3

.field public static final blacklist VENDOR_HINT_PKG_UNINSTALL:I = 0x10a4

.field public static final blacklist VENDOR_HINT_ROTATION_ANIM_BOOST:I = 0x1090

.field public static final blacklist VENDOR_HINT_ROTATION_LATENCY_BOOST:I = 0x1089

.field public static final blacklist VENDOR_HINT_SCROLL_BOOST:I = 0x1080

.field public static final blacklist VENDOR_HINT_SUBSEQ_LAUNCH_BOOST:I = 0x1082

.field public static final blacklist VENDOR_HINT_TAP_EVENT:I = 0x1043

.field public static final blacklist VENDOR_HINT_TOUCH_BOOST:I = 0x1085

.field public static final blacklist VENDOR_HINT_WARM_LAUNCH:I = 0x10a1

.field public static final blacklist VENDOR_T_API_LEVEL:I = 0x21

.field private static blacklist sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

.field private static blacklist sAcquireFunc:Ljava/lang/reflect/Method;

.field private static blacklist sFeedbackFunc:Ljava/lang/reflect/Method;

.field private static blacklist sFeedbackFuncExtn:Ljava/lang/reflect/Method;

.field private static blacklist sIOPStart:Ljava/lang/reflect/Method;

.field private static blacklist sIOPStop:Ljava/lang/reflect/Method;

.field private static blacklist sIsLoaded:Z

.field private static blacklist sPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sPerfEventFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfGetPropFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfHintFunc:Ljava/lang/reflect/Method;

.field private static blacklist sPerfSyncRequest:Ljava/lang/reflect/Method;

.field private static blacklist sReleaseFunc:Ljava/lang/reflect/Method;

.field private static blacklist sReleaseHandlerFunc:Ljava/lang/reflect/Method;

.field private static blacklist sUXEngineEvents:Ljava/lang/reflect/Method;

.field private static blacklist sUXEngineTrigger:Ljava/lang/reflect/Method;

.field private static blacklist sUxIOPStart:Ljava/lang/reflect/Method;

.field private static blacklist sUxIsLoaded:Z

.field private static blacklist sUxPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

.field private static blacklist sperfHintRenewFunc:Ljava/lang/reflect/Method;


# instance fields
.field public final blacklist board_api_lvl:I

.field public final blacklist board_first_api_lvl:I

.field private blacklist mPerf:Ljava/lang/Object;

.field private blacklist mUxPerf:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFramework;->sIsLoaded:Z

    const/4 v1, 0x0

    sput-object v1, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    sput-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    sput-boolean v0, Landroid/util/BoostFramework;->sUxIsLoaded:Z

    sput-object v1, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    sput-object v1, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/framework/QPerformance.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    :cond_1
    sget-object v1, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoostFramework() : Exception_2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/framework/QPerformance.jar"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    :try_start_0
    sget-object v2, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-eqz v2, :cond_1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    :cond_1
    sget-object v2, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    sget-object v2, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    :cond_2
    goto :goto_0

    :cond_3
    sget-object v1, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoostFramework() : Exception_3 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const-string/jumbo v0, "ro.board.api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/BoostFramework;->board_api_lvl:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    :cond_0
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoostFramework() : Exception_5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist initFunctions()V
    .locals 12

    const-class v0, Landroid/util/BoostFramework;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/util/BoostFramework;->sIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "com.qualcomm.qti.Performance"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    const-class v6, [I

    aput-object v6, v5, v3

    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfLockAcquire"

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    move-object v5, v7

    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfHint"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Class;

    move-object v5, v7

    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfLockRelease"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    move-object v5, v7

    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfLockReleaseHandler"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    move-object v5, v7

    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfGetFeedback"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    const-class v8, [I

    aput-object v8, v7, v1

    move-object v5, v7

    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfGetFeedbackExtn"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    new-array v7, v1, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    move-object v5, v7

    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfIOPrefetchStart"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Class;

    move-object v5, v7

    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfIOPrefetchStop"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    move-object v5, v7

    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfGetProp"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    const-class v9, [I

    aput-object v9, v8, v6

    move-object v5, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfLockAcqAndRelease"

    invoke-virtual {v8, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    const-class v9, [I

    aput-object v9, v8, v1

    move-object v5, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfEvent"

    invoke-virtual {v8, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    new-array v8, v3, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    move-object v5, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfSyncRequest"

    invoke-virtual {v8, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    const/4 v8, 0x7

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    const-class v10, [I

    const/4 v11, 0x6

    aput-object v10, v9, v11

    move-object v5, v9

    sget-object v9, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v10, "perfHintAcqRel"

    invoke-virtual {v9, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    const-class v9, [I

    aput-object v9, v8, v11

    move-object v5, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfHintRenew"

    invoke-virtual {v8, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array v8, v4, [Ljava/lang/Class;

    move-object v5, v8

    sget-object v8, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v9, "perfGetHalVer"

    invoke-virtual {v8, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_3
    const-string v9, "BoostFramework"

    const-string v10, "BoostFramework() : Exception_1 = perfGetHalVer not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    sput-object v9, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    move-object v5, v7

    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfUXEngine_events"

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    move-object v5, v6

    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfUXEngine_trigger"

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_5
    const-string v7, "BoostFramework"

    const-string v8, "BoostFramework() : Exception_4 = PreferredApps not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sput-boolean v3, Landroid/util/BoostFramework;->sIsLoaded:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v5

    :try_start_6
    const-string v6, "BoostFramework"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BoostFramework() : Exception_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    const-string v5, "com.qualcomm.qti.UxPerformance"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v2

    sget-object v2, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfIOPrefetchStart"

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    sput-boolean v3, Landroid/util/BoostFramework;->sUxIsLoaded:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_8
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoostFramework() Ux Perf: Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist getPerfHalVersion()D
    .locals 5

    const-wide v0, 0x40019999a0000000L    # 2.200000047683716

    :try_start_0
    sget-object v2, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/util/BoostFramework;->sPerfGetPerfHalVerFunc:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoostFramework"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v0
.end method

.method public blacklist perfEvent(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;I[I)V

    return-void
.end method

.method public varargs blacklist perfEvent(ILjava/lang/String;I[I)V
    .locals 4

    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/BoostFramework;->sPerfEventFunc:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p2, v3, p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist perfGetFeedback(ILjava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public varargs blacklist perfGetFeedbackExtn(ILjava/lang/String;I[I)I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFuncExtn:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, p2, v4, p4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public blacklist perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/BoostFramework;->sPerfGetPropFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method public blacklist perfHint(ILjava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfHint(ILjava/lang/String;I)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfHint(ILjava/lang/String;II)I
    .locals 6

    const/4 v0, -0x1

    sget-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, p2, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public blacklist perfHintAcqRel(IILjava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintAcqRel(IILjava/lang/String;I)I
    .locals 9

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintAcqRel(IILjava/lang/String;II)I
    .locals 9

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfHintAcqRel(IILjava/lang/String;III[I)I
    .locals 11

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/BoostFramework;->sperfHintAcqRelFunc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    :try_start_1
    iget-object v3, v2, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v6, p3

    move-object/from16 v10, p7

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v2, p0

    :goto_0
    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, p0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoostFramework"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v1
.end method

.method public blacklist perfHintRenew(IILjava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintRenew(IILjava/lang/String;I)I
    .locals 9

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfHintRenew(IILjava/lang/String;II)I
    .locals 9

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintRenew(IILjava/lang/String;III[I)I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfHintRenew(IILjava/lang/String;III[I)I
    .locals 11

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/BoostFramework;->sperfHintRenewFunc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    :try_start_1
    iget-object v3, v2, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v6, p3

    move-object/from16 v10, p7

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v2, p0

    :goto_0
    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, p0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoostFramework"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v1
.end method

.method public blacklist perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "BoostFramework"

    const/4 v1, -0x1

    :try_start_0
    sget-object v2, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, p2, p3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    sget-object v2, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, p2, p3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ux Perf Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public blacklist perfIOPrefetchStop()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public varargs blacklist perfLockAcqAndRelease(IIII[I)I
    .locals 7

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/BoostFramework;->sAcqAndReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6, p5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public varargs blacklist perfLockAcquire(I[I)I
    .locals 4

    const/4 v0, -0x1

    sget-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public blacklist perfLockRelease()I
    .locals 4

    const/4 v0, -0x1

    sget-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public blacklist perfLockReleaseHandler(I)I
    .locals 4

    const/4 v0, -0x1

    sget-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public blacklist perfSyncRequest(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroid/util/BoostFramework;->sPerfSyncRequest:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public blacklist perfUXEngine_events(IILjava/lang/String;I)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, p3, v5, p5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public blacklist perfUXEngine_trigger(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method
