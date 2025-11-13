.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "IPhoneStateListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final blacklist TRANSACTION_onActiveDataSubIdChanged:I = 0x17

.field static final blacklist TRANSACTION_onAllowedNetworkTypesChanged:I = 0x23

.field static final blacklist TRANSACTION_onBarringInfoChanged:I = 0x20

.field static final blacklist TRANSACTION_onCallBackModeStarted:I = 0x26

.field static final blacklist TRANSACTION_onCallBackModeStopped:I = 0x27

.field static final blacklist TRANSACTION_onCallDisconnectCauseChanged:I = 0x1d

.field static final greylist-max-o TRANSACTION_onCallForwardingIndicatorChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onCallStateChanged:I = 0x7

.field static final blacklist TRANSACTION_onCallStatesChanged:I = 0x19

.field static final greylist-max-o TRANSACTION_onCarrierNetworkChange:I = 0x13

.field static final blacklist TRANSACTION_onCarrierRoamingNtnAvailableServicesChanged:I = 0x2b

.field static final blacklist TRANSACTION_onCarrierRoamingNtnEligibleStateChanged:I = 0x2a

.field static final blacklist TRANSACTION_onCarrierRoamingNtnModeChanged:I = 0x29

.field static final blacklist TRANSACTION_onCarrierRoamingNtnSignalStrengthChanged:I = 0x2c

.field static final greylist-max-o TRANSACTION_onCellInfoChanged:I = 0xb

.field static final greylist-max-o TRANSACTION_onCellLocationChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onDataActivationStateChanged:I = 0x11

.field static final greylist-max-o TRANSACTION_onDataActivity:I = 0x9

.field static final greylist-max-o TRANSACTION_onDataConnectionRealTimeInfoChanged:I = 0xe

.field static final greylist-max-o TRANSACTION_onDataConnectionStateChanged:I = 0x8

.field static final blacklist TRANSACTION_onDataEnabledChanged:I = 0x22

.field static final blacklist TRANSACTION_onDisplayInfoChanged:I = 0x15

.field static final blacklist TRANSACTION_onEmergencyNumberListChanged:I = 0x1a

.field static final blacklist TRANSACTION_onImsCallDisconnectCauseChanged:I = 0x1e

.field static final blacklist TRANSACTION_onLegacyCallStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onLinkCapacityEstimateChanged:I = 0x24

.field static final blacklist TRANSACTION_onMediaQualityStatusChanged:I = 0x25

.field static final greylist-max-o TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onOemHookRawEvent:I = 0x12

.field static final blacklist TRANSACTION_onOutgoingEmergencyCall:I = 0x1b

.field static final blacklist TRANSACTION_onOutgoingEmergencySms:I = 0x1c

.field static final blacklist TRANSACTION_onPhoneCapabilityChanged:I = 0x16

.field static final blacklist TRANSACTION_onPhysicalChannelConfigChanged:I = 0x21

.field static final greylist-max-o TRANSACTION_onPreciseCallStateChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onPreciseDataConnectionStateChanged:I = 0xd

.field static final blacklist TRANSACTION_onRadioPowerStateChanged:I = 0x18

.field static final blacklist TRANSACTION_onRegistrationFailed:I = 0x1f

.field static final blacklist TRANSACTION_onSemSatelliteServiceStateChanged:I = 0x2d

.field static final blacklist TRANSACTION_onSemSatelliteSignalStrengthChanged:I = 0x2e

.field static final greylist-max-o TRANSACTION_onServiceStateChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onSignalStrengthsChanged:I = 0xa

.field static final blacklist TRANSACTION_onSimultaneousCallingStateChanged:I = 0x28

.field static final blacklist TRANSACTION_onSrvccStateChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onUserMobileDataStateChanged:I = 0x14

.field static final greylist-max-o TRANSACTION_onVoiceActivationStateChanged:I = 0x10


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IPhoneStateListener;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "onSemSatelliteSignalStrengthChanged"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "onSemSatelliteServiceStateChanged"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "onCarrierRoamingNtnSignalStrengthChanged"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "onCarrierRoamingNtnAvailableServicesChanged"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "onCarrierRoamingNtnEligibleStateChanged"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "onCarrierRoamingNtnModeChanged"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "onSimultaneousCallingStateChanged"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "onCallBackModeStopped"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "onCallBackModeStarted"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "onMediaQualityStatusChanged"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "onLinkCapacityEstimateChanged"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "onAllowedNetworkTypesChanged"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "onDataEnabledChanged"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "onPhysicalChannelConfigChanged"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "onBarringInfoChanged"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "onRegistrationFailed"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "onImsCallDisconnectCauseChanged"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "onCallDisconnectCauseChanged"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "onOutgoingEmergencySms"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "onOutgoingEmergencyCall"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "onEmergencyNumberListChanged"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "onCallStatesChanged"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "onRadioPowerStateChanged"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "onActiveDataSubIdChanged"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "onPhoneCapabilityChanged"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "onDisplayInfoChanged"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "onUserMobileDataStateChanged"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "onCarrierNetworkChange"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "onOemHookRawEvent"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "onDataActivationStateChanged"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "onVoiceActivationStateChanged"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "onSrvccStateChanged"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "onDataConnectionRealTimeInfoChanged"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "onPreciseDataConnectionStateChanged"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "onPreciseCallStateChanged"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "onCellInfoChanged"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "onSignalStrengthsChanged"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "onDataActivity"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "onDataConnectionStateChanged"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "onCallStateChanged"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "onLegacyCallStateChanged"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "onCellLocationChanged"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "onCallForwardingIndicatorChanged"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "onMessageWaitingIndicatorChanged"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "onSignalStrengthChanged"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "onServiceStateChanged"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0x2d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.android.internal.telephony.IPhoneStateListener"

    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v7, v0, :cond_1

    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    sget-object v0, Landroid/telephony/satellite/SemSatelliteSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSemSatelliteSignalStrengthChanged(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Landroid/telephony/satellite/SemSatelliteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSemSatelliteServiceStateChanged(Landroid/telephony/satellite/SemSatelliteServiceState;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Landroid/telephony/satellite/NtnSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/NtnSignalStrength;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnAvailableServicesChanged([I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnEligibleStateChanged(Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnModeChanged(Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSimultaneousCallingStateChanged([I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallBackModeStopped(II)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallBackModeStarted(I)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Landroid/telephony/ims/MediaQualityStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/MediaQualityStatus;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onLinkCapacityEstimateChanged(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onAllowedNetworkTypesChanged(IJ)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataEnabledChanged(ZI)V

    goto/16 :goto_0

    :pswitch_d
    sget-object v0, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPhysicalChannelConfigChanged(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_e
    sget-object v0, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/BarringInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    goto/16 :goto_0

    :pswitch_f
    sget-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/telephony/CellIdentity;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    goto/16 :goto_0

    :pswitch_10
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallDisconnectCauseChanged(II)V

    goto/16 :goto_0

    :pswitch_12
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    goto/16 :goto_0

    :pswitch_13
    sget-object v0, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_15
    sget-object v0, Landroid/telephony/CallState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStatesChanged(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onRadioPowerStateChanged(I)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onActiveDataSubIdChanged(I)V

    goto/16 :goto_0

    :pswitch_18
    sget-object v0, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneCapability;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    goto/16 :goto_0

    :pswitch_19
    sget-object v0, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onUserMobileDataStateChanged(Z)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierNetworkChange(Z)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOemHookRawEvent([B)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivationStateChanged(I)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoiceActivationStateChanged(I)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSrvccStateChanged(I)V

    goto/16 :goto_0

    :pswitch_20
    sget-object v0, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    goto/16 :goto_0

    :pswitch_21
    sget-object v0, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    goto/16 :goto_0

    :pswitch_22
    sget-object v0, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PreciseCallState;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    goto/16 :goto_0

    :pswitch_23
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellInfoChanged(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    goto :goto_0

    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(II)V

    goto :goto_0

    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(I)V

    goto :goto_0

    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onLegacyCallStateChanged(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_29
    sget-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V

    goto :goto_0

    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    goto :goto_0

    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    goto :goto_0

    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    goto :goto_0

    :pswitch_2d
    sget-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    nop

    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
