.class public Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;
.super Ljava/lang/Object;
.source "KnoxAnalytics.java"


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist KNOXANALYTICS_PROXY_SERVICE:Ljava/lang/String; = "knox_analytics_proxy"

.field private static blacklist TAG:Ljava/lang/String;

.field private static blacklist mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "[KnoxAnalyticsProxySDK] "

    sput-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    const-string v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getService()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    if-nez v0, :cond_0

    const-string v0, "knox_analytics_proxy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->getService()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    const-string v1, "log(): service not running!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->mService:Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/IKnoxAnalyticsProxy;->log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    sget-boolean v3, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    const-string v4, "log(): Security Exception in log - "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    sget-boolean v3, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->TAG:Ljava/lang/String;

    const-string v4, "log(): Remote Exception in log - "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
