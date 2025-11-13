.class public abstract Landroid/hardware/thermal/IThermal$Stub;
.super Landroid/os/Binder;
.source "IThermal.java"

# interfaces
.implements Landroid/hardware/thermal/IThermal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/IThermal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/thermal/IThermal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCoolingDevices:I = 0x1

.field static final blacklist TRANSACTION_getCoolingDevicesWithType:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getTemperatureThresholds:I = 0x5

.field static final blacklist TRANSACTION_getTemperatureThresholdsWithType:I = 0x6

.field static final blacklist TRANSACTION_getTemperatures:I = 0x3

.field static final blacklist TRANSACTION_getTemperaturesWithType:I = 0x4

.field static final blacklist TRANSACTION_registerCoolingDeviceChangedCallbackWithType:I = 0xa

.field static final blacklist TRANSACTION_registerThermalChangedCallback:I = 0x7

.field static final blacklist TRANSACTION_registerThermalChangedCallbackWithType:I = 0x8

.field static final blacklist TRANSACTION_unregisterCoolingDeviceChangedCallback:I = 0xb

.field static final blacklist TRANSACTION_unregisterThermalChangedCallback:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/thermal/IThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/thermal/IThermal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermal;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/thermal/IThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/thermal/IThermal;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/thermal/IThermal;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/thermal/IThermal$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/thermal/IThermal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    :sswitch_2
    const-string v0, "unregisterCoolingDeviceChangedCallback"

    return-object v0

    :sswitch_3
    const-string v0, "registerCoolingDeviceChangedCallbackWithType"

    return-object v0

    :sswitch_4
    const-string v0, "unregisterThermalChangedCallback"

    return-object v0

    :sswitch_5
    const-string v0, "registerThermalChangedCallbackWithType"

    return-object v0

    :sswitch_6
    const-string v0, "registerThermalChangedCallback"

    return-object v0

    :sswitch_7
    const-string v0, "getTemperatureThresholdsWithType"

    return-object v0

    :sswitch_8
    const-string v0, "getTemperatureThresholds"

    return-object v0

    :sswitch_9
    const-string v0, "getTemperaturesWithType"

    return-object v0

    :sswitch_a
    const-string v0, "getTemperatures"

    return-object v0

    :sswitch_b
    const-string v0, "getCoolingDevicesWithType"

    return-object v0

    :sswitch_c
    const-string v0, "getCoolingDevices"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/hardware/thermal/IThermal$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/hardware/thermal/IThermal$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/thermal/ICoolingDeviceChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/ICoolingDeviceChangedCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/thermal/IThermal$Stub;->unregisterCoolingDeviceChangedCallback(Landroid/hardware/thermal/ICoolingDeviceChangedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/thermal/ICoolingDeviceChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/ICoolingDeviceChangedCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/thermal/IThermal$Stub;->registerCoolingDeviceChangedCallbackWithType(Landroid/hardware/thermal/ICoolingDeviceChangedCallback;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermalChangedCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/thermal/IThermal$Stub;->unregisterThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermalChangedCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/thermal/IThermal$Stub;->registerThermalChangedCallbackWithType(Landroid/hardware/thermal/IThermalChangedCallback;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermalChangedCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/thermal/IThermal$Stub;->registerThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/thermal/IThermal$Stub;->getTemperatureThresholdsWithType(I)[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getTemperatureThresholds()[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/thermal/IThermal$Stub;->getTemperaturesWithType(I)[Landroid/hardware/thermal/Temperature;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getTemperatures()[Landroid/hardware/thermal/Temperature;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/thermal/IThermal$Stub;->getCoolingDevicesWithType(I)[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/thermal/IThermal$Stub;->getCoolingDevices()[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    nop

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
