.class public final Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;


# instance fields
.field public final tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    if-nez p1, :cond_0

    const-string p0, "context cannot be null"

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "Configuration cannot be null"

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "TrackingId is empty, set TrackingId"

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    if-nez v1, :cond_3

    const-string p0, "Device Id is empty, set Device Id or enable auto device id"

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "This mode is not allowed to set device Id"

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo p0, "you should set the UI version"

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-direct {v0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
    .locals 3

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-nez v0, :cond_1

    const-string v0, "call after setConfiguration() method"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    return-object v0
.end method


# virtual methods
.method public final sendLog(Ljava/util/Map;)V
    .locals 2

    const-string/jumbo v0, "sendLog"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$3;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
