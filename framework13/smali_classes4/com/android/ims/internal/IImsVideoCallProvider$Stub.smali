.class public abstract Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallProvider.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallProvider"

.field static final greylist-max-o TRANSACTION_requestCallDataUsage:I = 0xa

.field static final greylist-max-o TRANSACTION_requestCameraCapabilities:I = 0x9

.field static final greylist-max-o TRANSACTION_sendSessionModifyRequest:I = 0x7

.field static final greylist-max-o TRANSACTION_sendSessionModifyResponse:I = 0x8

.field static final greylist-max-o TRANSACTION_setCallback:I = 0x1

.field static final greylist-max-o TRANSACTION_setCamera:I = 0x2

.field static final greylist-max-o TRANSACTION_setDeviceOrientation:I = 0x5

.field static final greylist-max-o TRANSACTION_setDisplaySurface:I = 0x4

.field static final greylist-max-o TRANSACTION_setPauseImage:I = 0xb

.field static final greylist-max-o TRANSACTION_setPreviewSurface:I = 0x3

.field static final greylist-max-o TRANSACTION_setZoom:I = 0x6


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 96
    packed-switch p0, :pswitch_data_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 140
    :pswitch_0
    const-string/jumbo v0, "setPauseImage"

    return-object v0

    .line 136
    :pswitch_1
    const-string/jumbo v0, "requestCallDataUsage"

    return-object v0

    .line 132
    :pswitch_2
    const-string/jumbo v0, "requestCameraCapabilities"

    return-object v0

    .line 128
    :pswitch_3
    const-string/jumbo v0, "sendSessionModifyResponse"

    return-object v0

    .line 124
    :pswitch_4
    const-string/jumbo v0, "sendSessionModifyRequest"

    return-object v0

    .line 120
    :pswitch_5
    const-string/jumbo v0, "setZoom"

    return-object v0

    .line 116
    :pswitch_6
    const-string/jumbo v0, "setDeviceOrientation"

    return-object v0

    .line 112
    :pswitch_7
    const-string/jumbo v0, "setDisplaySurface"

    return-object v0

    .line 108
    :pswitch_8
    const-string/jumbo v0, "setPreviewSurface"

    return-object v0

    .line 104
    :pswitch_9
    const-string/jumbo v0, "setCamera"

    return-object v0

    .line 100
    :pswitch_a
    const-string/jumbo v0, "setCallback"

    return-object v0

    nop

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 91
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 425
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 151
    invoke-static {p1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 155
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    .line 156
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 167
    packed-switch p1, :pswitch_data_1

    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 163
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v1

    .line 250
    :pswitch_1
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 251
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    .line 253
    goto/16 :goto_0

    .line 244
    .end local v2    # "_arg0":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCallDataUsage()V

    .line 245
    goto/16 :goto_0

    .line 239
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCameraCapabilities()V

    .line 240
    goto/16 :goto_0

    .line 232
    :pswitch_4
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 233
    .local v2, "_arg0":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 235
    goto :goto_0

    .line 222
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile;
    :pswitch_5
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 224
    .restart local v2    # "_arg0":Landroid/telecom/VideoProfile;
    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 225
    .local v3, "_arg1":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 227
    goto :goto_0

    .line 214
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile;
    .end local v3    # "_arg1":Landroid/telecom/VideoProfile;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 215
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setZoom(F)V

    .line 217
    goto :goto_0

    .line 206
    .end local v2    # "_arg0":F
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDeviceOrientation(I)V

    .line 209
    goto :goto_0

    .line 198
    .end local v2    # "_arg0":I
    :pswitch_8
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 199
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    .line 201
    goto :goto_0

    .line 190
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_9
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 191
    .restart local v2    # "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    .line 193
    goto :goto_0

    .line 180
    .end local v2    # "_arg0":Landroid/view/Surface;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCamera(Ljava/lang/String;I)V

    .line 185
    goto :goto_0

    .line 172
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallback;

    move-result-object v2

    .line 173
    .local v2, "_arg0":Lcom/android/ims/internal/IImsVideoCallCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 175
    nop

    .line 260
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsVideoCallCallback;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
