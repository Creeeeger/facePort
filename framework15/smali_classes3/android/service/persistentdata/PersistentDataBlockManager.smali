.class public Landroid/service/persistentdata/PersistentDataBlockManager;
.super Ljava/lang/Object;
.source "PersistentDataBlockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/persistentdata/PersistentDataBlockManager$FlashLockState;
    }
.end annotation


# static fields
.field public static final whitelist FLASH_LOCK_LOCKED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLASH_LOCK_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLASH_LOCK_UNLOCKED:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o sService:Landroid/service/persistentdata/IPersistentDataBlockService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/persistentdata/PersistentDataBlockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/service/persistentdata/IPersistentDataBlockService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    return-void
.end method


# virtual methods
.method public whitelist deactivateFactoryResetProtection([B)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->deactivateFactoryResetProtection([B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDataBlockSize()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getDataBlockSize()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getFlashLockState()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getFlashLockState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaximumDataBlockSize()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getMaximumDataBlockSize()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOemUnlockEnabled()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getOemUnlockEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPersistentDataPackageName()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->getPersistentDataPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isFactoryResetProtectionActive()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->isFactoryResetProtectionActive()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist read()[B
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->read()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setFactoryResetProtectionSecret([B)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->setFactoryResetProtectionSecret([B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOemUnlockEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->setOemUnlockEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist wipe()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->wipe()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist write([B)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/persistentdata/PersistentDataBlockManager;->sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->write([B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
