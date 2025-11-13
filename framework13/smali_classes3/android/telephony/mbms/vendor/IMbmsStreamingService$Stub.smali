.class public abstract Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;
.super Landroid/os/Binder;
.source "IMbmsStreamingService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsStreamingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.vendor.IMbmsStreamingService"

.field static final greylist-max-o TRANSACTION_dispose:I = 0x6

.field static final greylist-max-o TRANSACTION_getPlaybackUri:I = 0x4

.field static final greylist-max-o TRANSACTION_initialize:I = 0x1

.field static final greylist-max-o TRANSACTION_requestUpdateStreamingServices:I = 0x2

.field static final greylist-max-o TRANSACTION_startStreaming:I = 0x3

.field static final greylist-max-o TRANSACTION_stopStreaming:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_0
    const-string v0, "dispose"

    return-object v0

    .line 88
    :pswitch_1
    const-string/jumbo v0, "stopStreaming"

    return-object v0

    .line 84
    :pswitch_2
    const-string/jumbo v0, "getPlaybackUri"

    return-object v0

    .line 80
    :pswitch_3
    const-string/jumbo v0, "startStreaming"

    return-object v0

    .line 76
    :pswitch_4
    const-string/jumbo v0, "requestUpdateStreamingServices"

    return-object v0

    .line 72
    :pswitch_5
    const-string/jumbo v0, "initialize"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 332
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const-string v0, "android.telephony.mbms.vendor.IMbmsStreamingService"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 119
    packed-switch p1, :pswitch_data_1

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 185
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->dispose(I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto/16 :goto_0

    .line 174
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->stopStreaming(ILjava/lang/String;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_0

    .line 162
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 167
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    goto :goto_0

    .line 148
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/Uri;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IStreamingServiceCallback;

    move-result-object v4

    .line 153
    .local v4, "_arg2":Landroid/telephony/mbms/IStreamingServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I

    move-result v5

    .line 155
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/telephony/mbms/IStreamingServiceCallback;
    .end local v5    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 139
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->requestUpdateStreamingServices(ILjava/util/List;)I

    move-result v4

    .line 141
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    move-result-object v2

    .line 126
    .local v2, "_arg0":Landroid/telephony/mbms/IMbmsStreamingSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 127
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I

    move-result v4

    .line 129
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    nop

    .line 196
    .end local v2    # "_arg0":Landroid/telephony/mbms/IMbmsStreamingSessionCallback;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
