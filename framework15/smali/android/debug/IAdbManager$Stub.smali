.class public abstract Landroid/debug/IAdbManager$Stub;
.super Landroid/os/Binder;
.source "IAdbManager.java"

# interfaces
.implements Landroid/debug/IAdbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/debug/IAdbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/debug/IAdbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_allowDebugging:I = 0x1

.field static final blacklist TRANSACTION_allowWirelessDebugging:I = 0x4

.field static final blacklist TRANSACTION_clearDebuggingKeys:I = 0x3

.field static final blacklist TRANSACTION_denyDebugging:I = 0x2

.field static final blacklist TRANSACTION_denyWirelessDebugging:I = 0x5

.field static final blacklist TRANSACTION_disablePairing:I = 0xb

.field static final blacklist TRANSACTION_enablePairingByPairingCode:I = 0x8

.field static final blacklist TRANSACTION_enablePairingByQrCode:I = 0x9

.field static final blacklist TRANSACTION_getAdbWirelessPort:I = 0xa

.field static final blacklist TRANSACTION_getPairedDevices:I = 0x6

.field static final blacklist TRANSACTION_isAdbWifiQrSupported:I = 0xd

.field static final blacklist TRANSACTION_isAdbWifiSupported:I = 0xc

.field static final blacklist TRANSACTION_registerCallback:I = 0xe

.field static final blacklist TRANSACTION_unpairDevice:I = 0x7

.field static final blacklist TRANSACTION_unregisterCallback:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.debug.IAdbManager"

    invoke-virtual {p0, p0, v0}, Landroid/debug/IAdbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.debug.IAdbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/debug/IAdbManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/debug/IAdbManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/debug/IAdbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/debug/IAdbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "registerCallback"

    return-object v0

    :pswitch_2
    const-string v0, "isAdbWifiQrSupported"

    return-object v0

    :pswitch_3
    const-string v0, "isAdbWifiSupported"

    return-object v0

    :pswitch_4
    const-string v0, "disablePairing"

    return-object v0

    :pswitch_5
    const-string v0, "getAdbWirelessPort"

    return-object v0

    :pswitch_6
    const-string v0, "enablePairingByQrCode"

    return-object v0

    :pswitch_7
    const-string v0, "enablePairingByPairingCode"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "unpairDevice"

    return-object v0

    :pswitch_9
    const-string v0, "getPairedDevices"

    return-object v0

    :pswitch_a
    const-string v0, "denyWirelessDebugging"

    return-object v0

    :pswitch_b
    const-string v0, "allowWirelessDebugging"

    return-object v0

    :pswitch_c
    const-string v0, "clearDebuggingKeys"

    return-object v0

    :pswitch_d
    const-string v0, "denyDebugging"

    return-object v0

    :pswitch_e
    const-string v0, "allowDebugging"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/debug/IAdbManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.debug.IAdbManager"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/debug/IAdbCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/debug/IAdbManager$Stub;->unregisterCallback(Landroid/debug/IAdbCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/debug/IAdbCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/debug/IAdbManager$Stub;->registerCallback(Landroid/debug/IAdbCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->isAdbWifiQrSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->isAdbWifiSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->disablePairing()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->getAdbWirelessPort()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/debug/IAdbManager$Stub;->enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->enablePairingByPairingCode()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/debug/IAdbManager$Stub;->unpairDevice(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->getPairedDevices()[Landroid/debug/FingerprintAndPairDevice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->denyWirelessDebugging()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/debug/IAdbManager$Stub;->allowWirelessDebugging(ZLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->clearDebuggingKeys()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroid/debug/IAdbManager$Stub;->denyDebugging()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/debug/IAdbManager$Stub;->allowDebugging(ZLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
