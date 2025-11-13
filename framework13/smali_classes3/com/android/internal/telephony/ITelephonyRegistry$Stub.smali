.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final blacklist TRANSACTION_addCarrierPrivilegesCallback:I = 0x2b

.field static final blacklist TRANSACTION_addOnOpportunisticSubscriptionsChangedListener:I = 0x2

.field static final greylist-max-o TRANSACTION_addOnSubscriptionsChangedListener:I = 0x1

.field static final blacklist TRANSACTION_clearPreciseDataConnectionStates:I = 0x2f

.field static final blacklist TRANSACTION_listenWithEventList:I = 0x4

.field static final blacklist TRANSACTION_notifyActiveDataSubIdChanged:I = 0x1e

.field static final blacklist TRANSACTION_notifyAllowedNetworkTypesChanged:I = 0x29

.field static final blacklist TRANSACTION_notifyBarringInfoChanged:I = 0x26

.field static final greylist-max-o TRANSACTION_notifyCallForwardingChanged:I = 0xa

.field static final greylist-max-o TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xb

.field static final blacklist TRANSACTION_notifyCallQualityChanged:I = 0x23

.field static final greylist-max-o TRANSACTION_notifyCallState:I = 0x6

.field static final blacklist TRANSACTION_notifyCallStateForAllSubs:I = 0x5

.field static final greylist-max-o TRANSACTION_notifyCarrierNetworkChange:I = 0x19

.field static final blacklist TRANSACTION_notifyCarrierNetworkChangeWithSubId:I = 0x1a

.field static final blacklist TRANSACTION_notifyCarrierPrivilegesChanged:I = 0x2d

.field static final blacklist TRANSACTION_notifyCarrierServiceChanged:I = 0x2e

.field static final greylist-max-o TRANSACTION_notifyCellInfo:I = 0x10

.field static final greylist-max-o TRANSACTION_notifyCellInfoForSubscriber:I = 0x13

.field static final greylist-max-o TRANSACTION_notifyCellLocationForSubscriber:I = 0xf

.field static final greylist-max-o TRANSACTION_notifyDataActivity:I = 0xc

.field static final greylist-max-o TRANSACTION_notifyDataActivityForSubscriber:I = 0xd

.field static final greylist-max-o TRANSACTION_notifyDataConnectionForSubscriber:I = 0xe

.field static final blacklist TRANSACTION_notifyDataEnabled:I = 0x28

.field static final greylist-max-o TRANSACTION_notifyDisconnectCause:I = 0x12

.field static final blacklist TRANSACTION_notifyDisplayInfoChanged:I = 0x1c

.field static final blacklist TRANSACTION_notifyEmergencyNumberList:I = 0x20

.field static final blacklist TRANSACTION_notifyImsDisconnectCause:I = 0x24

.field static final blacklist TRANSACTION_notifyLinkCapacityEstimateChanged:I = 0x2a

.field static final greylist-max-o TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0x9

.field static final greylist-max-o TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x16

.field static final blacklist TRANSACTION_notifyOpportunisticSubscriptionInfoChanged:I = 0x18

.field static final blacklist TRANSACTION_notifyOutgoingEmergencyCall:I = 0x21

.field static final blacklist TRANSACTION_notifyOutgoingEmergencySms:I = 0x22

.field static final blacklist TRANSACTION_notifyPhoneCapabilityChanged:I = 0x1d

.field static final blacklist TRANSACTION_notifyPhysicalChannelConfigForSubscriber:I = 0x27

.field static final greylist-max-o TRANSACTION_notifyPreciseCallState:I = 0x11

.field static final blacklist TRANSACTION_notifyRadioPowerStateChanged:I = 0x1f

.field static final blacklist TRANSACTION_notifyRegistrationFailed:I = 0x25

.field static final greylist-max-o TRANSACTION_notifyServiceStateForPhoneId:I = 0x7

.field static final greylist-max-o TRANSACTION_notifySignalStrengthForPhoneId:I = 0x8

.field static final greylist-max-o TRANSACTION_notifySimActivationStateChangedForPhoneId:I = 0x15

.field static final blacklist TRANSACTION_notifySrvccStateChanged:I = 0x14

.field static final greylist-max-o TRANSACTION_notifySubscriptionInfoChanged:I = 0x17

.field static final greylist-max-o TRANSACTION_notifyUserMobileDataStateChangedForPhoneId:I = 0x1b

.field static final blacklist TRANSACTION_removeCarrierPrivilegesCallback:I = 0x2c

.field static final greylist-max-o TRANSACTION_removeOnSubscriptionsChangedListener:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 163
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 171
    if-nez p0, :cond_0

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_0
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 175
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_1

    .line 176
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ITelephonyRegistry;

    return-object v1

    .line 178
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 187
    packed-switch p0, :pswitch_data_0

    .line 379
    const/4 v0, 0x0

    return-object v0

    .line 375
    :pswitch_0
    const-string v0, "clearPreciseDataConnectionStates"

    return-object v0

    .line 371
    :pswitch_1
    const-string/jumbo v0, "notifyCarrierServiceChanged"

    return-object v0

    .line 367
    :pswitch_2
    const-string/jumbo v0, "notifyCarrierPrivilegesChanged"

    return-object v0

    .line 363
    :pswitch_3
    const-string/jumbo v0, "removeCarrierPrivilegesCallback"

    return-object v0

    .line 359
    :pswitch_4
    const-string v0, "addCarrierPrivilegesCallback"

    return-object v0

    .line 355
    :pswitch_5
    const-string/jumbo v0, "notifyLinkCapacityEstimateChanged"

    return-object v0

    .line 351
    :pswitch_6
    const-string/jumbo v0, "notifyAllowedNetworkTypesChanged"

    return-object v0

    .line 347
    :pswitch_7
    const-string/jumbo v0, "notifyDataEnabled"

    return-object v0

    .line 343
    :pswitch_8
    const-string/jumbo v0, "notifyPhysicalChannelConfigForSubscriber"

    return-object v0

    .line 339
    :pswitch_9
    const-string/jumbo v0, "notifyBarringInfoChanged"

    return-object v0

    .line 335
    :pswitch_a
    const-string/jumbo v0, "notifyRegistrationFailed"

    return-object v0

    .line 331
    :pswitch_b
    const-string/jumbo v0, "notifyImsDisconnectCause"

    return-object v0

    .line 327
    :pswitch_c
    const-string/jumbo v0, "notifyCallQualityChanged"

    return-object v0

    .line 323
    :pswitch_d
    const-string/jumbo v0, "notifyOutgoingEmergencySms"

    return-object v0

    .line 319
    :pswitch_e
    const-string/jumbo v0, "notifyOutgoingEmergencyCall"

    return-object v0

    .line 315
    :pswitch_f
    const-string/jumbo v0, "notifyEmergencyNumberList"

    return-object v0

    .line 311
    :pswitch_10
    const-string/jumbo v0, "notifyRadioPowerStateChanged"

    return-object v0

    .line 307
    :pswitch_11
    const-string/jumbo v0, "notifyActiveDataSubIdChanged"

    return-object v0

    .line 303
    :pswitch_12
    const-string/jumbo v0, "notifyPhoneCapabilityChanged"

    return-object v0

    .line 299
    :pswitch_13
    const-string/jumbo v0, "notifyDisplayInfoChanged"

    return-object v0

    .line 295
    :pswitch_14
    const-string/jumbo v0, "notifyUserMobileDataStateChangedForPhoneId"

    return-object v0

    .line 291
    :pswitch_15
    const-string/jumbo v0, "notifyCarrierNetworkChangeWithSubId"

    return-object v0

    .line 287
    :pswitch_16
    const-string/jumbo v0, "notifyCarrierNetworkChange"

    return-object v0

    .line 283
    :pswitch_17
    const-string/jumbo v0, "notifyOpportunisticSubscriptionInfoChanged"

    return-object v0

    .line 279
    :pswitch_18
    const-string/jumbo v0, "notifySubscriptionInfoChanged"

    return-object v0

    .line 275
    :pswitch_19
    const-string/jumbo v0, "notifyOemHookRawEventForSubscriber"

    return-object v0

    .line 271
    :pswitch_1a
    const-string/jumbo v0, "notifySimActivationStateChangedForPhoneId"

    return-object v0

    .line 267
    :pswitch_1b
    const-string/jumbo v0, "notifySrvccStateChanged"

    return-object v0

    .line 263
    :pswitch_1c
    const-string/jumbo v0, "notifyCellInfoForSubscriber"

    return-object v0

    .line 259
    :pswitch_1d
    const-string/jumbo v0, "notifyDisconnectCause"

    return-object v0

    .line 255
    :pswitch_1e
    const-string/jumbo v0, "notifyPreciseCallState"

    return-object v0

    .line 251
    :pswitch_1f
    const-string/jumbo v0, "notifyCellInfo"

    return-object v0

    .line 247
    :pswitch_20
    const-string/jumbo v0, "notifyCellLocationForSubscriber"

    return-object v0

    .line 243
    :pswitch_21
    const-string/jumbo v0, "notifyDataConnectionForSubscriber"

    return-object v0

    .line 239
    :pswitch_22
    const-string/jumbo v0, "notifyDataActivityForSubscriber"

    return-object v0

    .line 235
    :pswitch_23
    const-string/jumbo v0, "notifyDataActivity"

    return-object v0

    .line 231
    :pswitch_24
    const-string/jumbo v0, "notifyCallForwardingChangedForSubscriber"

    return-object v0

    .line 227
    :pswitch_25
    const-string/jumbo v0, "notifyCallForwardingChanged"

    return-object v0

    .line 223
    :pswitch_26
    const-string/jumbo v0, "notifyMessageWaitingChangedForPhoneId"

    return-object v0

    .line 219
    :pswitch_27
    const-string/jumbo v0, "notifySignalStrengthForPhoneId"

    return-object v0

    .line 215
    :pswitch_28
    const-string/jumbo v0, "notifyServiceStateForPhoneId"

    return-object v0

    .line 211
    :pswitch_29
    const-string/jumbo v0, "notifyCallState"

    return-object v0

    .line 207
    :pswitch_2a
    const-string/jumbo v0, "notifyCallStateForAllSubs"

    return-object v0

    .line 203
    :pswitch_2b
    const-string/jumbo v0, "listenWithEventList"

    return-object v0

    .line 199
    :pswitch_2c
    const-string/jumbo v0, "removeOnSubscriptionsChangedListener"

    return-object v0

    .line 195
    :pswitch_2d
    const-string v0, "addOnOpportunisticSubscriptionsChangedListener"

    return-object v0

    .line 191
    :pswitch_2e
    const-string v0, "addOnSubscriptionsChangedListener"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 182
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1848
    const/16 v0, 0x2e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 386
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const-string v12, "com.android.internal.telephony.ITelephonyRegistry"

    .line 391
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 392
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 402
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_1

    .line 989
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 398
    :pswitch_0
    move-object/from16 v14, p3

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    return v13

    .line 981
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 982
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->clearPreciseDataConnectionStates(I)V

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    goto/16 :goto_0

    .line 968
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 970
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 973
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierServiceChanged(ILjava/lang/String;I)V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    goto/16 :goto_0

    .line 955
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 957
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 959
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 960
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    goto/16 :goto_0

    .line 944
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":[I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    move-result-object v0

    .line 946
    .local v0, "_arg0":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    goto/16 :goto_0

    .line 929
    .end local v0    # "_arg0":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 931
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    move-result-object v1

    .line 933
    .local v1, "_arg1":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 936
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    goto/16 :goto_0

    .line 916
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 918
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 920
    .local v1, "_arg1":I
    sget-object v2, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 921
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyLinkCapacityEstimateChanged(IILjava/util/List;)V

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    goto/16 :goto_0

    .line 901
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 903
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 905
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 907
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 908
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyAllowedNetworkTypesChanged(IIIJ)V

    .line 910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    goto/16 :goto_0

    .line 886
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":J
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 888
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 890
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 892
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 893
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataEnabled(IIZI)V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    goto/16 :goto_0

    .line 873
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 875
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 877
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 878
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 879
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V

    .line 880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    goto/16 :goto_0

    .line 860
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 862
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 864
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/BarringInfo;

    .line 865
    .local v2, "_arg2":Landroid/telephony/BarringInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V

    .line 867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    goto/16 :goto_0

    .line 839
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/BarringInfo;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 841
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 843
    .local v15, "_arg1":I
    sget-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/telephony/CellIdentity;

    .line 845
    .local v16, "_arg2":Landroid/telephony/CellIdentity;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 847
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 849
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 851
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 852
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    move-object/from16 v0, p0

    move v1, v8

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V

    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    goto/16 :goto_0

    .line 828
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Landroid/telephony/CellIdentity;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 830
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .line 831
    .local v1, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    goto/16 :goto_0

    .line 813
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_d
    sget-object v0, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CallQuality;

    .line 815
    .local v0, "_arg0":Landroid/telephony/CallQuality;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 817
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 819
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 820
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V

    .line 822
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto/16 :goto_0

    .line 800
    .end local v0    # "_arg0":Landroid/telephony/CallQuality;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 802
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 804
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    .line 805
    .local v2, "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V

    .line 807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    goto/16 :goto_0

    .line 787
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 789
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 791
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    .line 792
    .restart local v2    # "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto/16 :goto_0

    .line 776
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/emergency/EmergencyNumber;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 778
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 779
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyEmergencyNumberList(II)V

    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    goto/16 :goto_0

    .line 763
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 765
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 767
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 768
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyRadioPowerStateChanged(III)V

    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    goto/16 :goto_0

    .line 754
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 755
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyActiveDataSubIdChanged(I)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    goto/16 :goto_0

    .line 745
    .end local v0    # "_arg0":I
    :pswitch_13
    sget-object v0, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneCapability;

    .line 746
    .local v0, "_arg0":Landroid/telephony/PhoneCapability;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    goto/16 :goto_0

    .line 732
    .end local v0    # "_arg0":Landroid/telephony/PhoneCapability;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 734
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 736
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyDisplayInfo;

    .line 737
    .local v2, "_arg2":Landroid/telephony/TelephonyDisplayInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V

    .line 739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    goto/16 :goto_0

    .line 719
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/TelephonyDisplayInfo;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 721
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 723
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 724
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyUserMobileDataStateChangedForPhoneId(IIZ)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    goto/16 :goto_0

    .line 708
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 710
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 711
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChangeWithSubId(IZ)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    goto/16 :goto_0

    .line 699
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 700
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChange(Z)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    goto/16 :goto_0

    .line 692
    .end local v0    # "_arg0":Z
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOpportunisticSubscriptionInfoChanged()V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    goto/16 :goto_0

    .line 686
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySubscriptionInfoChanged()V

    .line 687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    goto/16 :goto_0

    .line 674
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 676
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 678
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 679
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(II[B)V

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    goto/16 :goto_0

    .line 659
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 661
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 663
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 665
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 666
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySimActivationStateChangedForPhoneId(IIII)V

    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    goto/16 :goto_0

    .line 648
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 650
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 651
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySrvccStateChanged(II)V

    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    goto/16 :goto_0

    .line 637
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 639
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 640
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    goto/16 :goto_0

    .line 622
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 624
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 626
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 628
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 629
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(IIII)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto/16 :goto_0

    .line 605
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 607
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 609
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 611
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 613
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 614
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(IIIII)V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    goto/16 :goto_0

    .line 596
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_20
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 597
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    goto/16 :goto_0

    .line 585
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 587
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentity;

    .line 588
    .local v1, "_arg1":Landroid/telephony/CellIdentity;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    goto/16 :goto_0

    .line 572
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/CellIdentity;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 574
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    .local v1, "_arg1":I
    sget-object v2, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PreciseDataConnectionState;

    .line 577
    .local v2, "_arg2":Landroid/telephony/PreciseDataConnectionState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    goto/16 :goto_0

    .line 561
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/PreciseDataConnectionState;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 563
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 564
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(II)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto/16 :goto_0

    .line 552
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 553
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    goto/16 :goto_0

    .line 541
    .end local v0    # "_arg0":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 543
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 544
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    goto/16 :goto_0

    .line 532
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 533
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    goto/16 :goto_0

    .line 519
    .end local v0    # "_arg0":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 521
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 523
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 524
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IIZ)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    goto/16 :goto_0

    .line 506
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 508
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 510
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalStrength;

    .line 511
    .local v2, "_arg2":Landroid/telephony/SignalStrength;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    goto/16 :goto_0

    .line 493
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/SignalStrength;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 497
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;

    .line 498
    .local v2, "_arg2":Landroid/telephony/ServiceState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    goto/16 :goto_0

    .line 478
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/ServiceState;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 480
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 484
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(IIILjava/lang/String;)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    goto/16 :goto_0

    .line 467
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 469
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForAllSubs(ILjava/lang/String;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    goto/16 :goto_0

    .line 444
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 446
    .local v15, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 448
    .local v16, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 450
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 452
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 454
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v20

    .line 456
    .local v20, "_arg5":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v21

    .line 458
    .local v21, "_arg6":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 459
    .local v22, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto :goto_0

    .line 433
    .end local v15    # "_arg0":Z
    .end local v16    # "_arg1":Z
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v21    # "_arg6":[I
    .end local v22    # "_arg7":Z
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v1

    .line 436
    .local v1, "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    goto :goto_0

    .line 420
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v2

    .line 425
    .local v2, "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    goto :goto_0

    .line 407
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 411
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v2

    .line 412
    .restart local v2    # "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    nop

    .line 992
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
