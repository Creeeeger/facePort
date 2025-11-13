.class public abstract Landroid/hardware/location/IGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IGeofenceHardware.java"

# interfaces
.implements Landroid/hardware/location/IGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IGeofenceHardware"

.field static final greylist-max-o TRANSACTION_addCircularFence:I = 0x5

.field static final greylist-max-o TRANSACTION_getMonitoringTypes:I = 0x3

.field static final greylist-max-o TRANSACTION_getStatusOfMonitoringType:I = 0x4

.field static final greylist-max-o TRANSACTION_pauseGeofence:I = 0x7

.field static final greylist-max-o TRANSACTION_registerForMonitorStateChangeCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_removeGeofence:I = 0x6

.field static final greylist-max-o TRANSACTION_resumeGeofence:I = 0x8

.field static final greylist-max-o TRANSACTION_setFusedGeofenceHardware:I = 0x2

.field static final greylist-max-o TRANSACTION_setGpsGeofenceHardware:I = 0x1

.field static final greylist-max-o TRANSACTION_unregisterForMonitorStateChangeCallback:I = 0xa


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
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

    invoke-direct {p0, v0}, Landroid/hardware/location/IGeofenceHardware$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.location.IGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.hardware.location.IGeofenceHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/location/IGeofenceHardware;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IGeofenceHardware;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "unregisterForMonitorStateChangeCallback"

    return-object v0

    :pswitch_1
    const-string v0, "registerForMonitorStateChangeCallback"

    return-object v0

    :pswitch_2
    const-string v0, "resumeGeofence"

    return-object v0

    :pswitch_3
    const-string v0, "pauseGeofence"

    return-object v0

    :pswitch_4
    const-string v0, "removeGeofence"

    return-object v0

    :pswitch_5
    const-string v0, "addCircularFence"

    return-object v0

    :pswitch_6
    const-string v0, "getStatusOfMonitoringType"

    return-object v0

    :pswitch_7
    const-string v0, "getMonitoringTypes"

    return-object v0

    :pswitch_8
    const-string v0, "setFusedGeofenceHardware"

    return-object v0

    :pswitch_9
    const-string v0, "setGpsGeofenceHardware"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.method protected blacklist addCircularFence_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method protected blacklist getMonitoringTypes_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getStatusOfMonitoringType_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/hardware/location/IGeofenceHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.location.IGeofenceHardware"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/location/IGeofenceHardware$Stub;->resumeGeofence(III)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->pauseGeofence(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->removeGeofence(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/location/IGeofenceHardware$Stub;->addCircularFence(ILandroid/hardware/location/GeofenceHardwareRequestParcelable;Landroid/hardware/location/IGeofenceHardwareCallback;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/location/IGeofenceHardware$Stub;->getStatusOfMonitoringType(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->getMonitoringTypes()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IFusedGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IFusedGeofenceHardware;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/location/IGeofenceHardware$Stub;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/location/IGeofenceHardware$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist pauseGeofence_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerForMonitorStateChangeCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeGeofence_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist resumeGeofence_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterForMonitorStateChangeCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardware$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IGeofenceHardware$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
