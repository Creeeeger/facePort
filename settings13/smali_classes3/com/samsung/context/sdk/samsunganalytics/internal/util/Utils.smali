.class public Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static br:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static compareDays(ILjava/lang/Long;)Z
    .locals 6

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long p0, p0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr p0, v4

    add-long/2addr v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static compareHours(ILjava/lang/Long;)Z
    .locals 6

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long p0, p0

    const-wide/32 v4, 0x36ee80

    mul-long/2addr p0, v4

    add-long/2addr v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDaysAgo(I)J
    .locals 6

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTypeForServer(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
    .locals 1

    const-string v0, "dl"

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    :goto_0
    return-object p0
.end method

.method public static isDiagnosticAgree(Landroid/content/Context;)Z
    .locals 2

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "samsung_errorlog_agree"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isEngBin()Z
    .locals 2

    .line 22
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static registerReceiver(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    const-string v0, "register BR "

    .line 84
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->br:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->br:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p0, "BR is already registered"

    .line 100
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static sendSettings(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 2

    .line 80
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/BuildClient;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    return-void
.end method

.method public static throwException(Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isEngBin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogE(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
