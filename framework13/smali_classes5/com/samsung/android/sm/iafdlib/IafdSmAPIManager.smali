.class public Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;
.super Ljava/lang/Object;
.source "IafdSmAPIManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Dc.IafdSmAPIManager"


# instance fields
.field private blacklist mContentObserver:Landroid/database/ContentObserver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sm/iafdlib/CheckUpdateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager$1;-><init>(Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public blacklist checkUpdate(Ljava/lang/String;JLcom/samsung/android/sm/iafdlib/CheckUpdateCallback;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "checkUpdateCallback"    # Lcom/samsung/android/sm/iafdlib/CheckUpdateCallback;

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sm/iafdlib/CheckUpdateCallback;->onResult(IJLjava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "Dc.IafdSmAPIManager"

    const-string/jumbo v1, "pkgName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 62
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "versionCode"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "com.samsung.android.sm.dcapi"

    const-string v4, "checkUpdate"

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 67
    iget-object v1, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sm/iafdlib/IafdConstant;->IAFD_STUB_EX_CHECK_UPDATE_API:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    return-void
.end method

.method public blacklist onDestroy()V
    .locals 3

    .line 86
    const-string v0, "Dc.IafdSmAPIManager"

    :try_start_0
    const-string/jumbo v1, "unregisterContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "onDestroy "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist reportErrorDataToServer(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "errorType"    # I
    .param p4, "errorStack"    # Ljava/lang/String;
    .param p5, "errorComponent"    # Ljava/lang/String;
    .param p6, "versionCode"    # J
    .param p8, "appName"    # Ljava/lang/String;
    .param p9, "versionName"    # Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v1, "error_stack"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "component"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "versionCode"

    invoke-virtual {v0, v1, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 79
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "version_name"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/samsung/android/sm/iafdlib/IafdSmAPIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.samsung.android.sm.dcapi"

    const-string/jumbo v3, "reportToServer"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 82
    return-void
.end method
