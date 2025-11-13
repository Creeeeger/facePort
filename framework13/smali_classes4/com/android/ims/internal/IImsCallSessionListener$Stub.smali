.class public abstract Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSessionListener"

.field static final blacklist TRANSACTION_callQualityChanged:I = 0x26

.field static final greylist-max-o TRANSACTION_callSessionConferenceExtendFailed:I = 0x12

.field static final greylist-max-o TRANSACTION_callSessionConferenceExtendReceived:I = 0x13

.field static final greylist-max-o TRANSACTION_callSessionConferenceExtended:I = 0x11

.field static final greylist-max-o TRANSACTION_callSessionConferenceStateUpdated:I = 0x18

.field static final greylist-max-o TRANSACTION_callSessionHandover:I = 0x1a

.field static final greylist-max-o TRANSACTION_callSessionHandoverFailed:I = 0x1b

.field static final greylist-max-o TRANSACTION_callSessionHeld:I = 0x5

.field static final greylist-max-o TRANSACTION_callSessionHoldFailed:I = 0x6

.field static final greylist-max-o TRANSACTION_callSessionHoldReceived:I = 0x7

.field static final greylist-max-o TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x14

.field static final greylist-max-o TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x15

.field static final greylist-max-o TRANSACTION_callSessionMayHandover:I = 0x1c

.field static final greylist-max-o TRANSACTION_callSessionMergeComplete:I = 0xc

.field static final greylist-max-o TRANSACTION_callSessionMergeFailed:I = 0xd

.field static final greylist-max-o TRANSACTION_callSessionMergeStarted:I = 0xb

.field static final greylist-max-o TRANSACTION_callSessionMultipartyStateChanged:I = 0x1e

.field static final greylist-max-o TRANSACTION_callSessionProgressing:I = 0x1

.field static final greylist-max-o TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x16

.field static final greylist-max-o TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x17

.field static final greylist-max-o TRANSACTION_callSessionResumeFailed:I = 0x9

.field static final greylist-max-o TRANSACTION_callSessionResumeReceived:I = 0xa

.field static final greylist-max-o TRANSACTION_callSessionResumed:I = 0x8

.field static final blacklist TRANSACTION_callSessionRttAudioIndicatorChanged:I = 0x23

.field static final greylist-max-o TRANSACTION_callSessionRttMessageReceived:I = 0x22

.field static final greylist-max-o TRANSACTION_callSessionRttModifyRequestReceived:I = 0x20

.field static final greylist-max-o TRANSACTION_callSessionRttModifyResponseReceived:I = 0x21

.field static final greylist-max-o TRANSACTION_callSessionStartFailed:I = 0x3

.field static final greylist-max-o TRANSACTION_callSessionStarted:I = 0x2

.field static final greylist-max-o TRANSACTION_callSessionSuppServiceReceived:I = 0x1f

.field static final greylist-max-o TRANSACTION_callSessionTerminated:I = 0x4

.field static final blacklist TRANSACTION_callSessionTransferFailed:I = 0x25

.field static final blacklist TRANSACTION_callSessionTransferred:I = 0x24

.field static final greylist-max-o TRANSACTION_callSessionTtyModeReceived:I = 0x1d

.field static final greylist-max-o TRANSACTION_callSessionUpdateFailed:I = 0xf

.field static final greylist-max-o TRANSACTION_callSessionUpdateReceived:I = 0x10

.field static final greylist-max-o TRANSACTION_callSessionUpdated:I = 0xe

.field static final greylist-max-o TRANSACTION_callSessionUssdMessageReceived:I = 0x19


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 190
    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 198
    if-nez p0, :cond_0

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 202
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 203
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsCallSessionListener;

    return-object v1

    .line 205
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 214
    packed-switch p0, :pswitch_data_0

    .line 370
    const/4 v0, 0x0

    return-object v0

    .line 366
    :pswitch_0
    const-string v0, "callQualityChanged"

    return-object v0

    .line 362
    :pswitch_1
    const-string v0, "callSessionTransferFailed"

    return-object v0

    .line 358
    :pswitch_2
    const-string v0, "callSessionTransferred"

    return-object v0

    .line 354
    :pswitch_3
    const-string v0, "callSessionRttAudioIndicatorChanged"

    return-object v0

    .line 350
    :pswitch_4
    const-string v0, "callSessionRttMessageReceived"

    return-object v0

    .line 346
    :pswitch_5
    const-string v0, "callSessionRttModifyResponseReceived"

    return-object v0

    .line 342
    :pswitch_6
    const-string v0, "callSessionRttModifyRequestReceived"

    return-object v0

    .line 338
    :pswitch_7
    const-string v0, "callSessionSuppServiceReceived"

    return-object v0

    .line 334
    :pswitch_8
    const-string v0, "callSessionMultipartyStateChanged"

    return-object v0

    .line 330
    :pswitch_9
    const-string v0, "callSessionTtyModeReceived"

    return-object v0

    .line 326
    :pswitch_a
    const-string v0, "callSessionMayHandover"

    return-object v0

    .line 322
    :pswitch_b
    const-string v0, "callSessionHandoverFailed"

    return-object v0

    .line 318
    :pswitch_c
    const-string v0, "callSessionHandover"

    return-object v0

    .line 314
    :pswitch_d
    const-string v0, "callSessionUssdMessageReceived"

    return-object v0

    .line 310
    :pswitch_e
    const-string v0, "callSessionConferenceStateUpdated"

    return-object v0

    .line 306
    :pswitch_f
    const-string v0, "callSessionRemoveParticipantsRequestFailed"

    return-object v0

    .line 302
    :pswitch_10
    const-string v0, "callSessionRemoveParticipantsRequestDelivered"

    return-object v0

    .line 298
    :pswitch_11
    const-string v0, "callSessionInviteParticipantsRequestFailed"

    return-object v0

    .line 294
    :pswitch_12
    const-string v0, "callSessionInviteParticipantsRequestDelivered"

    return-object v0

    .line 290
    :pswitch_13
    const-string v0, "callSessionConferenceExtendReceived"

    return-object v0

    .line 286
    :pswitch_14
    const-string v0, "callSessionConferenceExtendFailed"

    return-object v0

    .line 282
    :pswitch_15
    const-string v0, "callSessionConferenceExtended"

    return-object v0

    .line 278
    :pswitch_16
    const-string v0, "callSessionUpdateReceived"

    return-object v0

    .line 274
    :pswitch_17
    const-string v0, "callSessionUpdateFailed"

    return-object v0

    .line 270
    :pswitch_18
    const-string v0, "callSessionUpdated"

    return-object v0

    .line 266
    :pswitch_19
    const-string v0, "callSessionMergeFailed"

    return-object v0

    .line 262
    :pswitch_1a
    const-string v0, "callSessionMergeComplete"

    return-object v0

    .line 258
    :pswitch_1b
    const-string v0, "callSessionMergeStarted"

    return-object v0

    .line 254
    :pswitch_1c
    const-string v0, "callSessionResumeReceived"

    return-object v0

    .line 250
    :pswitch_1d
    const-string v0, "callSessionResumeFailed"

    return-object v0

    .line 246
    :pswitch_1e
    const-string v0, "callSessionResumed"

    return-object v0

    .line 242
    :pswitch_1f
    const-string v0, "callSessionHoldReceived"

    return-object v0

    .line 238
    :pswitch_20
    const-string v0, "callSessionHoldFailed"

    return-object v0

    .line 234
    :pswitch_21
    const-string v0, "callSessionHeld"

    return-object v0

    .line 230
    :pswitch_22
    const-string v0, "callSessionTerminated"

    return-object v0

    .line 226
    :pswitch_23
    const-string v0, "callSessionStartFailed"

    return-object v0

    .line 222
    :pswitch_24
    const-string v0, "callSessionStarted"

    return-object v0

    .line 218
    :pswitch_25
    const-string v0, "callSessionProgressing"

    return-object v0

    nop

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

    .line 209
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1530
    const/16 v0, 0x25

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 377
    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 381
    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

    .line 382
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 383
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 393
    packed-switch p1, :pswitch_data_1

    .line 812
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 389
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    return v1

    .line 804
    :pswitch_1
    sget-object v2, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallQuality;

    .line 805
    .local v2, "_arg0":Landroid/telephony/CallQuality;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callQualityChanged(Landroid/telephony/CallQuality;)V

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    goto/16 :goto_0

    .line 795
    .end local v2    # "_arg0":Landroid/telephony/CallQuality;
    :pswitch_2
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 796
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    goto/16 :goto_0

    .line 788
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTransferred()V

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    goto/16 :goto_0

    .line 780
    :pswitch_4
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 781
    .local v2, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_0

    .line 771
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    goto/16 :goto_0

    .line 762
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 763
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttModifyResponseReceived(I)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_0

    .line 751
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 753
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 754
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttModifyRequestReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    goto/16 :goto_0

    .line 740
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 742
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 743
    .local v3, "_arg1":Landroid/telephony/ims/ImsSuppServiceNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    goto/16 :goto_0

    .line 729
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsSuppServiceNotification;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 731
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 732
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    goto/16 :goto_0

    .line 718
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 720
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 721
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    goto/16 :goto_0

    .line 705
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 707
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 709
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 710
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMayHandover(Lcom/android/ims/internal/IImsCallSession;II)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto/16 :goto_0

    .line 690
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 692
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 694
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 696
    .restart local v4    # "_arg2":I
    sget-object v5, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 697
    .local v5, "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    goto/16 :goto_0

    .line 675
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 677
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 679
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 681
    .restart local v4    # "_arg2":I
    sget-object v5, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 682
    .restart local v5    # "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    goto/16 :goto_0

    .line 662
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 664
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 666
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto/16 :goto_0

    .line 651
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 653
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsConferenceState;

    .line 654
    .local v3, "_arg1":Landroid/telephony/ims/ImsConferenceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    goto/16 :goto_0

    .line 640
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsConferenceState;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 642
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 643
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    goto/16 :goto_0

    .line 631
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 632
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    goto/16 :goto_0

    .line 620
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 622
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 623
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    goto/16 :goto_0

    .line 611
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 612
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    goto/16 :goto_0

    .line 598
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 600
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 602
    .local v3, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    sget-object v4, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsCallProfile;

    .line 603
    .local v4, "_arg2":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    goto/16 :goto_0

    .line 587
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 589
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 590
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    goto/16 :goto_0

    .line 574
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 576
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 578
    .local v3, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    sget-object v4, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsCallProfile;

    .line 579
    .restart local v4    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_0

    .line 563
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 565
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 566
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    goto/16 :goto_0

    .line 552
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 554
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 555
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_0

    .line 541
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 543
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 544
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    goto/16 :goto_0

    .line 530
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 532
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 533
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    goto/16 :goto_0

    .line 521
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 522
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    goto/16 :goto_0

    .line 508
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 510
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 512
    .local v3, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    sget-object v4, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsCallProfile;

    .line 513
    .restart local v4    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    goto/16 :goto_0

    .line 497
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 499
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 500
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    goto/16 :goto_0

    .line 486
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 488
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 489
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_0

    .line 475
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 477
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 478
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_0

    .line 464
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 466
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 467
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    goto/16 :goto_0

    .line 453
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 455
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 456
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    goto/16 :goto_0

    .line 442
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 444
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 445
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    goto :goto_0

    .line 431
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 433
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 434
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    goto :goto_0

    .line 420
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 422
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 423
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    goto :goto_0

    .line 409
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 411
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 412
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    goto :goto_0

    .line 398
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 400
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 401
    .local v3, "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    nop

    .line 815
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
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
