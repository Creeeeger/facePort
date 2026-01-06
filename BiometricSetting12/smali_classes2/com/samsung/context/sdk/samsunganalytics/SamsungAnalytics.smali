.class public Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
.super Ljava/lang/Object;
.source "SamsungAnalytics.java"


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "6.05.015"

.field private static instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;


# instance fields
.field private tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;


# direct methods
.method private constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->isValidConfig(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->isLoggingEnableDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-direct {v0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    :cond_1
    return-void
.end method

.method public static getConfiguration()Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->getConfiguration()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-nez v0, :cond_0

    const-string v0, "call after setConfiguration() method"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isEngBin()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstanceAndConfig(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    return-object v0
.end method

.method private static getInstanceAndConfig(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
    .locals 2

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    if-nez v0, :cond_1

    :cond_0
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstanceAndConfig(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    return-void
.end method


# virtual methods
.method public deleteLogData()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->changeUserAgreementState(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public disableAutoActivityTracking()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->disableAutoActivityTracking()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public enableAutoActivityTracking()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->enableAutoActivityTracking()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->getConfiguration()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableAutoDeviceId()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->getConfiguration()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "content://com.sec.android.log.diagmonagent.sa/deviceid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v0, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v3

    :cond_1
    if-eqz v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    nop

    throw v3

    :catch_0
    move-exception v3

    if-eqz v2, :cond_3

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->getConfiguration()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public isEnableAutoActivityTracking()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->isEnableAutoActivityTracking()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public registerSettingPref(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->registerSettingPref(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public restrictNetworkType(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->getConfiguration()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setRestrictedNetworkType(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public sendLog(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->sendLog(Ljava/util/Map;Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/16 v1, -0x64

    return v1
.end method

.method public sendLogSync(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->sendLog(Ljava/util/Map;Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/16 v1, -0x64

    return v1
.end method
