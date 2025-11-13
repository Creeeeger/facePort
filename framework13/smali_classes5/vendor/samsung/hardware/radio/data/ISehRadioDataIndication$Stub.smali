.class public abstract Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;
.super Landroid/os/Binder;
.source "ISehRadioDataIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_needApnProfileIndication:I = 0x3

.field static final blacklist TRANSACTION_needPacketUsage:I = 0x5

.field static final blacklist TRANSACTION_needSettingValueIndication:I = 0x4

.field static final blacklist TRANSACTION_rrcStateChanged:I = 0x1

.field static final blacklist TRANSACTION_timerStatusChangedInd:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->markVintfStability()V

    .line 56
    sget-object v0, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 75
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    sget-object v0, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 103
    packed-switch p1, :pswitch_data_0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 87
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 92
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v1

    .line 98
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 150
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->needPacketUsage(Ljava/lang/String;)Lvendor/samsung/hardware/radio/data/SehPacketUsage;

    move-result-object v3

    .line 153
    .local v3, "_result":Lvendor/samsung/hardware/radio/data/SehPacketUsage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    goto :goto_0

    .line 138
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lvendor/samsung/hardware/radio/data/SehPacketUsage;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->needSettingValueIndication(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 143
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    goto :goto_0

    .line 128
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->needApnProfileIndication(Ljava/lang/String;)Lvendor/samsung/hardware/radio/data/SehApnProfile;

    move-result-object v3

    .line 131
    .local v3, "_result":Lvendor/samsung/hardware/radio/data/SehApnProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 133
    goto :goto_0

    .line 118
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lvendor/samsung/hardware/radio/data/SehApnProfile;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 121
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->timerStatusChangedInd(I[I)V

    .line 123
    goto :goto_0

    .line 108
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;

    .line 111
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;->rrcStateChanged(ILvendor/samsung/hardware/radio/data/SehRrcStateInfo;)V

    .line 113
    nop

    .line 162
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
