.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppSession.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createBiInteractiveApp:I = 0x4

.field static final blacklist TRANSACTION_createMediaView:I = 0x30

.field static final blacklist TRANSACTION_destroyBiInteractiveApp:I = 0x5

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x2b

.field static final blacklist TRANSACTION_notifyAdBufferConsumed:I = 0x2e

.field static final blacklist TRANSACTION_notifyAdResponse:I = 0x2d

.field static final blacklist TRANSACTION_notifyBroadcastInfoResponse:I = 0x2c

.field static final blacklist TRANSACTION_notifyContentAllowed:I = 0x24

.field static final blacklist TRANSACTION_notifyContentBlocked:I = 0x25

.field static final blacklist TRANSACTION_notifyError:I = 0x13

.field static final blacklist TRANSACTION_notifyRecordingConnectionFailed:I = 0x18

.field static final blacklist TRANSACTION_notifyRecordingDisconnected:I = 0x19

.field static final blacklist TRANSACTION_notifyRecordingError:I = 0x1b

.field static final blacklist TRANSACTION_notifyRecordingScheduled:I = 0x1c

.field static final blacklist TRANSACTION_notifyRecordingStarted:I = 0x27

.field static final blacklist TRANSACTION_notifyRecordingStopped:I = 0x28

.field static final blacklist TRANSACTION_notifyRecordingTuned:I = 0x1a

.field static final blacklist TRANSACTION_notifySignalStrength:I = 0x26

.field static final blacklist TRANSACTION_notifyTimeShiftCurrentPositionChanged:I = 0x17

.field static final blacklist TRANSACTION_notifyTimeShiftPlaybackParams:I = 0x14

.field static final blacklist TRANSACTION_notifyTimeShiftStartPositionChanged:I = 0x16

.field static final blacklist TRANSACTION_notifyTimeShiftStatusChanged:I = 0x15

.field static final blacklist TRANSACTION_notifyTrackSelected:I = 0x1f

.field static final blacklist TRANSACTION_notifyTracksChanged:I = 0x20

.field static final blacklist TRANSACTION_notifyTuned:I = 0x1e

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x29

.field static final blacklist TRANSACTION_notifyVideoAvailable:I = 0x21

.field static final blacklist TRANSACTION_notifyVideoFreezeUpdated:I = 0x23

.field static final blacklist TRANSACTION_notifyVideoUnavailable:I = 0x22

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0x31

.field static final blacklist TRANSACTION_release:I = 0x1d

.field static final blacklist TRANSACTION_removeMediaView:I = 0x32

.field static final blacklist TRANSACTION_resetInteractiveApp:I = 0x3

.field static final blacklist TRANSACTION_sendAvailableSpeeds:I = 0xe

.field static final blacklist TRANSACTION_sendCertificate:I = 0x10

.field static final blacklist TRANSACTION_sendCurrentChannelLcn:I = 0x9

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0x8

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0xc

.field static final blacklist TRANSACTION_sendCurrentVideoBounds:I = 0x7

.field static final blacklist TRANSACTION_sendSelectedTrackInfo:I = 0x2f

.field static final blacklist TRANSACTION_sendSigningResult:I = 0xf

.field static final blacklist TRANSACTION_sendStreamVolume:I = 0xa

.field static final blacklist TRANSACTION_sendTimeShiftMode:I = 0xd

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0xb

.field static final blacklist TRANSACTION_sendTvRecordingInfo:I = 0x11

.field static final blacklist TRANSACTION_sendTvRecordingInfoList:I = 0x12

.field static final blacklist TRANSACTION_setSurface:I = 0x2a

.field static final blacklist TRANSACTION_setTeletextAppEnabled:I = 0x6

.field static final blacklist TRANSACTION_startInteractiveApp:I = 0x1

.field static final blacklist TRANSACTION_stopInteractiveApp:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppSession;

    return-object v1

    :cond_1
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "removeMediaView"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "relayoutMediaView"

    return-object v0

    :pswitch_2
    const-string v0, "createMediaView"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "sendSelectedTrackInfo"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "notifyAdBufferConsumed"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "notifyAdResponse"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "notifyBroadcastInfoResponse"

    return-object v0

    :pswitch_7
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "setSurface"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "notifyTvMessage"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "notifyRecordingStopped"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "notifyRecordingStarted"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "notifySignalStrength"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "notifyContentBlocked"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "notifyContentAllowed"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "notifyVideoFreezeUpdated"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "notifyVideoUnavailable"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "notifyVideoAvailable"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "notifyTracksChanged"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "notifyTrackSelected"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "notifyTuned"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "release"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "notifyRecordingScheduled"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "notifyRecordingError"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "notifyRecordingTuned"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "notifyRecordingDisconnected"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "notifyRecordingConnectionFailed"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "notifyTimeShiftCurrentPositionChanged"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "notifyTimeShiftStartPositionChanged"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "notifyTimeShiftStatusChanged"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "notifyTimeShiftPlaybackParams"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "notifyError"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "sendTvRecordingInfoList"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "sendTvRecordingInfo"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "sendCertificate"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "sendSigningResult"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "sendAvailableSpeeds"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "sendTimeShiftMode"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "sendCurrentTvInputId"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "sendTrackInfoList"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "sendStreamVolume"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "sendCurrentChannelLcn"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "sendCurrentChannelUri"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "sendCurrentVideoBounds"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "setTeletextAppEnabled"

    return-object v0

    :pswitch_2d
    const-string v0, "destroyBiInteractiveApp"

    return-object v0

    :pswitch_2e
    const-string v0, "createBiInteractiveApp"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "resetInteractiveApp"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "stopInteractiveApp"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "startInteractiveApp"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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

    const/16 v0, 0x31

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

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
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->removeMediaView()V

    goto/16 :goto_0

    :pswitch_1
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->relayoutMediaView(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendSelectedTrackInfo(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v2, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdBuffer;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v2, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdResponse;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyAdResponse(Landroid/media/tv/AdResponse;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v2, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoResponse;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->dispatchSurfaceChanged(III)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->setSurface(Landroid/view/Surface;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTvMessage(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingStopped(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifySignalStrength(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyContentBlocked(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyContentAllowed()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoFreezeUpdated(Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoUnavailable(I)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyVideoAvailable()V

    goto/16 :goto_0

    :pswitch_12
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTracksChanged(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTrackSelected(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTuned(Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->release()V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingError(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTimeShiftStatusChanged(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_1e
    sget-object v2, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlaybackParams;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_20
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTvRecordingInfoList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvRecordingInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCertificate(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendSigningResult(Ljava/lang/String;[B)V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendAvailableSpeeds([F)V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTimeShiftMode(I)V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentTvInputId(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_27
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendTrackInfoList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendStreamVolume(F)V

    goto :goto_0

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentChannelLcn(I)V

    goto :goto_0

    :pswitch_2a
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentChannelUri(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2b
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->setTeletextAppEnabled(Z)V

    goto :goto_0

    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->destroyBiInteractiveApp(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2e
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2f
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->resetInteractiveApp()V

    goto :goto_0

    :pswitch_30
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->stopInteractiveApp()V

    goto :goto_0

    :pswitch_31
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->startInteractiveApp()V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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
