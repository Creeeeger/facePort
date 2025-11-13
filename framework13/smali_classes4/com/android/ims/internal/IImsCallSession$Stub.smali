.class public abstract Lcom/android/ims/internal/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSession"

.field static final greylist-max-o TRANSACTION_accept:I = 0xd

.field static final blacklist TRANSACTION_cancelTransferCall:I = 0x24

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final blacklist TRANSACTION_consultativeTransfer:I = 0x11

.field static final greylist-max-o TRANSACTION_deflect:I = 0xe

.field static final greylist-max-o TRANSACTION_extendToConference:I = 0x17

.field static final greylist-max-o TRANSACTION_getCallId:I = 0x2

.field static final greylist-max-o TRANSACTION_getCallProfile:I = 0x3

.field static final greylist-max-o TRANSACTION_getLocalCallProfile:I = 0x4

.field static final greylist-max-o TRANSACTION_getProperty:I = 0x6

.field static final greylist-max-o TRANSACTION_getRemoteCallProfile:I = 0x5

.field static final greylist-max-o TRANSACTION_getState:I = 0x7

.field static final greylist-max-o TRANSACTION_getVideoCallProvider:I = 0x1e

.field static final greylist-max-o TRANSACTION_hold:I = 0x13

.field static final greylist-max-o TRANSACTION_inviteParticipants:I = 0x18

.field static final greylist-max-o TRANSACTION_isInCall:I = 0x8

.field static final greylist-max-o TRANSACTION_isMultiparty:I = 0x1f

.field static final greylist-max-o TRANSACTION_merge:I = 0x15

.field static final blacklist TRANSACTION_notifyReadyToHandleImsCallbacks:I = 0x26

.field static final greylist-max-o TRANSACTION_reject:I = 0xf

.field static final greylist-max-o TRANSACTION_removeParticipants:I = 0x19

.field static final greylist-max-o TRANSACTION_resume:I = 0x14

.field static final greylist-max-o TRANSACTION_sendDtmf:I = 0x1a

.field static final blacklist TRANSACTION_sendImsCallEvent:I = 0x25

.field static final blacklist TRANSACTION_sendRtpHeaderExtensions:I = 0x23

.field static final greylist-max-o TRANSACTION_sendRttMessage:I = 0x22

.field static final greylist-max-o TRANSACTION_sendRttModifyRequest:I = 0x20

.field static final greylist-max-o TRANSACTION_sendRttModifyResponse:I = 0x21

.field static final greylist-max-o TRANSACTION_sendUssd:I = 0x1d

.field static final greylist-max-o TRANSACTION_setListener:I = 0x9

.field static final greylist-max-o TRANSACTION_setMute:I = 0xa

.field static final greylist-max-o TRANSACTION_start:I = 0xb

.field static final greylist-max-o TRANSACTION_startConference:I = 0xc

.field static final greylist-max-o TRANSACTION_startDtmf:I = 0x1b

.field static final greylist-max-o TRANSACTION_stopDtmf:I = 0x1c

.field static final greylist-max-o TRANSACTION_terminate:I = 0x12

.field static final blacklist TRANSACTION_transfer:I = 0x10

.field static final greylist-max-o TRANSACTION_update:I = 0x16


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 358
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 359
    const-string v0, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 367
    if-nez p0, :cond_0

    .line 368
    const/4 v0, 0x0

    return-object v0

    .line 370
    :cond_0
    const-string v0, "com.android.ims.internal.IImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 371
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSession;

    if-eqz v1, :cond_1

    .line 372
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsCallSession;

    return-object v1

    .line 374
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 383
    packed-switch p0, :pswitch_data_0

    .line 539
    const/4 v0, 0x0

    return-object v0

    .line 535
    :pswitch_0
    const-string/jumbo v0, "notifyReadyToHandleImsCallbacks"

    return-object v0

    .line 531
    :pswitch_1
    const-string/jumbo v0, "sendImsCallEvent"

    return-object v0

    .line 527
    :pswitch_2
    const-string v0, "cancelTransferCall"

    return-object v0

    .line 523
    :pswitch_3
    const-string/jumbo v0, "sendRtpHeaderExtensions"

    return-object v0

    .line 519
    :pswitch_4
    const-string/jumbo v0, "sendRttMessage"

    return-object v0

    .line 515
    :pswitch_5
    const-string/jumbo v0, "sendRttModifyResponse"

    return-object v0

    .line 511
    :pswitch_6
    const-string/jumbo v0, "sendRttModifyRequest"

    return-object v0

    .line 507
    :pswitch_7
    const-string v0, "isMultiparty"

    return-object v0

    .line 503
    :pswitch_8
    const-string v0, "getVideoCallProvider"

    return-object v0

    .line 499
    :pswitch_9
    const-string/jumbo v0, "sendUssd"

    return-object v0

    .line 495
    :pswitch_a
    const-string/jumbo v0, "stopDtmf"

    return-object v0

    .line 491
    :pswitch_b
    const-string/jumbo v0, "startDtmf"

    return-object v0

    .line 487
    :pswitch_c
    const-string/jumbo v0, "sendDtmf"

    return-object v0

    .line 483
    :pswitch_d
    const-string/jumbo v0, "removeParticipants"

    return-object v0

    .line 479
    :pswitch_e
    const-string v0, "inviteParticipants"

    return-object v0

    .line 475
    :pswitch_f
    const-string v0, "extendToConference"

    return-object v0

    .line 471
    :pswitch_10
    const-string/jumbo v0, "update"

    return-object v0

    .line 467
    :pswitch_11
    const-string/jumbo v0, "merge"

    return-object v0

    .line 463
    :pswitch_12
    const-string/jumbo v0, "resume"

    return-object v0

    .line 459
    :pswitch_13
    const-string v0, "hold"

    return-object v0

    .line 455
    :pswitch_14
    const-string/jumbo v0, "terminate"

    return-object v0

    .line 451
    :pswitch_15
    const-string v0, "consultativeTransfer"

    return-object v0

    .line 447
    :pswitch_16
    const-string/jumbo v0, "transfer"

    return-object v0

    .line 443
    :pswitch_17
    const-string/jumbo v0, "reject"

    return-object v0

    .line 439
    :pswitch_18
    const-string v0, "deflect"

    return-object v0

    .line 435
    :pswitch_19
    const-string v0, "accept"

    return-object v0

    .line 431
    :pswitch_1a
    const-string/jumbo v0, "startConference"

    return-object v0

    .line 427
    :pswitch_1b
    const-string/jumbo v0, "start"

    return-object v0

    .line 423
    :pswitch_1c
    const-string/jumbo v0, "setMute"

    return-object v0

    .line 419
    :pswitch_1d
    const-string/jumbo v0, "setListener"

    return-object v0

    .line 415
    :pswitch_1e
    const-string v0, "isInCall"

    return-object v0

    .line 411
    :pswitch_1f
    const-string v0, "getState"

    return-object v0

    .line 407
    :pswitch_20
    const-string v0, "getProperty"

    return-object v0

    .line 403
    :pswitch_21
    const-string v0, "getRemoteCallProfile"

    return-object v0

    .line 399
    :pswitch_22
    const-string v0, "getLocalCallProfile"

    return-object v0

    .line 395
    :pswitch_23
    const-string v0, "getCallProfile"

    return-object v0

    .line 391
    :pswitch_24
    const-string v0, "getCallId"

    return-object v0

    .line 387
    :pswitch_25
    const-string v0, "close"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 378
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1756
    const/16 v0, 0x25

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 546
    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 550
    const-string v0, "com.android.ims.internal.IImsCallSession"

    .line 551
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 552
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 562
    packed-switch p1, :pswitch_data_1

    .line 892
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 558
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    return v1

    .line 886
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->notifyReadyToHandleImsCallbacks()V

    .line 887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    goto/16 :goto_0

    .line 876
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 879
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    goto/16 :goto_0

    .line 869
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->cancelTransferCall()V

    .line 870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto/16 :goto_0

    .line 861
    :pswitch_4
    sget-object v2, Landroid/telephony/ims/RtpHeaderExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 862
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRtpHeaderExtensions(Ljava/util/List;)V

    .line 864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    goto/16 :goto_0

    .line 852
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttMessage(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_0

    .line 843
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 844
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttModifyResponse(Z)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_0

    .line 834
    .end local v2    # "_arg0":Z
    :pswitch_7
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 835
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    goto/16 :goto_0

    .line 826
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isMultiparty()Z

    move-result v2

    .line 827
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 829
    goto/16 :goto_0

    .line 819
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v2

    .line 820
    .local v2, "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 822
    goto/16 :goto_0

    .line 811
    .end local v2    # "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 812
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendUssd(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    goto/16 :goto_0

    .line 804
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->stopDtmf()V

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    goto/16 :goto_0

    .line 796
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    .line 797
    .local v2, "_arg0":C
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->startDtmf(C)V

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    goto/16 :goto_0

    .line 785
    .end local v2    # "_arg0":C
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    .line 787
    .restart local v2    # "_arg0":C
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 788
    .local v3, "_arg1":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendDtmf(CLandroid/os/Message;)V

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    goto/16 :goto_0

    .line 776
    .end local v2    # "_arg0":C
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 777
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->removeParticipants([Ljava/lang/String;)V

    .line 779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    goto/16 :goto_0

    .line 767
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 768
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->inviteParticipants([Ljava/lang/String;)V

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    goto/16 :goto_0

    .line 758
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 759
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->extendToConference([Ljava/lang/String;)V

    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    goto/16 :goto_0

    .line 747
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 749
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 750
    .local v3, "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    goto/16 :goto_0

    .line 740
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->merge()V

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    goto/16 :goto_0

    .line 732
    :pswitch_13
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 733
    .local v2, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    goto/16 :goto_0

    .line 723
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_14
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 724
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    goto/16 :goto_0

    .line 714
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 715
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->terminate(I)V

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    goto/16 :goto_0

    .line 705
    .end local v2    # "_arg0":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 706
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_0

    .line 694
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 697
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->transfer(Ljava/lang/String;Z)V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    goto/16 :goto_0

    .line 685
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 686
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->reject(I)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    goto/16 :goto_0

    .line 676
    .end local v2    # "_arg0":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->deflect(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    goto/16 :goto_0

    .line 665
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 667
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 668
    .local v3, "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto/16 :goto_0

    .line 654
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "_arg0":[Ljava/lang/String;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 657
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    goto/16 :goto_0

    .line 643
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 646
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_0

    .line 634
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 635
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->setMute(Z)V

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    goto/16 :goto_0

    .line 625
    .end local v2    # "_arg0":Z
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v2

    .line 626
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    goto :goto_0

    .line 617
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isInCall()Z

    move-result v2

    .line 618
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 620
    goto :goto_0

    .line 610
    .end local v2    # "_result":Z
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getState()I

    move-result v2

    .line 611
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    goto :goto_0

    .line 601
    .end local v2    # "_result":I
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 606
    goto :goto_0

    .line 593
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 594
    .local v2, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 596
    goto :goto_0

    .line 586
    .end local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 587
    .restart local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 589
    goto :goto_0

    .line 579
    .end local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 580
    .restart local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 582
    goto :goto_0

    .line 572
    .end local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    goto :goto_0

    .line 566
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->close()V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    nop

    .line 895
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
