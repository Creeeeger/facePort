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

.field private blacklist mChooserCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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

.field private blacklist mServiceConnected:Z

.field private final blacklist mSinceTime:J

.field private final blacklist mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
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

.field private final blacklist mTargetsDict:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
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

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;
    .param p4, "afterCompute"    # Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;
    .param p5, "chooserActivityLogger"    # Lcom/android/internal/app/ChooserActivityLogger;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mChooserCountMap:Ljava/util/Map;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCollator:Ljava/text/Collator;

    .line 107
    iput-object p3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    .line 111
    const-wide/32 v2, 0x240c8400

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mSinceTime:J

    .line 112
    const-string v4, "RRSResolverComparator"

    const-string/jumbo v5, "query usageStats"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v5, v2, v3, v0, v1}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStats:Ljava/util/Map;

    .line 114
    const-string/jumbo v0, "query done"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 117
    invoke-virtual {p0, p4}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setCallBack(Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V

    .line 118
    invoke-virtual {p0, p5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setChooserActivityLogger(Lcom/android/internal/app/ChooserActivityLogger;)V

    .line 120
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 121
    return-void
.end method

.method private blacklist addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V
    .locals 2
    .param p1, "target"    # Landroid/service/resolver/ResolverTarget;

    .line 478
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v1

    .line 479
    .local v0, "finalScore":F
    invoke-virtual {p1, v0}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    .line 485
    .end local v0    # "finalScore":F
    return-void
.end method

.method private blacklist buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
    .locals 10

    .line 523
    new-instance v9, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStats:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

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

    iget-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/text/Collator;Landroid/service/resolver/IResolverRankerService;Landroid/content/ComponentName;ZLandroid/content/pm/PackageManager;)V

    return-object v9
.end method

.method private blacklist initRanker(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 309
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_0

    .line 314
    monitor-exit v0

    return-void

    .line 316
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->resolveRankerService()Landroid/content/Intent;

    move-result-object v0

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 319
    return-void

    .line 321
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    .line 322
    new-instance v3, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;-><init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    .line 326
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mServiceConnected:Z

    .line 330
    :cond_2
    return-void

    .line 316
    .end local v0    # "intent":Landroid/content/Intent;
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
    .param p0, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 497
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 498
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

    .line 501
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

    .line 449
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-nez v0, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 456
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_1

    .line 458
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    iget-object v2, v2, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    invoke-interface {v1, p1, v2}, Landroid/service/resolver/IResolverRankerService;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    .line 459
    monitor-exit v0

    return-void

    .line 465
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
    .end local p1    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 468
    .restart local p0    # "this":Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
    .restart local p1    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 466
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "RRSResolverComparator"

    const-string v2, "Error in Wait for Service Connection."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 472
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->afterCompute()V

    .line 473
    return-void
.end method

.method private blacklist resolveRankerService()Landroid/content/Intent;
    .locals 13

    .line 334
    const-string v0, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    const-string v1, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    const-string v2, "RRSResolverComparator"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.resolver.ResolverRankerService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 336
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
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

    .line 337
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_0

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_1

    .line 342
    goto :goto_0

    .line 344
    :cond_1
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .local v8, "componentName":Landroid/content/ComponentName;
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 349
    .local v9, "perm":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "ResolverRankerService "

    if-nez v10, :cond_2

    .line 350
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

    .line 357
    goto :goto_0

    .line 359
    :cond_2
    iget-object v10, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3

    .line 362
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

    .line 366
    goto/16 :goto_0

    .line 372
    .end local v9    # "perm":Ljava/lang/String;
    :cond_3
    nop

    .line 376
    iput-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 377
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 378
    return-object v3

    .line 368
    :catch_0
    move-exception v9

    .line 369
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 371
    goto/16 :goto_0

    .line 380
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V
    .locals 0
    .param p1, "target"    # Landroid/service/resolver/ResolverTarget;
    .param p2, "recencyScore"    # F
    .param p3, "launchScore"    # F
    .param p4, "timeSpentScore"    # F
    .param p5, "chooserScore"    # F

    .line 490
    invoke-virtual {p1, p2}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 491
    invoke-virtual {p1, p3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 492
    invoke-virtual {p1, p4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 493
    invoke-virtual {p1, p5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 494
    return-void
.end method


# virtual methods
.method blacklist beforeCompute()V
    .locals 4

    .line 438
    invoke-super {p0}, Lcom/android/internal/app/AbstractResolverComparator;->beforeCompute()V

    .line 439
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 441
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 442
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 443
    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 444
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->initRanker(Landroid/content/Context;)V

    .line 445
    return-void
.end method

.method public blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 1
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 258
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist destroy()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mServiceConnected:Z

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->destroy()V

    .line 299
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mServiceConnected:Z

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->afterCompute()V

    .line 305
    return-void
.end method

.method public blacklist doCompute(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v6, p0

    iget-wide v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    const-wide/32 v2, 0x2932e00

    sub-long v7, v0, v2

    .line 163
    .local v7, "recentSinceTime":J
    const/high16 v0, 0x3f800000    # 1.0f

    .line 164
    .local v0, "mostRecencyScore":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 165
    .local v1, "mostTimeSpentScore":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 166
    .local v2, "mostLaunchScore":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 169
    .local v3, "mostChooserScore":F
    iget-object v4, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mChooserCountMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 171
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    .end local v0    # "mostRecencyScore":F
    .end local v1    # "mostTimeSpentScore":F
    .end local v2    # "mostLaunchScore":F
    .end local v3    # "mostChooserScore":F
    .local v9, "mostRecencyScore":F
    .local v10, "mostTimeSpentScore":F
    .local v11, "mostLaunchScore":F
    .local v12, "mostChooserScore":F
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 172
    .local v0, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    new-instance v1, Landroid/service/resolver/ResolverTarget;

    invoke-direct {v1}, Landroid/service/resolver/ResolverTarget;-><init>()V

    .line 173
    .local v1, "resolverTarget":Landroid/service/resolver/ResolverTarget;
    iget-object v2, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v2, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStats:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 175
    .local v2, "pkStats":Landroid/app/usage/UsageStats;
    if-eqz v2, :cond_9

    .line 179
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    invoke-static {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    nop

    .line 182
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v13

    sub-long/2addr v13, v7

    move-object v5, v4

    const-wide/16 v3, 0x0

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    .line 183
    .local v3, "recencyScore":F
    invoke-virtual {v1, v3}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 184
    cmpl-float v4, v3, v9

    if-lez v4, :cond_2

    .line 185
    move v9, v3

    goto :goto_1

    .line 180
    .end local v3    # "recencyScore":F
    :cond_0
    move-object v5, v4

    goto :goto_1

    .line 179
    :cond_1
    move-object v5, v4

    .line 188
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v3

    long-to-float v3, v3

    .line 189
    .local v3, "timeSpentScore":F
    invoke-virtual {v1, v3}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 190
    cmpl-float v4, v3, v10

    if-lez v4, :cond_3

    .line 191
    move v10, v3

    .line 193
    :cond_3
    iget v4, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    int-to-float v4, v4

    .line 194
    .local v4, "launchScore":F
    invoke-virtual {v1, v4}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 195
    cmpl-float v13, v4, v11

    if-lez v13, :cond_4

    .line 196
    move v11, v4

    .line 199
    :cond_4
    const/4 v13, 0x0

    .line 200
    .local v13, "chooserScore":F
    iget-object v14, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v14, :cond_8

    iget-object v14, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    if-eqz v14, :cond_8

    iget-object v14, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v15, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    .line 201
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 202
    iget-object v14, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v15, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArrayMap;

    iget-object v15, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContentType:Ljava/lang/String;

    .line 203
    const/16 v16, 0x0

    move/from16 v17, v3

    .end local v3    # "timeSpentScore":F
    .local v17, "timeSpentScore":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v13, v3

    .line 204
    iget-object v3, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 205
    iget-object v3, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    array-length v3, v3

    .line 206
    .local v3, "size":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v3, :cond_5

    .line 207
    iget-object v15, v2, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move-object/from16 v18, v2

    .end local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .local v18, "pkStats":Landroid/app/usage/UsageStats;
    iget-object v2, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    iget-object v15, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    aget-object v15, v15, v14

    .line 208
    move/from16 v19, v3

    .end local v3    # "size":I
    .local v19, "size":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v13, v2

    .line 206
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto :goto_2

    .end local v18    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v19    # "size":I
    .restart local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .restart local v3    # "size":I
    :cond_5
    move-object/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v3    # "size":I
    .restart local v18    # "pkStats":Landroid/app/usage/UsageStats;
    .restart local v19    # "size":I
    goto :goto_3

    .line 204
    .end local v14    # "i":I
    .end local v18    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v19    # "size":I
    .restart local v2    # "pkStats":Landroid/app/usage/UsageStats;
    :cond_6
    move-object/from16 v18, v2

    .end local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .restart local v18    # "pkStats":Landroid/app/usage/UsageStats;
    goto :goto_3

    .line 201
    .end local v17    # "timeSpentScore":F
    .end local v18    # "pkStats":Landroid/app/usage/UsageStats;
    .restart local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .local v3, "timeSpentScore":F
    :cond_7
    move-object/from16 v18, v2

    move/from16 v17, v3

    .end local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v3    # "timeSpentScore":F
    .restart local v17    # "timeSpentScore":F
    .restart local v18    # "pkStats":Landroid/app/usage/UsageStats;
    goto :goto_3

    .line 200
    .end local v17    # "timeSpentScore":F
    .end local v18    # "pkStats":Landroid/app/usage/UsageStats;
    .restart local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .restart local v3    # "timeSpentScore":F
    :cond_8
    move-object/from16 v18, v2

    move/from16 v17, v3

    .line 222
    .end local v2    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v3    # "timeSpentScore":F
    .restart local v17    # "timeSpentScore":F
    .restart local v18    # "pkStats":Landroid/app/usage/UsageStats;
    :goto_3
    iget-object v2, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mChooserCountMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v4

    add-float/2addr v13, v2

    .line 225
    invoke-virtual {v1, v13}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 226
    cmpl-float v2, v13, v12

    if-lez v2, :cond_a

    .line 227
    move v2, v13

    move v12, v2

    .end local v12    # "mostChooserScore":F
    .local v2, "mostChooserScore":F
    goto :goto_4

    .line 175
    .end local v4    # "launchScore":F
    .end local v13    # "chooserScore":F
    .end local v17    # "timeSpentScore":F
    .end local v18    # "pkStats":Landroid/app/usage/UsageStats;
    .local v2, "pkStats":Landroid/app/usage/UsageStats;
    .restart local v12    # "mostChooserScore":F
    :cond_9
    move-object/from16 v18, v2

    move-object v5, v4

    .line 230
    .end local v0    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v1    # "resolverTarget":Landroid/service/resolver/ResolverTarget;
    .end local v2    # "pkStats":Landroid/app/usage/UsageStats;
    :cond_a
    :goto_4
    move-object v4, v5

    goto/16 :goto_0

    .line 239
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/service/resolver/ResolverTarget;

    .line 241
    .local v14, "target":Landroid/service/resolver/ResolverTarget;
    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v0

    div-float v15, v0, v9

    .line 242
    .local v15, "recency":F
    mul-float v0, v15, v15

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    .line 243
    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v0

    div-float v3, v0, v11

    .line 244
    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v0

    div-float v4, v0, v10

    .line 245
    invoke-virtual {v14}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v0

    div-float v5, v0, v12

    .line 242
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V

    .line 246
    invoke-direct {v6, v14}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V

    .line 250
    .end local v14    # "target":Landroid/service/resolver/ResolverTarget;
    .end local v15    # "recency":F
    goto :goto_5

    .line 251
    :cond_c
    iget-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->predictSelectProbabilities(Ljava/util/List;)V

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 254
    return-void
.end method

.method public blacklist getScore(Landroid/content/ComponentName;)F
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 280
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public blacklist handleResultMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 129
    const-string v0, "RRSResolverComparator"

    const-string v1, "Receiving null prediction results."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 134
    :cond_1
    return-void
.end method

.method public blacklist semCompare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 2
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public blacklist semGetChooserCount(Landroid/content/ComponentName;)F
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 274
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mChooserCountMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mChooserCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method blacklist semGetComparatorModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    return-object v0
.end method

.method public blacklist updateModel(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->notifyOnTargetSelected(Landroid/content/ComponentName;)V

    .line 288
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
