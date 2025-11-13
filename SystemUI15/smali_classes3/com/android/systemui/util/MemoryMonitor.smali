.class public Lcom/android/systemui/util/MemoryMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final ALLOWED_NOTI_COUNT:I = 0x64

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static final HIGHER_PSS:I = 0xc8000

.field private static final HOUR:I = 0x36ee80

.field private static final MAX_BROADCAST_RECEIVER_COUNT:I = 0x3e8

.field private static final MAX_GRAPHICS_HEAP:I = 0x7d000

.field private static final MAX_JAVA_HEAP:I = 0x37000

.field private static final MAX_NATIVE_HEAP:I = 0xc8000

.field private static final MAX_PSS:I = 0xfa000

.field private static final MAX_VIEWROOT_COUNT:I = 0x32

.field private static final MAX_VIEW_COUNT:I = 0x4e20

.field private static final MB:I = 0x400

.field private static final MEMINFO_GC_DELAY:J = 0x1388L

.field private static final MEMINFO_PRINT_DELAY:J = 0xbb8L

.field private static final MEMINFO_RESET_DURATION:J = 0x2bf20L

.field private static final MINUTE:I = 0xea60

.field private static final REDUCED_DELAY:I = 0x36ee80

.field private static final SECOND:I = 0x3e8

.field private static final SHORT_DELAY:I = 0xdbba0

.field private static final STANDARD_DELAY:I = 0xa4cb80

.field private static final STANDARD_PSS:I = 0x7d000

.field private static final TAG:Ljava/lang/String; = "MemoryMonitor"


# instance fields
.field private mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

.field private mCurrentNotiCount:I

.field private mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

.field private mIsInCalcMemInfo:Z

.field private mLastMemoryInfoCalcTime:Ljava/lang/Long;

.field private mLastMemoryInfoLogTime:Ljava/lang/String;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field private final mPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

.field private mReason:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$40X66Px7bp7MLkuPc-JBuuyCLGc(Lcom/android/systemui/util/MemoryMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/MemoryMonitor;->lambda$startMonitoring$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PaSS1c7vhfJI-uh_z_EVwRKE-6M(Lcom/android/systemui/util/MemoryMonitor;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/MemoryMonitor;->lambda$printMemoryInfo$3(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$W8UPg5ghf8_rWoM4GwW1YChMLzw(Lcom/android/systemui/util/MemoryMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/MemoryMonitor;->lambda$printMemoryInfo$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y1BLIPWEPFTvrZCeXmXxB6we7zg(Lcom/android/systemui/util/MemoryMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/MemoryMonitor;->takeNotificationCount()V

    return-void
.end method

.method public static synthetic $r8$lambda$jrfFNte6DoxiwbaB97wCsYb-4KY(Lcom/android/systemui/util/MemoryMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/MemoryMonitor;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vdnd_dUNU3oM9lH9vVn0inoryBw(Lcom/android/systemui/util/MemoryMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/MemoryMonitor;->lambda$startMonitoring$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vnQU_qrFSbbgEI0GeL-J_hJfa-c(Lcom/android/systemui/util/MemoryMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/MemoryMonitor;->lambda$printMemoryInfo$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHeapDumpHelper(Lcom/android/systemui/util/MemoryMonitor;)Lcom/android/systemui/HeapDumpHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mprintMemoryInfo(Lcom/android/systemui/util/MemoryMonitor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/MemoryMonitor;->printMemoryInfo(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/BootCompleteCache;Lcom/android/systemui/HeapDumpHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x2bf20

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mLastMemoryInfoCalcTime:Ljava/lang/Long;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mIsInCalcMemInfo:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    iput v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mCurrentNotiCount:I

    iput-object p1, p0, Lcom/android/systemui/util/MemoryMonitor;->mMainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/util/MemoryMonitor;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    iput-object p3, p0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    invoke-virtual {p4, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    iput-object p5, p0, Lcom/android/systemui/util/MemoryMonitor;->mPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    iput-object p6, p0, Lcom/android/systemui/util/MemoryMonitor;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    new-instance p2, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/MemoryMonitor;I)V

    const-wide/32 p3, 0x36ee80

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x36ee80

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/MemoryMonitor;->startMonitoring(ZI)V

    return-void
.end method

.method private synthetic lambda$printMemoryInfo$1()V
    .locals 8

    sget-object v0, Lcom/android/systemui/util/MemoryMonitor;->TAG:Ljava/lang/String;

    const-string v1, "check again after GC"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v3}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v3}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    const-class v1, Landroid/view/View;

    invoke-static {v1}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v4

    const-class v1, Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v6

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/util/MemoryMonitor;->isLeakSuspect(Landroid/os/Debug$MemoryInfo;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/HeapDumpHelper;->dump(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "no issue"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$printMemoryInfo$2()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/MemoryMonitor;I)V

    const-string/jumbo p0, "printMemoryInfo"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$printMemoryInfo$3(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/MemoryMonitor;->startMonitoring(ZI)V

    return-void
.end method

.method private synthetic lambda$startMonitoring$4(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/util/MemoryMonitor;->printMemoryInfo(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/util/MemoryMonitor;->mIsInCalcMemInfo:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/MemoryMonitor;->mLastMemoryInfoLogTime:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/MemoryMonitor;->mLastMemoryInfoCalcTime:Ljava/lang/Long;

    return-void
.end method

.method private synthetic lambda$startMonitoring$5(Z)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/util/MemoryMonitor;ZI)V

    sget-object p0, Lcom/android/systemui/util/MemoryMonitor;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private printMemoryInfo(Z)V
    .locals 13

    sget-object v0, Lcom/android/systemui/util/MemoryMonitor;->TAG:Ljava/lang/String;

    const-string v1, " - Memory Information -"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    const-class v2, Landroid/view/View;

    invoke-static {v2}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v4

    const-class v2, Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v6

    const-class v2, Landroid/app/Notification;

    invoke-static {v2}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v2

    const-class v8, Landroid/content/BroadcastReceiver;

    invoke-static {v8}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Dalvik Heap : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/MemoryMonitor;->getDalvikHeapTotal(Landroid/os/Debug$MemoryInfo;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Native Heap : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/MemoryMonitor;->getNativeHeapTotal(Landroid/os/Debug$MemoryInfo;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Graphics : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "summary.graphics"

    invoke-virtual {v1, v11}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Total PSS : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "summary.total-pss"

    invoke-virtual {v1, v11}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, " - View count -"

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "View="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "ViewRootImpl="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Notification="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BroadcastReceivers="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/util/MemoryMonitor;->isLeakSuspect(Landroid/os/Debug$MemoryInfo;JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/MemoryMonitor;I)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    cmp-long v2, v8, v2

    if-lez v2, :cond_1

    const-string v2, "BR="

    invoke-static {v2, v8, v9}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLeakSuspect :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    iget-object v2, p0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/HeapDumpHelper;->dump(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {v1, v11}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7d000

    if-ge v0, v1, :cond_2

    const v0, 0xa4cb80

    goto :goto_1

    :cond_2
    const v1, 0xc8000

    if-ge v0, v1, :cond_3

    const v0, 0x36ee80

    goto :goto_1

    :cond_3
    const v0, 0xdbba0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/util/MemoryMonitor;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/util/MemoryMonitor;ZI)V

    int-to-long p0, v0

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method private startMonitoring(ZI)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mIsInCalcMemInfo:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/util/MemoryMonitor;->TAG:Ljava/lang/String;

    const-string p1, "Already in calculating memory info. So skip this."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mIsInCalcMemInfo:Z

    sget-object v0, Lcom/android/systemui/util/MemoryMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting getMemoryInfo in MemoryInfoReporter thread. Delay Time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/util/MemoryMonitor;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/MemoryMonitor;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/android/systemui/util/MemoryMonitor;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/util/MemoryMonitor;ZI)V

    const-wide/16 p0, 0xbb8

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private takeNotificationCount()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mCurrentNotiCount:I

    return-void
.end method


# virtual methods
.method public dispatchTrimMemory()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    check-cast v0, Lcom/android/systemui/BootCompleteCacheImpl;

    iget-object v0, v0, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/systemui/util/MemoryMonitor;->TAG:Ljava/lang/String;

    const-string v0, "didn\'t receive BOOT_COMPLETED"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mLastMemoryInfoCalcTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/android/systemui/util/MemoryMonitor;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor;->mLastMemoryInfoLogTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Last Info is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". It still remains until reset time. So skip this."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/util/MemoryMonitor;->startMonitoring(ZI)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    iget-boolean p2, p2, Lcom/android/systemui/HeapDumpHelper;->isDumped:Z

    if-eqz p2, :cond_0

    const-string p2, "SystemUI Leak Info"

    const-string v0, "    isLeakSuspect : "

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    path : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    iget-object p0, p0, Lcom/android/systemui/HeapDumpHelper;->mHeapDumpFilePath:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public getDalvikHeapTotal(Landroid/os/Debug$MemoryInfo;)I
    .locals 4

    iget p0, p1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget-boolean v0, p1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v2

    iget-boolean v3, p1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result p1

    :goto_1
    add-int/2addr p0, v0

    add-int/2addr p0, v2

    add-int/2addr p0, p1

    return p0
.end method

.method public getNativeHeapTotal(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    const-string/jumbo p0, "summary.native-heap"

    invoke-virtual {p1, p0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-boolean v0, p1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method public isLeakSuspect(Landroid/os/Debug$MemoryInfo;JJ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    iget-boolean v4, v4, Lcom/android/systemui/HeapDumpHelper;->isDumped:Z

    if-nez v4, :cond_8

    const-string/jumbo v4, "summary.java-heap"

    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/util/MemoryMonitor;->getNativeHeapTotal(Landroid/os/Debug$MemoryInfo;)I

    move-result v5

    const-string/jumbo v6, "summary.graphics"

    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "summary.total-pss"

    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v7, 0x32

    const-wide/16 v9, 0x4e20

    const v11, 0xfa000

    const v12, 0x7d000

    const v13, 0xc8000

    const v14, 0x37000

    if-gt v4, v14, :cond_1

    if-gt v5, v13, :cond_1

    if-gt v6, v12, :cond_1

    if-gt v1, v11, :cond_1

    cmp-long v15, v2, v9

    if-lez v15, :cond_0

    iget v15, v0, Lcom/android/systemui/util/MemoryMonitor;->mCurrentNotiCount:I

    const/16 v9, 0x64

    if-lt v15, v9, :cond_1

    :cond_0
    cmp-long v9, p4, v7

    if-lez v9, :cond_8

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "J="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-le v4, v14, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", N="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v5, v13, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", G="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v6, v12, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", T="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v1, v11, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", V="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x4e20

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/systemui/util/MemoryMonitor;->mCurrentNotiCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", VR="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v1, p4, v7

    if-lez v1, :cond_7

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5

    :cond_7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/util/MemoryMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLeakSuspect :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public registerUncaughtException()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    new-instance v1, Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/MemoryMonitor$SystemUIExceptionHandler;-><init>(Lcom/android/systemui/util/MemoryMonitor;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;->registerHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
