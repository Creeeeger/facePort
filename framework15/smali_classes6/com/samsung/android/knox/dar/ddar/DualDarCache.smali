.class public Lcom/samsung/android/knox/dar/ddar/DualDarCache;
.super Ljava/lang/Object;
.source "DualDarCache.java"


# static fields
.field private static final blacklist DDAR_CACHE_SERVICE:Ljava/lang/String; = "DDAR_CACHE_SERVICE"

.field public static final blacklist DELETE_DATA_CMD:Ljava/lang/String; = "DELETE_DATA_CMD"

.field public static final blacklist DUALDAR_PASSWORD1:Ljava/lang/String; = "DUALDAR_PASSWORD1"

.field public static final blacklist DUALDAR_VERSION_ALIAS:Ljava/lang/String; = "DualDARVersion"

.field private static final blacklist DUAL_DAR_KEY:Ljava/lang/String; = "DUAL_DAR_KEY"

.field private static final blacklist DUAL_DAR_USER_ID:Ljava/lang/String; = "DUAL_DAR_USER_ID"

.field private static final blacklist DUAL_DAR_VALUE:Ljava/lang/String; = "DUAL_DAR_VALUE"

.field public static final blacklist GET_DATA_CMD:Ljava/lang/String; = "GET_DATA_CMD"

.field public static final blacklist KEY_CLIENT_ALL_FILEHASHES:Ljava/lang/String; = "KEY_CLIENT_ALL_FILEHASHES"

.field public static final blacklist KEY_CLIENT_ALL_FILENAMES:Ljava/lang/String; = "KEY_CLIENT_ALL_FILENAMES"

.field public static final blacklist KEY_CLIENT_LIBRARY_NAME:Ljava/lang/String; = "KEY_CLIENT_LIBRARY_NAME"

.field public static final blacklist KEY_CLIENT_PACKAGE_NAME:Ljava/lang/String; = "KEY_CLIENT_PACKAGE_NAME"

.field public static final blacklist SET_DATA_CMD:Ljava/lang/String; = "SET_DATA_CMD"

.field private static final blacklist SYSTEM_PROXY_AGENT:Ljava/lang/String; = "SYSTEM_PROXY_AGENT"

.field private static final blacklist TAG:Ljava/lang/String; = "DualDarCache"

.field private static blacklist sInstance:Lcom/samsung/android/knox/dar/ddar/DualDarCache;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarCache;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->sInstance:Lcom/samsung/android/knox/dar/ddar/DualDarCache;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/dar/ddar/DualDarCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->sInstance:Lcom/samsung/android/knox/dar/ddar/DualDarCache;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarCache;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/dar/ddar/DualDarCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->sInstance:Lcom/samsung/android/knox/dar/ddar/DualDarCache;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->sInstance:Lcom/samsung/android/knox/dar/ddar/DualDarCache;

    return-object v0
.end method


# virtual methods
.method public blacklist get(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DUAL_DAR_USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DUAL_DAR_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object v1

    const-string v2, "DDAR_CACHE_SERVICE"

    const-string v3, "GET_DATA_CMD"

    const-string v4, "SYSTEM_PROXY_AGENT"

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "dual_dar_response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "DUAL_DAR_VALUE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    :goto_0
    const-string v2, "DualDarCache"

    const-string v3, "Error: getData : failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist remove(ILjava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DUAL_DAR_USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DUAL_DAR_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object v1

    const-string v2, "DDAR_CACHE_SERVICE"

    const-string v3, "DELETE_DATA_CMD"

    const-string v4, "SYSTEM_PROXY_AGENT"

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "dual_dar_response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DualDarCache"

    const-string v3, "Error: deleteData : failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public blacklist set(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DUAL_DAR_USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DUAL_DAR_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DUAL_DAR_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/DualDarCache;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object v1

    const-string v2, "DDAR_CACHE_SERVICE"

    const-string v3, "SET_DATA_CMD"

    const-string v4, "SYSTEM_PROXY_AGENT"

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "dual_dar_response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DualDarCache"

    const-string v3, "Error: getData : failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void
.end method
