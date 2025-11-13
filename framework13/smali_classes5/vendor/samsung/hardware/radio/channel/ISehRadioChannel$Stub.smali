.class public abstract Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;
.super Landroid/os/Binder;
.source "ISehRadioChannel.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_send:I = 0x2

.field static final blacklist TRANSACTION_setCallback:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;->markVintfStability()V

    .line 44
    sget-object v0, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 63
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    sget-object v0, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 68
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 75
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v1

    .line 80
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return v1

    .line 86
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 104
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 105
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;->send([B)V

    .line 107
    goto :goto_0

    .line 96
    .end local v2    # "_arg0":[B
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/channel/ISehRadioChannelCallback;

    move-result-object v2

    .line 97
    .local v2, "_arg0":Lvendor/samsung/hardware/radio/channel/ISehRadioChannelCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;->setCallback(Lvendor/samsung/hardware/radio/channel/ISehRadioChannelCallback;)V

    .line 99
    nop

    .line 114
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/channel/ISehRadioChannelCallback;
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
