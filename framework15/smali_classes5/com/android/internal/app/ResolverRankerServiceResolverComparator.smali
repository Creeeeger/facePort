.class Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
.super Lcom/android/internal/app/AbstractResolverComparator;
.source "ResolverRankerServiceResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;,
        Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;
    }
.end annotation


# static fields
.field private static final blacklist CONNECTION_COST_TIMEOUT_MILLIS:I = 0xc8

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist RECENCY_MULTIPLIER:F = 2.0f

.field private static final blacklist RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final blacklist TAG:Ljava/lang/String; = "RRSResolverComparator"

.field private static final blacklist USAGE_STATS_PERIOD:J = 0x240c8400L


# instance fields
.field private blacklist mAction:Ljava/lang/String;

.field private final blacklist mCollator:Ljava/text/Collator;

.field private blacklist mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

.field private blacklist mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mCurrentTime:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRanker:Landroid/service/resolver/IResolverRankerService;

.field private blacklist mRankerServiceName:Landroid/content/ComponentName;

.field private final blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mResolvedRankerName:Landroid/content/ComponentName;

.field private final blacklist mSinceTime:J

.field private final blacklist mStatsPerUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetsDictPerUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/LinkedHashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmComparatorModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRanker(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Landroid/service/resolver/IResolverRankerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbuildUpdatedModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/UserHandle;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;",
            "Lcom/android/internal/app/ChooserActivityLogger;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p6}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCollator:Ljava/text/Collator;

    iput-object p3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    iget-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mSinceTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mUsmMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    iget-wide v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mSinceTime:J

    iget-wide v6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-virtual {p0, p4}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setCallBack(Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V

    invoke-virtual {p0, p5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setChooserActivityLogger(Lcom/android/internal/app/ChooserActivityLogger;)V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    return-void
.end method

.method private blacklist addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V
    .locals 6

    const v0, 0x402379a7    # 2.5543f

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v1

    mul-float/2addr v1, v0

    const v0, 0x4035d639

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v0

    const v2, 0x3e89ba5e    # 0.269f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    const v0, 0x40871c43    # 4.2222f

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const v0, 0x3fd41206    # 1.6568f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v4, v2

    double-to-float v0, v4

    invoke-virtual {p1, v0}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    return-void
.end method

.method private blacklist buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
    .locals 10

    new-instance v9, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCollator:Ljava/text/Collator;

    iget-object v5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    iget-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mPmMap:Ljava/util/Map;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/text/Collator;Landroid/service/resolver/IResolverRankerService;Landroid/content/ComponentName;ZLjava/util/Map;)V

    return-object v9
.end method

.method private blacklist initRanker(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->resolveRankerService()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;-><init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static blacklist isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private blacklist predictSelectProbabilities(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    iget-object v2, v2, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    invoke-interface {v1, p1, v2}, Landroid/service/resolver/IResolverRankerService;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RRSResolverComparator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Predict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "RRSResolverComparator"

    const-string v2, "Error in Wait for Service Connection."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->afterCompute()V

    return-void
.end method

.method private blacklist resolveRankerService()Landroid/content/Intent;
    .locals 13

    const-string v0, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    const-string v1, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    const-string v2, "RRSResolverComparator"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.resolver.ResolverRankerService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_0

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v9, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v8, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "ResolverRankerService "

    if-nez v10, :cond_2

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not require permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - this service will not be queried for ResolverRankerServiceResolverComparator. add android:permission=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" to the <service> tag for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in the manifest."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not hold permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - this service will not be queried for ResolverRankerServiceResolverComparator."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    nop

    iput-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v3

    :catch_0
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not look up service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; component name not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    invoke-virtual {p1, p3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    invoke-virtual {p1, p4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    invoke-virtual {p1, p5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    return-void
.end method


# virtual methods
.method blacklist beforeCompute()V
    .locals 4

    invoke-super {p0}, Lcom/android/internal/app/AbstractResolverComparator;->beforeCompute()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->initRanker(Landroid/content/Context;)V

    return-void
.end method

.method public blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->destroy()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->afterCompute()V

    return-void
.end method

.method public blacklist doCompute(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    iget-wide v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    const-wide/32 v2, 0x2932e00

    sub-long v7, v0, v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v1, Landroid/service/resolver/ResolverTarget;

    invoke-direct {v1}, Landroid/service/resolver/ResolverTarget;-><init>()V

    iget-object v2, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    iget-object v5, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v2, :cond_a

    if-eqz v5, :cond_a

    iget-object v13, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v13, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/usage/UsageStats;

    if-eqz v13, :cond_9

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v14

    if-nez v14, :cond_0

    nop

    invoke-virtual {v13}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v14

    sub-long/2addr v14, v7

    move-object/from16 v16, v4

    const-wide/16 v3, 0x0

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    cmpl-float v4, v3, v9

    if-lez v4, :cond_2

    move v9, v3

    goto :goto_1

    :cond_0
    move-object/from16 v16, v4

    goto :goto_1

    :cond_1
    move-object/from16 v16, v4

    :cond_2
    :goto_1
    invoke-virtual {v13}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    cmpl-float v4, v3, v10

    if-lez v4, :cond_3

    move v10, v3

    :cond_3
    iget v4, v13, Landroid/app/usage/UsageStats;->mLaunchCount:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    cmpl-float v14, v4, v11

    if-lez v14, :cond_4

    move v11, v4

    :cond_4
    const/4 v14, 0x0

    iget-object v15, v13, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v15, :cond_8

    iget-object v15, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    if-eqz v15, :cond_8

    iget-object v15, v13, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v13, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v15, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iget-object v15, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContentType:Ljava/lang/String;

    move-object/from16 v19, v2

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v14, v0

    iget-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v15, v13, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move/from16 v20, v0

    iget-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iget-object v15, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    aget-object v15, v15, v2

    move/from16 v21, v3

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v14, v0

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v20

    move/from16 v3, v21

    goto :goto_2

    :cond_5
    move/from16 v20, v0

    move/from16 v21, v3

    goto :goto_3

    :cond_6
    move/from16 v21, v3

    goto :goto_3

    :cond_7
    move-object/from16 v19, v2

    move/from16 v21, v3

    goto :goto_3

    :cond_8
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move/from16 v21, v3

    :goto_3
    invoke-virtual {v1, v14}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    cmpl-float v0, v14, v12

    if-lez v0, :cond_b

    move v0, v14

    move v12, v0

    goto :goto_4

    :cond_9
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v16, v4

    goto :goto_4

    :cond_a
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v16, v4

    :cond_b
    :goto_4
    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iget-object v2, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v3, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_d
    iget-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v0

    div-float v15, v0, v9

    mul-float v0, v15, v15

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v0

    div-float v3, v0, v11

    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v0

    div-float v4, v0, v10

    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v0

    div-float v5, v0, v12

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V

    invoke-direct {v6, v14}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V

    goto :goto_6

    :cond_e
    iget-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->predictSelectProbabilities(Ljava/util/List;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    return-void
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist handleResultMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "RRSResolverComparator"

    if-nez v0, :cond_1

    const-string v0, "Receiving null prediction results."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    nop

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v5

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5, v4}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    :cond_4
    goto :goto_1

    :cond_5
    const-string v2, "Sizes of sent and received ResolverTargets diff."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public blacklist updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->notifyOnTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
