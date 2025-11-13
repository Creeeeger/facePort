.class public final Landroid/webkit/UrlInterceptRegistry;
.super Ljava/lang/Object;
.source "UrlInterceptRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "intercept"

.field private static greylist-max-o mDisabled:Z

.field private static greylist-max-o mHandlerList:Ljava/util/LinkedList;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized greylist-max-o getHandlers()Ljava/util/LinkedList;
    .locals 2

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    .line 45
    :cond_0
    sget-object v1, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized greylist-max-r getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/PluginData;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 162
    monitor-exit v0

    return-object v2

    .line 164
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 165
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/UrlInterceptHandler;

    .line 167
    .local v3, "handler":Landroid/webkit/UrlInterceptHandler;
    invoke-interface {v3, p0, p1}, Landroid/webkit/UrlInterceptHandler;->getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .local v4, "data":Landroid/webkit/PluginData;
    if-eqz v4, :cond_1

    .line 169
    monitor-exit v0

    return-object v4

    .line 171
    .end local v3    # "handler":Landroid/webkit/UrlInterceptHandler;
    .end local v4    # "data":Landroid/webkit/PluginData;
    :cond_1
    goto :goto_0

    .line 172
    :cond_2
    monitor-exit v0

    return-object v2

    .line 160
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local p0    # "url":Ljava/lang/String;
    .end local p1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized greylist-max-o getSurrogate(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 132
    monitor-exit v0

    return-object v2

    .line 134
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 135
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/UrlInterceptHandler;

    .line 137
    .local v3, "handler":Landroid/webkit/UrlInterceptHandler;
    invoke-interface {v3, p0, p1}, Landroid/webkit/UrlInterceptHandler;->service(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .local v4, "result":Landroid/webkit/CacheManager$CacheResult;
    if-eqz v4, :cond_1

    .line 139
    monitor-exit v0

    return-object v4

    .line 141
    .end local v3    # "handler":Landroid/webkit/UrlInterceptHandler;
    .end local v4    # "result":Landroid/webkit/CacheManager$CacheResult;
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    monitor-exit v0

    return-object v2

    .line 130
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local p0    # "url":Ljava/lang/String;
    .end local p1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized greylist registerHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .locals 2
    .param p0, "handler"    # Landroid/webkit/UrlInterceptHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 96
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 91
    .end local p0    # "handler":Landroid/webkit/UrlInterceptHandler;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized greylist setUrlInterceptDisabled(Z)V
    .locals 1
    .param p0, "disabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 60
    :try_start_0
    sput-boolean p0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v0

    return-void

    .line 59
    .end local p0    # "disabled":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized greylist unregisterHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .locals 2
    .param p0, "handler"    # Landroid/webkit/UrlInterceptHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 114
    :try_start_0
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 114
    .end local p0    # "handler":Landroid/webkit/UrlInterceptHandler;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized greylist-max-o urlInterceptDisabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-boolean v1, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
