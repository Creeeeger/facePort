.class public abstract Landroid/hardware/display/IColorDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IColorDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IColorDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IColorDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getColorMode:I = 0x11

.field static final blacklist TRANSACTION_getNightDisplayAutoMode:I = 0xa

.field static final blacklist TRANSACTION_getNightDisplayAutoModeRaw:I = 0xb

.field static final blacklist TRANSACTION_getNightDisplayColorTemperature:I = 0x8

.field static final blacklist TRANSACTION_getNightDisplayCustomEndTime:I = 0xf

.field static final blacklist TRANSACTION_getNightDisplayCustomStartTime:I = 0xd

.field static final blacklist TRANSACTION_getReduceBrightColorsOffsetFactor:I = 0x19

.field static final blacklist TRANSACTION_getReduceBrightColorsStrength:I = 0x17

.field static final blacklist TRANSACTION_getTransformCapabilities:I = 0x5

.field static final blacklist TRANSACTION_isDeviceColorManaged:I = 0x1

.field static final blacklist TRANSACTION_isDisplayWhiteBalanceEnabled:I = 0x13

.field static final blacklist TRANSACTION_isNightDisplayActivated:I = 0x6

.field static final blacklist TRANSACTION_isReduceBrightColorsActivated:I = 0x15

.field static final blacklist TRANSACTION_isSaturationActivated:I = 0x4

.field static final blacklist TRANSACTION_setAppSaturationLevel:I = 0x3

.field static final blacklist TRANSACTION_setColorMode:I = 0x12

.field static final blacklist TRANSACTION_setDisplayWhiteBalanceEnabled:I = 0x14

.field static final blacklist TRANSACTION_setNightDisplayActivated:I = 0x7

.field static final blacklist TRANSACTION_setNightDisplayAutoMode:I = 0xc

.field static final blacklist TRANSACTION_setNightDisplayColorTemperature:I = 0x9

.field static final blacklist TRANSACTION_setNightDisplayCustomEndTime:I = 0x10

.field static final blacklist TRANSACTION_setNightDisplayCustomStartTime:I = 0xe

.field static final blacklist TRANSACTION_setReduceBrightColorsActivated:I = 0x16

.field static final blacklist TRANSACTION_setReduceBrightColorsStrength:I = 0x18

.field static final blacklist TRANSACTION_setSaturationLevel:I = 0x2


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

    invoke-direct {p0, v0}, Landroid/hardware/display/IColorDisplayManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.display.IColorDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IColorDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IColorDisplayManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.hardware.display.IColorDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IColorDisplayManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IColorDisplayManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "getReduceBrightColorsOffsetFactor"

    return-object v0

    :pswitch_1
    const-string v0, "setReduceBrightColorsStrength"

    return-object v0

    :pswitch_2
    const-string v0, "getReduceBrightColorsStrength"

    return-object v0

    :pswitch_3
    const-string v0, "setReduceBrightColorsActivated"

    return-object v0

    :pswitch_4
    const-string v0, "isReduceBrightColorsActivated"

    return-object v0

    :pswitch_5
    const-string v0, "setDisplayWhiteBalanceEnabled"

    return-object v0

    :pswitch_6
    const-string v0, "isDisplayWhiteBalanceEnabled"

    return-object v0

    :pswitch_7
    const-string v0, "setColorMode"

    return-object v0

    :pswitch_8
    const-string v0, "getColorMode"

    return-object v0

    :pswitch_9
    const-string v0, "setNightDisplayCustomEndTime"

    return-object v0

    :pswitch_a
    const-string v0, "getNightDisplayCustomEndTime"

    return-object v0

    :pswitch_b
    const-string v0, "setNightDisplayCustomStartTime"

    return-object v0

    :pswitch_c
    const-string v0, "getNightDisplayCustomStartTime"

    return-object v0

    :pswitch_d
    const-string v0, "setNightDisplayAutoMode"

    return-object v0

    :pswitch_e
    const-string v0, "getNightDisplayAutoModeRaw"

    return-object v0

    :pswitch_f
    const-string v0, "getNightDisplayAutoMode"

    return-object v0

    :pswitch_10
    const-string v0, "setNightDisplayColorTemperature"

    return-object v0

    :pswitch_11
    const-string v0, "getNightDisplayColorTemperature"

    return-object v0

    :pswitch_12
    const-string v0, "setNightDisplayActivated"

    return-object v0

    :pswitch_13
    const-string v0, "isNightDisplayActivated"

    return-object v0

    :pswitch_14
    const-string v0, "getTransformCapabilities"

    return-object v0

    :pswitch_15
    const-string v0, "isSaturationActivated"

    return-object v0

    :pswitch_16
    const-string v0, "setAppSaturationLevel"

    return-object v0

    :pswitch_17
    const-string v0, "setSaturationLevel"

    return-object v0

    :pswitch_18
    const-string v0, "isDeviceColorManaged"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method protected blacklist getNightDisplayAutoMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/hardware/display/IColorDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getTransformCapabilities_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isSaturationActivated_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

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

    const-string v0, "android.hardware.display.IColorDisplayManager"

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
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getReduceBrightColorsOffsetFactor()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsStrength(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getReduceBrightColorsStrength()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsActivated(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isReduceBrightColorsActivated()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setDisplayWhiteBalanceEnabled(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isDisplayWhiteBalanceEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setColorMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getColorMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v2, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/Time;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayCustomEndTime()Landroid/hardware/display/Time;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v2, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/Time;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayCustomStartTime()Landroid/hardware/display/Time;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayAutoMode(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoModeRaw()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayColorTemperature(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayColorTemperature()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayActivated(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isNightDisplayActivated()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getTransformCapabilities()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isSaturationActivated()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IColorDisplayManager$Stub;->setAppSaturationLevel(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setSaturationLevel(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_18
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isDeviceColorManaged()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist setAppSaturationLevel_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setColorMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setDisplayWhiteBalanceEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setNightDisplayActivated_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setNightDisplayAutoMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setNightDisplayColorTemperature_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setNightDisplayCustomEndTime_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setNightDisplayCustomStartTime_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setReduceBrightColorsActivated_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setReduceBrightColorsStrength_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/IColorDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IColorDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
