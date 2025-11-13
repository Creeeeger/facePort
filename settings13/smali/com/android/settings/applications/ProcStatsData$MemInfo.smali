.class public Lcom/android/settings/applications/ProcStatsData$MemInfo;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemInfo"
.end annotation


# instance fields
.field baseCacheRam:J

.field freeWeight:D

.field public hwRam:J

.field mMemStateWeights:[D

.field memTotalTime:J

.field public realFreeRam:D

.field public realReservedRam:J

.field public realTotalRam:D

.field public realUsedRam:D

.field totalRam:D

.field totalScale:D

.field usedWeight:D

.field weightToRam:D


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 11

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [D

    .line 386
    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    .line 400
    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->memTotalTime:J

    .line 401
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/ProcStatsData$MemInfo;->calculateWeightInfo(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 403
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    long-to-double p2, p3

    div-double/2addr v0, p2

    .line 404
    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    mul-double/2addr v4, v2

    div-double/2addr v4, p2

    add-double/2addr v0, v4

    .line 405
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalRam:D

    .line 406
    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    div-double v0, v6, v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    div-double p2, v0, p2

    mul-double/2addr p2, v2

    .line 407
    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v0, v4

    .line 412
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 414
    iget-wide p2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->hwRam:J

    long-to-double p2, p2

    sub-double/2addr p2, v6

    double-to-long p2, p2

    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realReservedRam:J

    .line 431
    new-instance p2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string p3, "activity"

    .line 432
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager;

    invoke-virtual {p3, p2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 434
    iget-wide p2, p2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v0, p2

    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    cmpl-double p4, v0, v2

    if-ltz p4, :cond_0

    .line 435
    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    const-wide/16 p1, 0x0

    .line 436
    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    double-to-long p1, p1

    .line 437
    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    goto :goto_0

    :cond_0
    long-to-double v0, p2

    sub-double/2addr v2, v0

    .line 442
    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 443
    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    .line 445
    iget-wide v5, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->hwRam:J

    iget-wide v7, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realReservedRam:J

    double-to-long v9, v2

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Lcom/samsung/android/settings/applications/RamUiUtil;->getUsedSize(Landroid/content/Context;JJJ)J

    move-result-wide p1

    long-to-double p1, p1

    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings/applications/ProcStatsData$MemInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    return-void
.end method

.method private calculateWeightInfo(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 2

    .line 452
    new-instance p3, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p3}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 453
    invoke-virtual {p3}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 454
    invoke-virtual {p3}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide p3

    long-to-double p3, p3

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    .line 456
    invoke-static {p1}, Lcom/android/settings/applications/ProcStatsData$MemInfo;->getHWMemSize(Landroid/content/Context;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->hwRam:J

    .line 458
    iget-wide p3, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v0, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-double/2addr p3, v0

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    .line 459
    iget-wide p3, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v0, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-double/2addr p3, v0

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    .line 460
    iget-boolean p1, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-nez p1, :cond_0

    .line 461
    iget-wide v0, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-double/2addr p3, v0

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 p3, 0x10

    if-ge p1, p3, :cond_3

    const/16 p3, 0x8

    if-ne p1, p3, :cond_1

    .line 466
    iget-object p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    const-wide/16 v0, 0x0

    aput-wide v0, p3, p1

    goto :goto_1

    .line 468
    :cond_1
    iget-object p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    iget-object p4, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v0, p4, p1

    aput-wide v0, p3, p1

    const/16 p3, 0xb

    if-lt p1, p3, :cond_2

    .line 470
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    aget-wide p3, p4, p1

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    goto :goto_1

    .line 472
    :cond_2
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    aget-wide p3, p4, p1

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getHWMemSize(Landroid/content/Context;)J
    .locals 4

    const-string v0, "activity"

    .line 489
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 490
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz p0, :cond_0

    .line 492
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 495
    :cond_0
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v2, 0x100000

    .line 496
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3000

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const-wide v0, 0x400000000L

    goto/16 :goto_0

    :cond_1
    const-wide/16 v2, 0x2000

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    const-wide v0, 0x300000000L

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x1800

    cmp-long p0, v0, v2

    if-lez p0, :cond_3

    const-wide v0, 0x200000000L

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x1000

    cmp-long p0, v0, v2

    if-lez p0, :cond_4

    const-wide v0, 0x180000000L

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0xc00

    cmp-long p0, v0, v2

    if-lez p0, :cond_5

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x800

    cmp-long p0, v0, v2

    if-lez p0, :cond_6

    const-wide v0, 0xc0000000L

    goto :goto_0

    :cond_6
    const-wide/16 v2, 0x600

    cmp-long p0, v0, v2

    if-lez p0, :cond_7

    const-wide v0, 0x80000000L

    goto :goto_0

    :cond_7
    const-wide/16 v2, 0x400

    cmp-long p0, v0, v2

    if-lez p0, :cond_8

    const-wide/32 v0, 0x60000000

    goto :goto_0

    :cond_8
    const-wide/16 v2, 0x300

    cmp-long p0, v0, v2

    if-lez p0, :cond_9

    const-wide/32 v0, 0x40000000

    goto :goto_0

    :cond_9
    const-wide/16 v2, 0x200

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const-wide/32 v0, 0x2ccccccc

    goto :goto_0

    :cond_a
    const-wide/32 v0, 0x20000000

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public getWeightToRam()D
    .locals 2

    .line 395
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    return-wide v0
.end method
