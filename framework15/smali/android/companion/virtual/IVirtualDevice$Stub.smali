.class public abstract Landroid/companion/virtual/IVirtualDevice$Stub;
.super Landroid/os/Binder;
.source "IVirtualDevice.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addActivityPolicyExemption:I = 0x9

.field static final blacklist TRANSACTION_close:I = 0x7

.field static final blacklist TRANSACTION_createVirtualDpad:I = 0xd

.field static final blacklist TRANSACTION_createVirtualKeyboard:I = 0xe

.field static final blacklist TRANSACTION_createVirtualMouse:I = 0xf

.field static final blacklist TRANSACTION_createVirtualNavigationTouchpad:I = 0x11

.field static final blacklist TRANSACTION_createVirtualStylus:I = 0x12

.field static final blacklist TRANSACTION_createVirtualTouchscreen:I = 0x10

.field static final blacklist TRANSACTION_getAssociationId:I = 0x1

.field static final blacklist TRANSACTION_getCursorPosition:I = 0x20

.field static final blacklist TRANSACTION_getDeviceId:I = 0x2

.field static final blacklist TRANSACTION_getDevicePolicy:I = 0x5

.field static final blacklist TRANSACTION_getDisplayIds:I = 0x4

.field static final blacklist TRANSACTION_getInputDeviceId:I = 0x14

.field static final blacklist TRANSACTION_getPersistentDeviceId:I = 0x3

.field static final blacklist TRANSACTION_getVirtualCameraId:I = 0x27

.field static final blacklist TRANSACTION_getVirtualSensorList:I = 0x1d

.field static final blacklist TRANSACTION_hasCustomAudioInputSupport:I = 0x6

.field static final blacklist TRANSACTION_launchPendingIntent:I = 0x1f

.field static final blacklist TRANSACTION_onAudioSessionEnded:I = 0xc

.field static final blacklist TRANSACTION_onAudioSessionStarting:I = 0xb

.field static final blacklist TRANSACTION_registerIntentInterceptor:I = 0x23

.field static final blacklist TRANSACTION_registerVirtualCamera:I = 0x25

.field static final blacklist TRANSACTION_removeActivityPolicyExemption:I = 0xa

.field static final blacklist TRANSACTION_sendButtonEvent:I = 0x17

.field static final blacklist TRANSACTION_sendDpadKeyEvent:I = 0x15

.field static final blacklist TRANSACTION_sendKeyEvent:I = 0x16

.field static final blacklist TRANSACTION_sendRelativeEvent:I = 0x18

.field static final blacklist TRANSACTION_sendScrollEvent:I = 0x19

.field static final blacklist TRANSACTION_sendSensorEvent:I = 0x1e

.field static final blacklist TRANSACTION_sendStylusButtonEvent:I = 0x1c

.field static final blacklist TRANSACTION_sendStylusMotionEvent:I = 0x1b

.field static final blacklist TRANSACTION_sendTouchEvent:I = 0x1a

.field static final blacklist TRANSACTION_setDevicePolicy:I = 0x8

.field static final blacklist TRANSACTION_setDisplayImePolicy:I = 0x22

.field static final blacklist TRANSACTION_setShowPointerIcon:I = 0x21

.field static final blacklist TRANSACTION_unregisterInputDevice:I = 0x13

.field static final blacklist TRANSACTION_unregisterIntentInterceptor:I = 0x24

.field static final blacklist TRANSACTION_unregisterVirtualCamera:I = 0x26


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

    invoke-direct {p0, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDevice;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/IVirtualDevice;

    return-object v1

    :cond_1
    new-instance v1, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "getVirtualCameraId"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "unregisterVirtualCamera"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "registerVirtualCamera"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "unregisterIntentInterceptor"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "registerIntentInterceptor"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "setDisplayImePolicy"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "setShowPointerIcon"

    return-object v0

    :pswitch_7
    const-string v0, "getCursorPosition"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "launchPendingIntent"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "sendSensorEvent"

    return-object v0

    :pswitch_a
    const-string v0, "getVirtualSensorList"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "sendStylusButtonEvent"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "sendStylusMotionEvent"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "sendTouchEvent"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "sendScrollEvent"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "sendRelativeEvent"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "sendButtonEvent"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "sendKeyEvent"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "sendDpadKeyEvent"

    return-object v0

    :pswitch_13
    const-string v0, "getInputDeviceId"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "unregisterInputDevice"

    return-object v0

    :pswitch_15
    const-string v0, "createVirtualStylus"

    return-object v0

    :pswitch_16
    const-string v0, "createVirtualNavigationTouchpad"

    return-object v0

    :pswitch_17
    const-string v0, "createVirtualTouchscreen"

    return-object v0

    :pswitch_18
    const-string v0, "createVirtualMouse"

    return-object v0

    :pswitch_19
    const-string v0, "createVirtualKeyboard"

    return-object v0

    :pswitch_1a
    const-string v0, "createVirtualDpad"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "onAudioSessionEnded"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "onAudioSessionStarting"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "removeActivityPolicyExemption"

    return-object v0

    :pswitch_1e
    const-string v0, "addActivityPolicyExemption"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "setDevicePolicy"

    return-object v0

    :pswitch_20
    const-string v0, "close"

    return-object v0

    :pswitch_21
    const-string v0, "hasCustomAudioInputSupport"

    return-object v0

    :pswitch_22
    const-string v0, "getDevicePolicy"

    return-object v0

    :pswitch_23
    const-string v0, "getDisplayIds"

    return-object v0

    :pswitch_24
    const-string v0, "getPersistentDeviceId"

    return-object v0

    :pswitch_25
    const-string v0, "getDeviceId"

    return-object v0

    :pswitch_26
    const-string v0, "getAssociationId"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
.method protected blacklist addActivityPolicyExemption_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected blacklist close_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist createVirtualDpad_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist createVirtualKeyboard_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist createVirtualMouse_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist createVirtualNavigationTouchpad_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist createVirtualStylus_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist createVirtualTouchscreen_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getVirtualCameraId_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getVirtualSensorList_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist onAudioSessionEnded_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist onAudioSessionStarting_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.companion.virtual.IVirtualDevice"

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
    sget-object v2, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v2, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    sget-object v2, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    move-result-object v2

    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDisplayImePolicy(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->setShowPointerIcon(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/virtual/IVirtualDevice$Stub;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/companion/virtual/sensor/VirtualSensorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensorEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getVirtualSensorList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/hardware/input/VirtualStylusButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualStylusButtonEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/hardware/input/VirtualStylusMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualStylusMotionEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualTouchEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/hardware/input/VirtualMouseScrollEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualMouseScrollEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/hardware/input/VirtualMouseRelativeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualMouseRelativeEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/hardware/input/VirtualMouseButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualMouseButtonEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualKeyEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualKeyEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getInputDeviceId(Landroid/os/IBinder;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterInputDevice(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    sget-object v2, Landroid/hardware/input/VirtualStylusConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualStylusConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16
    sget-object v2, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    sget-object v2, Landroid/hardware/input/VirtualTouchscreenConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualTouchscreenConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_18
    sget-object v2, Landroid/hardware/input/VirtualMouseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualMouseConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    sget-object v2, Landroid/hardware/input/VirtualKeyboardConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualKeyboardConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1a
    sget-object v2, Landroid/hardware/input/VirtualDpadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualDpadConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionEnded()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioRoutingCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->removeActivityPolicyExemption(Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->addActivityPolicyExemption(Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDevicePolicy(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_20
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_21
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->hasCustomAudioInputSupport()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDevicePolicy(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_23
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDisplayIds()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_24
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_25
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDeviceId()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_26
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getAssociationId()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method protected blacklist registerIntentInterceptor_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerVirtualCamera_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeActivityPolicyExemption_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist sendButtonEvent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist sendDpadKeyEvent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist sendKeyEvent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist sendRelativeEvent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist sendScrollEvent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist sendSensorEvent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist sendStylusButtonEvent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist sendStylusMotionEvent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist sendTouchEvent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setDevicePolicy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setDisplayImePolicy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setShowPointerIcon_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterInputDevice_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterIntentInterceptor_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterVirtualCamera_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/IVirtualDevice$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
