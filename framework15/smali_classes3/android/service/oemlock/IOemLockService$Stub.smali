.class public abstract Landroid/service/oemlock/IOemLockService$Stub;
.super Landroid/os/Binder;
.source "IOemLockService.java"

# interfaces
.implements Landroid/service/oemlock/IOemLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/oemlock/IOemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/oemlock/IOemLockService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.oemlock.IOemLockService"

.field static final blacklist PERMISSIONS_isDeviceOemUnlocked:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isOemUnlockAllowed:[Ljava/lang/String;

.field static final blacklist TRANSACTION_getLockName:I = 0x1

.field static final greylist-max-o TRANSACTION_isDeviceOemUnlocked:I = 0x7

.field static final greylist-max-o TRANSACTION_isOemUnlockAllowed:I = 0x6

.field static final greylist-max-o TRANSACTION_isOemUnlockAllowedByCarrier:I = 0x3

.field static final greylist-max-o TRANSACTION_isOemUnlockAllowedByUser:I = 0x5

.field static final greylist-max-o TRANSACTION_setOemUnlockAllowedByCarrier:I = 0x2

.field static final greylist-max-o TRANSACTION_setOemUnlockAllowedByUser:I = 0x4


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "android.permission.READ_OEM_UNLOCK_STATE"

    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isOemUnlockAllowed:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isDeviceOemUnlocked:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/oemlock/IOemLockService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.oemlock.IOemLockService"

    invoke-virtual {p0, p0, v0}, Landroid/service/oemlock/IOemLockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/oemlock/IOemLockService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.service.oemlock.IOemLockService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/oemlock/IOemLockService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/service/oemlock/IOemLockService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/service/oemlock/IOemLockService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/oemlock/IOemLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "isDeviceOemUnlocked"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "isOemUnlockAllowed"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "isOemUnlockAllowedByUser"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "setOemUnlockAllowedByUser"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "isOemUnlockAllowedByCarrier"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "setOemUnlockAllowedByCarrier"

    return-object v0

    :pswitch_6
    const-string v0, "getLockName"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected blacklist getLockName_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/service/oemlock/IOemLockService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isDeviceOemUnlocked_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isDeviceOemUnlocked:[Ljava/lang/String;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isOemUnlockAllowedByCarrier_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isOemUnlockAllowedByUser_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isOemUnlockAllowed_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isOemUnlockAllowed:[Ljava/lang/String;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.service.oemlock.IOemLockService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isDeviceOemUnlocked()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowed()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByUser()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByUser(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByCarrier(Z[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->getLockName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist setOemUnlockAllowedByCarrier_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setOemUnlockAllowedByUser_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
