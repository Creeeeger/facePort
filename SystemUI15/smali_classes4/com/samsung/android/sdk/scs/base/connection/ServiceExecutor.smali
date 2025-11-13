.class public abstract Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final mConnectionCondition:Ljava/util/concurrent/locks/Condition;

.field public final mConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;

.field public final mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

.field public final mContext:Landroid/content/Context;

.field public mIsConnected:Z

.field public final mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static -$$Nest$munlockConnection(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    const-string p1, "ScsApi@ServiceExecutor"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public constructor <init>(Landroid/app/Activity;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    new-instance p3, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;-><init>(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    const-string p3, "ScsApi@ServiceExecutor"

    const-string p4, "use activity context"

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    const-string p0, "ServiceExecutor. ctor()"

    invoke-static {p3, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    new-instance p3, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;-><init>(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    const-string p3, "ScsApi@ServiceExecutor"

    const-string p4, "use application context"

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    const-string p0, "ServiceExecutor. ctor()"

    invoke-static {p3, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "afterExecute(). mTaskCount: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScsApi@ServiceExecutor"

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 11

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "task"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    aget-object v5, v1, v4

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    const-string v7, " >> "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScsApi@ServiceExecutor"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p2, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;

    if-eqz v1, :cond_17

    check-cast p2, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getFeatureName()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->statusMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/16 v4, -0x3e8

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    if-ne v1, v4, :cond_18

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sinceVersionMap:Ljava/util/Map;

    const-string v4, "checkFeature(). "

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkFeature() : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", sdk : 3.1.24"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ScsApi@Feature"

    invoke-static {v7, v6}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_16

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    const-string v8, "ScsApi@FrameworkWrapper"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    :goto_3
    if-eqz v6, :cond_4

    const-string v0, "checkFeature(). not supported in emergency mode"

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(ILjava/lang/String;)V

    goto/16 :goto_10

    :cond_4
    sget-object v6, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SBIS_FEATURES:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "com.samsung.android.sbrowserintelligenceservice"

    goto :goto_4

    :cond_5
    sget-object v8, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "com.samsung.android.intellivoiceservice"

    goto :goto_4

    :cond_6
    const-string v8, "com.samsung.android.scs"

    :goto_4
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-boolean v9, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v9, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has disabled."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, p2}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    move v0, v5

    goto/16 :goto_10

    :cond_7
    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "scs_sbis_supported_feature_info"

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "scs_sivs_supported_feature_info"

    goto :goto_5

    :cond_9
    const-string v0, "scs_core_supported_feature_info"

    :goto_5
    const-string v4, "Get feature version from global settings. feature : "

    const-string v5, "getFeatureVersionFromSettings(), serviceApp : "

    const-string v6, ", feature : "

    const-string v9, ", settingKey : "

    invoke-static {v5, v8, v6, p2, v9}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ScsApi@FeatureHelper"

    invoke-static {v6, v5}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x2

    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    :goto_6
    move v0, v5

    goto :goto_9

    :cond_a
    :try_start_4
    invoke-static {v0}, Lcom/samsung/android/sdk/scs/base/utils/FeatureHelper;->getFeatureConfig(Ljava/lang/String;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    move-result-object v0

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->getFeatures()Ljava/util/Map;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, p2, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_c
    move v0, v5

    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version : "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :goto_8
    invoke-static {v6}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "Unexpected behaviour when reading global settings"

    invoke-static {v4, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-static {v6}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "Failed to getString from global settings."

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-static {v6}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "Failed to get package info."

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_9
    const-string v4, "checkScsFeature(). retBundle == null!!!"

    const-string v8, "checkScsFeature(). "

    if-ne v0, v5, :cond_10

    sget-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SBIS_FEATURES:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "content://com.samsung.android.sbrowserintelligenceservice.feature"

    goto :goto_a

    :cond_d
    sget-object v0, Lcom/samsung/android/sdk/scs/base/feature/Feature;->SUPPORTED_SIVS_FEATURES:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "content://com.samsung.android.intellivoiceservice.feature"

    goto :goto_a

    :cond_e
    const-string v0, "content://com.samsung.android.scs.feature"

    :goto_a
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v9, "getFeatureVersionFromProvider()"

    invoke-static {v6, v9}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "featureSupportRequest"

    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v9, p2, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    if-nez v10, :cond_f

    invoke-static {v6, v4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    goto :goto_c

    :cond_f
    const-string v0, "constVersion"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_10
    :goto_c
    if-ne v0, v5, :cond_11

    invoke-static {v7, v4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    goto :goto_f

    :cond_11
    if-nez v0, :cond_12

    const-string v0, " is not available!!"

    invoke-static {v8, p2, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    goto :goto_f

    :cond_12
    const/4 v1, -0x1

    const/4 v4, 0x3

    if-ne v0, v1, :cond_13

    const-string v0, "checkScsFeature(). SCS doesn\'t know "

    const-string v1, ". SCS update might be required."

    invoke-static {v0, p2, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    move v0, v4

    goto :goto_f

    :cond_13
    sget-object v1, Lcom/samsung/android/sdk/scs/base/feature/Feature;->sinceVersionMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    :cond_14
    const v1, 0x7fffffff

    :goto_e
    if-ge v0, v1, :cond_15

    const-string v3, ", scsVersion: "

    const-string v5, ", sinceVersion: "

    invoke-static {v0, v8, p2, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_15
    move v0, v3

    :goto_f
    invoke-static {v0, p2}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(ILjava/lang/String;)V

    goto :goto_10

    :catch_5
    const-string v1, "dump(), "

    const-string v3, " does not exist"

    invoke-static {v1, v8, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->setStatus(ILjava/lang/String;)V

    goto :goto_10

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "checkFeature(). input is null. context: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12c

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "beforeExecute(). First check for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". status: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_17
    const-string p2, "Unexpected runnable!!!!"

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_11
    iget-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_6
    iget-boolean p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    if-nez p2, :cond_1b

    const-string p2, "beforeExecute() : not connected, try to connect"

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->getServiceIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;

    invoke-virtual {p0, p2, v0, v1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->connect(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;)Z

    move-result p2

    if-nez p2, :cond_19

    const-string p2, "beforeExecute() : failed to bind service"

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_12

    :catchall_0
    move-exception p1

    goto :goto_15

    :catch_6
    move-exception p2

    goto :goto_13

    :cond_19
    const-string p2, "beforeExecute() : before wait"

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    if-nez p2, :cond_1a

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->await()V

    :cond_1a
    const-string p2, "beforeExecute() : after wait"

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    if-nez p2, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1b
    :goto_12
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_14

    :goto_13
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_12

    :goto_14
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "beforeExecute(). mTaskCount: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_15
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final connect(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;)Z
    .locals 3

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "connect"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->isServiceConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mInternalServiceConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->isServiceConnected()Z

    move-result p3

    const-string v0, "ScsApi@ConnectionManager"

    if-eqz p3, :cond_1

    const-string p0, "just return already bound service obj"

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 p3, 0x0

    if-nez p1, :cond_2

    const-string p1, "Context is null"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v1, p3

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    const-string p1, "Intent is null"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "connectToService mIsConnected = "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mIsConnected:Z

    if-nez p3, :cond_4

    const-string p3, "Binding service with app context"

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->mServiceConnection:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager$1;

    invoke-virtual {p1, p2, p3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_1

    :cond_4
    const-string p1, "already bound"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "connectToService result : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_5

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->notifyServiceConnection(ILandroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_5
    :goto_2
    return v1
.end method

.method public final deInit()V
    .locals 2

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "deInit"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->disconnect()V

    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 2

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->finalize()V

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->disconnect()V

    :cond_0
    return-void
.end method

.method public abstract getServiceIntent()Landroid/content/Intent;
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "ScsApi@ServiceExecutor"

    const-string v0, "onActivityDestroyed"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
