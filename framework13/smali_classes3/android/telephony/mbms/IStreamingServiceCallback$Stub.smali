.class public abstract Landroid/telephony/mbms/IStreamingServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IStreamingServiceCallback.java"

# interfaces
.implements Landroid/telephony/mbms/IStreamingServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/IStreamingServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IStreamingServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.IStreamingServiceCallback"

.field static final greylist-max-o TRANSACTION_onBroadcastSignalStrengthUpdated:I = 0x4

.field static final greylist-max-o TRANSACTION_onError:I = 0x1

.field static final greylist-max-o TRANSACTION_onMediaDescriptionUpdated:I = 0x3

.field static final greylist-max-o TRANSACTION_onStreamMethodUpdated:I = 0x5

.field static final greylist-max-o TRANSACTION_onStreamStateUpdated:I = 0x2


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.telephony.mbms.IStreamingServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IStreamingServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "android.telephony.mbms.IStreamingServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/mbms/IStreamingServiceCallback;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/IStreamingServiceCallback;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Landroid/telephony/mbms/IStreamingServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_0
    const-string/jumbo v0, "onStreamMethodUpdated"

    return-object v0

    .line 77
    :pswitch_1
    const-string/jumbo v0, "onBroadcastSignalStrengthUpdated"

    return-object v0

    .line 73
    :pswitch_2
    const-string/jumbo v0, "onMediaDescriptionUpdated"

    return-object v0

    .line 69
    :pswitch_3
    const-string/jumbo v0, "onStreamStateUpdated"

    return-object v0

    .line 65
    :pswitch_4
    const-string/jumbo v0, "onError"

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

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 244
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "android.telephony.mbms.IStreamingServiceCallback"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 108
    packed-switch p1, :pswitch_data_1

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 146
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->onStreamMethodUpdated(I)V

    .line 149
    goto :goto_0

    .line 138
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->onBroadcastSignalStrengthUpdated(I)V

    .line 141
    goto :goto_0

    .line 132
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->onMediaDescriptionUpdated()V

    .line 133
    goto :goto_0

    .line 123
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->onStreamStateUpdated(II)V

    .line 128
    goto :goto_0

    .line 113
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->onError(ILjava/lang/String;)V

    .line 118
    nop

    .line 156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_0
    return v1

    nop

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
