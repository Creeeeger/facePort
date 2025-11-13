.class public abstract Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;
.super Landroid/os/Binder;
.source "IContainerService.java"

# interfaces
.implements Lcom/samsung/android/core/pm/containerservice/IContainerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/containerservice/IContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_copyPackageToContainer:I = 0x1

.field static final blacklist TRANSACTION_doForceGC:I = 0x2


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

    invoke-direct {p0, v0}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.core.pm.containerservice.IContainerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/pm/containerservice/IContainerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.core.pm.containerservice.IContainerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/core/pm/containerservice/IContainerService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "doForceGC"

    return-object v0

    :pswitch_1
    const-string v0, "copyPackageToContainer"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected blacklist copyPackageToContainer_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.COPY_PROTECTED_DATA"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist doForceGC_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.COPY_PROTECTED_DATA"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "com.samsung.android.core.pm.containerservice.IContainerService"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    const v5, 0x5f4e5446

    if-ne v0, v5, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_1
    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->doForceGC()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v6, p0

    move-object v7, v5

    move-object v8, v12

    move-object v9, v13

    move v10, v14

    move-object v11, v15

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    nop

    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
