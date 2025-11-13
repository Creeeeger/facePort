.class public abstract Landroid/media/tv/ITvInputSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInputSessionCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSessionCallback"

.field static final blacklist TRANSACTION_onAdBufferConsumed:I = 0x1b

.field static final blacklist TRANSACTION_onAdResponse:I = 0x1a

.field static final blacklist TRANSACTION_onAitInfoUpdated:I = 0x11

.field static final blacklist TRANSACTION_onAudioPresentationSelected:I = 0x5

.field static final blacklist TRANSACTION_onAudioPresentationsChanged:I = 0x4

.field static final blacklist TRANSACTION_onAvailableSpeeds:I = 0x15

.field static final blacklist TRANSACTION_onBroadcastInfoResponse:I = 0x19

.field static final greylist-max-o TRANSACTION_onChannelRetuned:I = 0x3

.field static final greylist-max-o TRANSACTION_onContentAllowed:I = 0xb

.field static final greylist-max-o TRANSACTION_onContentBlocked:I = 0xc

.field static final blacklist TRANSACTION_onCueingMessageAvailability:I = 0x13

.field static final greylist-max-o TRANSACTION_onError:I = 0x18

.field static final greylist-max-o TRANSACTION_onLayoutSurface:I = 0xd

.field static final greylist-max-o TRANSACTION_onRecordingStopped:I = 0x17

.field static final greylist-max-o TRANSACTION_onSessionCreated:I = 0x1

.field static final greylist-max-o TRANSACTION_onSessionEvent:I = 0x2

.field static final blacklist TRANSACTION_onSignalStrength:I = 0x12

.field static final greylist-max-o TRANSACTION_onTimeShiftCurrentPositionChanged:I = 0x10

.field static final blacklist TRANSACTION_onTimeShiftMode:I = 0x14

.field static final greylist-max-o TRANSACTION_onTimeShiftStartPositionChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onTimeShiftStatusChanged:I = 0xe

.field static final greylist-max-o TRANSACTION_onTrackSelected:I = 0x7

.field static final greylist-max-o TRANSACTION_onTracksChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_onTuned:I = 0x16

.field static final blacklist TRANSACTION_onTvInputSessionData:I = 0x1d

.field static final blacklist TRANSACTION_onTvMessage:I = 0x1c

.field static final greylist-max-o TRANSACTION_onVideoAvailable:I = 0x8

.field static final blacklist TRANSACTION_onVideoFreezeUpdated:I = 0xa

.field static final greylist-max-o TRANSACTION_onVideoUnavailable:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.ITvInputSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.media.tv.ITvInputSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputSessionCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputSessionCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "onTvInputSessionData"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "onTvMessage"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "onAdBufferConsumed"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "onAdResponse"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "onBroadcastInfoResponse"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "onError"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "onRecordingStopped"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "onTuned"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "onAvailableSpeeds"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "onTimeShiftMode"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "onCueingMessageAvailability"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "onSignalStrength"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "onAitInfoUpdated"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "onTimeShiftCurrentPositionChanged"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "onTimeShiftStartPositionChanged"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "onTimeShiftStatusChanged"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "onLayoutSurface"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "onContentBlocked"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "onContentAllowed"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "onVideoFreezeUpdated"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "onVideoUnavailable"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "onVideoAvailable"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "onTrackSelected"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "onTracksChanged"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "onAudioPresentationSelected"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "onAudioPresentationsChanged"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "onChannelRetuned"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "onSessionEvent"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "onSessionCreated"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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

    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/media/tv/ITvInputSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.media.tv.ITvInputSessionCallback"

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

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTvMessage(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v2, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdBuffer;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v2, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdResponse;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAdResponse(Landroid/media/tv/AdResponse;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v2, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoResponse;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onError(I)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onRecordingStopped(Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTuned(Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAvailableSpeeds([F)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftMode(I)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onCueingMessageAvailability(Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSignalStrength(I)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v2, Landroid/media/tv/AitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AitInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAitInfoUpdated(Landroid/media/tv/AitInfo;)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftCurrentPositionChanged(J)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftStartPositionChanged(J)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftStatusChanged(I)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onLayoutSurface(IIII)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onContentBlocked(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onContentAllowed()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoFreezeUpdated(Z)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoUnavailable(I)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoAvailable()V

    goto :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTrackSelected(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_17
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTracksChanged(Ljava/util/List;)V

    goto :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAudioPresentationSelected(II)V

    goto :goto_0

    :pswitch_19
    sget-object v2, Landroid/media/AudioPresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onAudioPresentationsChanged(Ljava/util/List;)V

    goto :goto_0

    :pswitch_1a
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onChannelRetuned(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
