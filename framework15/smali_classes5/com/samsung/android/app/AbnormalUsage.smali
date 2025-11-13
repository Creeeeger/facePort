.class public Lcom/samsung/android/app/AbnormalUsage;
.super Ljava/lang/Object;
.source "AbnormalUsage.java"


# static fields
.field private static final blacklist RUNTIME_USED_LIMIT:J = 0x6ddd0L

.field private static final blacklist RUNTIME_USED_WARM_LIMIT:J = 0x5cc60L

.field private static final blacklist TAG:Ljava/lang/String; = "AbnormalUsage"

.field private static final blacklist VIEW_COUNT_LIMIT:J = 0x898L

.field private static final blacklist VIEW_COUNT_PERIOD:J = 0x8L

.field private static final blacklist VIEW_COUNT_WARM_LIMIT:J = 0x12cL


# instance fields
.field private blacklist mCurrStopCount:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    iput v0, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    return-void
.end method

.method private blacklist checkViewUsage()V
    .locals 14

    const-string v0, "AbnormalUsage"

    iget v1, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const-wide/32 v7, 0x5cc60

    cmp-long v7, v3, v7

    const-wide/32 v8, 0x6ddd0

    if-ltz v7, :cond_0

    iget v7, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    int-to-long v10, v7

    const-wide/16 v12, 0x7

    and-long/2addr v10, v12

    const-wide/16 v12, 0x1

    cmp-long v7, v10, v12

    if-eqz v7, :cond_1

    :cond_0
    cmp-long v7, v3, v8

    if-ltz v7, :cond_2

    :cond_1
    const-class v7, Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v7, v10}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v5

    const-wide/16 v10, 0x12c

    cmp-long v7, v5, v10

    if-lez v7, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-wide/16 v10, 0x898

    cmp-long v7, v5, v10

    if-gtz v7, :cond_3

    if-eqz v1, :cond_4

    cmp-long v7, v3, v8

    if-lez v7, :cond_4

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-interface {v7, v8, v2}, Landroid/app/IActivityManager;->reportAbnormalUsage(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewCount: report abnormal resource usage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "report abnormal resource usage: PID "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " view count : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " memory usage : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " stop count : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public blacklist checkAbnormalUsage()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/AbnormalUsage;->checkViewUsage()V

    return-void
.end method
