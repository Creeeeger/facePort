.class public final Landroid/app/compat/ChangeIdStateCache;
.super Landroid/app/PropertyInvalidatedCache;
.source "ChangeIdStateCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/app/compat/ChangeIdStateQuery;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist CACHE_KEY:Ljava/lang/String; = "cache_key.is_compat_change_enabled"

.field private static final blacklist MAX_ENTRIES:I = 0x40

.field private static blacklist sDisabled:Z


# instance fields
.field private volatile blacklist mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/compat/ChangeIdStateCache;->sDisabled:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    const/16 v0, 0x40

    const-string v1, "cache_key.is_compat_change_enabled"

    invoke-direct {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static blacklist disable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/compat/ChangeIdStateCache;->sDisabled:Z

    return-void
.end method

.method public static blacklist invalidate()V
    .locals 1

    sget-boolean v0, Landroid/app/compat/ChangeIdStateCache;->sDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "cache_key.is_compat_change_enabled"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method blacklist getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;
    .locals 3

    iget-object v0, p0, Landroid/app/compat/ChangeIdStateCache;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/compat/ChangeIdStateCache;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    move-object v0, v1

    if-nez v0, :cond_1

    const-string/jumbo v1, "platform_compat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/app/compat/ChangeIdStateCache;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get PlatformCompatService instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public blacklist recompute(Landroid/app/compat/ChangeIdStateQuery;)Ljava/lang/Boolean;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget v2, p1, Landroid/app/compat/ChangeIdStateQuery;->type:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iget-wide v3, p1, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    iget-object v5, p1, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    iget v6, p1, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_0
    :try_start_1
    iget v2, p1, Landroid/app/compat/ChangeIdStateQuery;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/app/compat/ChangeIdStateCache;->getPlatformCompatService()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    iget-wide v3, p1, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    iget v5, p1, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid query type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/compat/ChangeIdStateQuery;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not recompute value!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/compat/ChangeIdStateQuery;

    invoke-virtual {p0, p1}, Landroid/app/compat/ChangeIdStateCache;->recompute(Landroid/app/compat/ChangeIdStateQuery;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
