.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;
.source "ITvInputSession.java"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final greylist-max-o TRANSACTION_appPrivateCommand:I = 0xb

.field static final greylist-max-o TRANSACTION_createOverlayView:I = 0xc

.field static final greylist-max-o TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final blacklist TRANSACTION_notifyAdBufferReady:I = 0x20

.field static final blacklist TRANSACTION_notifyTvAdSessionData:I = 0x24

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x21

.field static final blacklist TRANSACTION_pauseRecording:I = 0x1b

.field static final greylist-max-o TRANSACTION_relayoutOverlayView:I = 0xd

.field static final greylist-max-o TRANSACTION_release:I = 0x1

.field static final blacklist TRANSACTION_removeBroadcastInfo:I = 0x1e

.field static final greylist-max-o TRANSACTION_removeOverlayView:I = 0xe

.field static final blacklist TRANSACTION_requestAd:I = 0x1f

.field static final blacklist TRANSACTION_requestBroadcastInfo:I = 0x1d

.field static final blacklist TRANSACTION_resumePlayback:I = 0x17

.field static final blacklist TRANSACTION_resumeRecording:I = 0x1c

.field static final blacklist TRANSACTION_selectAudioPresentation:I = 0x8

.field static final greylist-max-o TRANSACTION_selectTrack:I = 0x9

.field static final greylist-max-o TRANSACTION_setCaptionEnabled:I = 0x7

.field static final blacklist TRANSACTION_setInteractiveAppNotificationEnabled:I = 0xa

.field static final greylist-max-o TRANSACTION_setMain:I = 0x2

.field static final greylist-max-o TRANSACTION_setSurface:I = 0x3

.field static final blacklist TRANSACTION_setTvMessageEnabled:I = 0x22

.field static final blacklist TRANSACTION_setVideoFrozen:I = 0x23

.field static final greylist-max-o TRANSACTION_setVolume:I = 0x5

.field static final greylist-max-o TRANSACTION_startRecording:I = 0x19

.field static final blacklist TRANSACTION_stopPlayback:I = 0x18

.field static final greylist-max-o TRANSACTION_stopRecording:I = 0x1a

.field static final greylist-max-o TRANSACTION_timeShiftEnablePositionTracking:I = 0x16

.field static final greylist-max-o TRANSACTION_timeShiftPause:I = 0x11

.field static final greylist-max-o TRANSACTION_timeShiftPlay:I = 0x10

.field static final greylist-max-o TRANSACTION_timeShiftResume:I = 0x12

.field static final greylist-max-o TRANSACTION_timeShiftSeekTo:I = 0x13

.field static final blacklist TRANSACTION_timeShiftSetMode:I = 0x15

.field static final greylist-max-o TRANSACTION_timeShiftSetPlaybackParams:I = 0x14

.field static final greylist-max-o TRANSACTION_tune:I = 0x6

.field static final greylist-max-o TRANSACTION_unblockContent:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.ITvInputSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.media.tv.ITvInputSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputSession;

    return-object v1

    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "notifyTvAdSessionData"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "setVideoFrozen"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "setTvMessageEnabled"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "notifyTvMessage"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "notifyAdBufferReady"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "requestAd"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "removeBroadcastInfo"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "requestBroadcastInfo"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "resumeRecording"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "pauseRecording"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "stopRecording"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "startRecording"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "stopPlayback"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "resumePlayback"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "timeShiftEnablePositionTracking"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "timeShiftSetMode"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "timeShiftSetPlaybackParams"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "timeShiftSeekTo"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "timeShiftResume"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "timeShiftPause"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "timeShiftPlay"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "unblockContent"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "removeOverlayView"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "relayoutOverlayView"

    return-object v0

    :pswitch_18
    const-string v0, "createOverlayView"

    return-object v0

    :pswitch_19
    const-string v0, "appPrivateCommand"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "setInteractiveAppNotificationEnabled"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "selectTrack"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "selectAudioPresentation"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "setCaptionEnabled"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "tune"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "setVolume"

    return-object v0

    :pswitch_20
    const-string v0, "dispatchSurfaceChanged"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "setSurface"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "setMain"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "release"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/media/tv/ITvInputSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.tv.ITvInputSession"

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

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->notifyTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setVideoFrozen(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->setTvMessageEnabled(IZ)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->notifyTvMessage(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v2, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdBuffer;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v2, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->requestAd(Landroid/media/tv/AdRequest;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->removeBroadcastInfo(I)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v2, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->resumeRecording(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->pauseRecording(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->stopRecording()V

    goto/16 :goto_0

    :pswitch_b
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->stopPlayback(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->resumePlayback()V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftEnablePositionTracking(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetMode(I)V

    goto/16 :goto_0

    :pswitch_10
    sget-object v2, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlaybackParams;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSeekTo(J)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftResume()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPause()V

    goto/16 :goto_0

    :pswitch_14
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPlay(Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->unblockContent(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    goto/16 :goto_0

    :pswitch_17
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setInteractiveAppNotificationEnabled(Z)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->selectAudioPresentation(II)V

    goto :goto_0

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    goto :goto_0

    :pswitch_1e
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    goto :goto_0

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    goto :goto_0

    :pswitch_21
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    goto :goto_0

    :pswitch_23
    invoke-virtual {p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
