.class public abstract Landroid/hardware/display/IDisplayManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IDisplayManagerCallback.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManagerCallback"

.field static final blacklist TRANSACTION_onDeviceEvent:I = 0x5

.field static final greylist-max-o TRANSACTION_onDisplayEvent:I = 0x1

.field static final blacklist TRANSACTION_onDisplayVolumeEvent:I = 0x2

.field static final blacklist TRANSACTION_onDisplayVolumeKeyEvent:I = 0x3

.field static final blacklist TRANSACTION_onWifiDisplayParameterEvent:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.hardware.display.IDisplayManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "android.hardware.display.IDisplayManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IDisplayManagerCallback;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDisplayManagerCallback;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Landroid/hardware/display/IDisplayManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_0
    const-string/jumbo v0, "onDeviceEvent"

    return-object v0

    .line 80
    :pswitch_1
    const-string/jumbo v0, "onWifiDisplayParameterEvent"

    return-object v0

    .line 76
    :pswitch_2
    const-string/jumbo v0, "onDisplayVolumeKeyEvent"

    return-object v0

    .line 72
    :pswitch_3
    const-string/jumbo v0, "onDisplayVolumeEvent"

    return-object v0

    .line 68
    :pswitch_4
    const-string/jumbo v0, "onDisplayEvent"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 260
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const-string v0, "android.hardware.display.IDisplayManagerCallback"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 111
    packed-switch p1, :pswitch_data_1

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 154
    :pswitch_1
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 156
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 157
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->onDeviceEvent(Landroid/os/Bundle;I)V

    .line 159
    goto :goto_0

    .line 144
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 147
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->onWifiDisplayParameterEvent(ILjava/util/List;)V

    .line 149
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->onDisplayVolumeKeyEvent(I)V

    .line 139
    goto :goto_0

    .line 126
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 128
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 129
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->onDisplayVolumeEvent(ILandroid/os/Bundle;)V

    .line 131
    goto :goto_0

    .line 116
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 119
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->onDisplayEvent(II)V

    .line 121
    nop

    .line 166
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
