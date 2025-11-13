.class public abstract Landroid/media/tv/ad/ITvAdSession$Stub;
.super Landroid/os/Binder;
.source "ITvAdSession.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createMediaView:I = 0xe

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x6

.field static final blacklist TRANSACTION_notifyError:I = 0xc

.field static final blacklist TRANSACTION_notifyTvInputSessionData:I = 0x11

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0xd

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0xf

.field static final blacklist TRANSACTION_release:I = 0x1

.field static final blacklist TRANSACTION_removeMediaView:I = 0x10

.field static final blacklist TRANSACTION_resetAdService:I = 0x4

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0x8

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0xa

.field static final blacklist TRANSACTION_sendCurrentVideoBounds:I = 0x7

.field static final blacklist TRANSACTION_sendSigningResult:I = 0xb

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0x9

.field static final blacklist TRANSACTION_setSurface:I = 0x5

.field static final blacklist TRANSACTION_startAdService:I = 0x2

.field static final blacklist TRANSACTION_stopAdService:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.ad.ITvAdSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.media.tv.ad.ITvAdSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdSession;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/media/tv/ad/ITvAdSession;

    return-object v1

    :cond_1
    new-instance v1, Landroid/media/tv/ad/ITvAdSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/ITvAdSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "notifyTvInputSessionData"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "removeMediaView"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "relayoutMediaView"

    return-object v0

    :pswitch_3
    const-string v0, "createMediaView"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "notifyTvMessage"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "notifyError"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "sendSigningResult"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "sendCurrentTvInputId"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "sendTrackInfoList"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "sendCurrentChannelUri"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "sendCurrentVideoBounds"

    return-object v0

    :pswitch_b
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "setSurface"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "resetAdService"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "stopAdService"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "startAdService"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "release"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/media/tv/ad/ITvAdSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.media.tv.ad.ITvAdSession"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSession$Stub;->notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->removeMediaView()V

    goto/16 :goto_0

    :pswitch_2
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->relayoutMediaView(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSession$Stub;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSession$Stub;->notifyTvMessage(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSession$Stub;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendSigningResult(Ljava/lang/String;[B)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendCurrentTvInputId(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendTrackInfoList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_9
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendCurrentChannelUri(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_a
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ad/ITvAdSession$Stub;->dispatchSurfaceChanged(III)V

    goto :goto_0

    :pswitch_c
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->resetAdService()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->stopAdService()V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->startAdService()V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;->release()V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
