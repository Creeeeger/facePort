.class public abstract Landroid/os/image/IDynamicSystemService$Stub;
.super Landroid/os/Binder;
.source "IDynamicSystemService.java"

# interfaces
.implements Landroid/os/image/IDynamicSystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/IDynamicSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/IDynamicSystemService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abort:I = 0x6

.field static final blacklist TRANSACTION_closePartition:I = 0x3

.field static final blacklist TRANSACTION_createPartition:I = 0x2

.field static final blacklist TRANSACTION_finishInstallation:I = 0x4

.field static final blacklist TRANSACTION_getActiveDsuSlot:I = 0x10

.field static final blacklist TRANSACTION_getAvbPublicKey:I = 0xe

.field static final blacklist TRANSACTION_getInstallationProgress:I = 0x5

.field static final blacklist TRANSACTION_isEnabled:I = 0x9

.field static final blacklist TRANSACTION_isInUse:I = 0x7

.field static final blacklist TRANSACTION_isInstalled:I = 0x8

.field static final blacklist TRANSACTION_remove:I = 0xa

.field static final blacklist TRANSACTION_setAshmem:I = 0xc

.field static final blacklist TRANSACTION_setEnable:I = 0xb

.field static final blacklist TRANSACTION_startInstallation:I = 0x1

.field static final blacklist TRANSACTION_submitFromAshmem:I = 0xd

.field static final blacklist TRANSACTION_suggestScratchSize:I = 0xf


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
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

    invoke-direct {p0, v0}, Landroid/os/image/IDynamicSystemService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.image.IDynamicSystemService"

    invoke-virtual {p0, p0, v0}, Landroid/os/image/IDynamicSystemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/image/IDynamicSystemService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.image.IDynamicSystemService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/image/IDynamicSystemService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/image/IDynamicSystemService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/image/IDynamicSystemService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/image/IDynamicSystemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "getActiveDsuSlot"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "suggestScratchSize"

    return-object v0

    :pswitch_2
    const-string v0, "getAvbPublicKey"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "submitFromAshmem"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "setAshmem"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "setEnable"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "remove"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "isEnabled"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "isInstalled"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "isInUse"

    return-object v0

    :pswitch_a
    const-string v0, "abort"

    return-object v0

    :pswitch_b
    const-string v0, "getInstallationProgress"

    return-object v0

    :pswitch_c
    const-string v0, "finishInstallation"

    return-object v0

    :pswitch_d
    const-string v0, "closePartition"

    return-object v0

    :pswitch_e
    const-string v0, "createPartition"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "startInstallation"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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
.method protected blacklist abort_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected blacklist closePartition_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist createPartition_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist finishInstallation_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getActiveDsuSlot_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAvbPublicKey_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getInstallationProgress_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/os/image/IDynamicSystemService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.os.image.IDynamicSystemService"

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
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->suggestScratchSize()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v2, Landroid/gsi/AvbPublicKey;

    invoke-direct {v2}, Landroid/gsi/AvbPublicKey;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/image/IDynamicSystemService$Stub;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/image/IDynamicSystemService$Stub;->submitFromAshmem(J)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/image/IDynamicSystemService$Stub;->setAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/image/IDynamicSystemService$Stub;->setEnable(ZZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->remove()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isInstalled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isInUse()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->abort()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getInstallationProgress()Landroid/gsi/GsiProgress;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->finishInstallation()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroid/os/image/IDynamicSystemService$Stub;->closePartition()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/image/IDynamicSystemService$Stub;->createPartition(Ljava/lang/String;JZ)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/image/IDynamicSystemService$Stub;->startInstallation(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist remove_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setAshmem_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setEnable_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist startInstallation_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist submitFromAshmem_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist suggestScratchSize_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/image/IDynamicSystemService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/image/IDynamicSystemService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
