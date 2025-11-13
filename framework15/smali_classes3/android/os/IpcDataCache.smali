.class public Landroid/os/IpcDataCache;
.super Landroid/app/PropertyInvalidatedCache;
.source "IpcDataCache.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IpcDataCache$Config;,
        Landroid/os/IpcDataCache$SystemServerCallHandler;,
        Landroid/os/IpcDataCache$RemoteCall;,
        Landroid/os/IpcDataCache$QueryHandler;,
        Landroid/os/IpcDataCache$IpcDataCacheModule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/PropertyInvalidatedCache<",
        "TQuery;TResult;>;"
    }
.end annotation


# static fields
.field public static final blacklist MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist MODULE_SYSTEM:Ljava/lang/String; = "system_server"

.field public static final blacklist MODULE_TEST:Ljava/lang/String; = "test"


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/IpcDataCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$QueryHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$Config;",
            "Landroid/os/IpcDataCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->maxEntries()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->module()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->api()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->name()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$Config;",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/IpcDataCache$SystemServerCallHandler;

    invoke-direct {v0, p2}, Landroid/os/IpcDataCache$SystemServerCallHandler;-><init>(Landroid/os/IpcDataCache$RemoteCall;)V

    invoke-direct {p0, p1, v0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$QueryHandler;)V

    return-void
.end method

.method public static blacklist disableForCurrentProcess(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist disableForCurrentProcess()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-super {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess()V

    return-void
.end method

.method public blacklist invalidateCache()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-super {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    return-void
.end method

.method public blacklist query(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
