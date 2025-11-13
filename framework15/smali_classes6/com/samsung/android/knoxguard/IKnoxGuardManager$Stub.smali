.class public abstract Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;
.super Landroid/os/Binder;
.source "IKnoxGuardManager.java"

# interfaces
.implements Lcom/samsung/android/knoxguard/IKnoxGuardManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/IKnoxGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_bindToLockScreen:I = 0x9

.field static final blacklist TRANSACTION_generateHotpDHRequest:I = 0x13

.field static final blacklist TRANSACTION_getClientData:I = 0x1a

.field static final blacklist TRANSACTION_getHotpChallenge:I = 0x14

.field static final blacklist TRANSACTION_getKGID:I = 0x1c

.field static final blacklist TRANSACTION_getKGPolicy:I = 0x10

.field static final blacklist TRANSACTION_getKGPolicyCompany:I = 0xc

.field static final blacklist TRANSACTION_getKGServiceInfo:I = 0x26

.field static final blacklist TRANSACTION_getKGServiceVersion:I = 0xa

.field static final blacklist TRANSACTION_getLockAction:I = 0x19

.field static final blacklist TRANSACTION_getNonce:I = 0x22

.field static final blacklist TRANSACTION_getPBAUniqueNumber:I = 0x6

.field static final blacklist TRANSACTION_getSfPolicy:I = 0x28

.field static final blacklist TRANSACTION_getStringSystemProperty:I = 0x20

.field static final blacklist TRANSACTION_getTAError:I = 0x21

.field static final blacklist TRANSACTION_getTAInfo:I = 0x23

.field static final blacklist TRANSACTION_getTAState:I = 0xe

.field static final blacklist TRANSACTION_getTAStateSetError:I = 0xf

.field static final blacklist TRANSACTION_isKGAllowADB:I = 0x2a

.field static final blacklist TRANSACTION_isKGAllowDO:I = 0x29

.field static final blacklist TRANSACTION_isSkipSupportContainerSupported:I = 0x5

.field static final blacklist TRANSACTION_isVpnExceptionRequired:I = 0x25

.field static final blacklist TRANSACTION_lockScreen:I = 0x18

.field static final blacklist TRANSACTION_provisionCert:I = 0x24

.field static final blacklist TRANSACTION_registerIntent:I = 0x1

.field static final blacklist TRANSACTION_resetRPMB:I = 0x1d

.field static final blacklist TRANSACTION_setAirplaneMode:I = 0x2

.field static final blacklist TRANSACTION_setCheckingState:I = 0x1e

.field static final blacklist TRANSACTION_setClientData:I = 0x1b

.field static final blacklist TRANSACTION_setRemoteLockToLockscreen:I = 0x3

.field static final blacklist TRANSACTION_setRemoteLockToLockscreenWithSkipSupport:I = 0x4

.field static final blacklist TRANSACTION_shouldBlockCustomRom:I = 0x8

.field static final blacklist TRANSACTION_showInstallmentStatus:I = 0x7

.field static final blacklist TRANSACTION_unRegisterIntent:I = 0xb

.field static final blacklist TRANSACTION_unlockScreen:I = 0x17

.field static final blacklist TRANSACTION_verifyCompleteToken:I = 0x12

.field static final blacklist TRANSACTION_verifyHOTPDHChallenge:I = 0x11

.field static final blacklist TRANSACTION_verifyHOTPPin:I = 0xd

.field static final blacklist TRANSACTION_verifyKgRot:I = 0x1f

.field static final blacklist TRANSACTION_verifyPolicy:I = 0x16

.field static final blacklist TRANSACTION_verifyRegistrationInfo:I = 0x15

.field static final blacklist TRANSACTION_verifySfPolicy:I = 0x27


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knoxguard.IKnoxGuardManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knoxguard/IKnoxGuardManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knoxguard.IKnoxGuardManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "isKGAllowADB"

    return-object v0

    :pswitch_1
    const-string v0, "isKGAllowDO"

    return-object v0

    :pswitch_2
    const-string v0, "getSfPolicy"

    return-object v0

    :pswitch_3
    const-string v0, "verifySfPolicy"

    return-object v0

    :pswitch_4
    const-string v0, "getKGServiceInfo"

    return-object v0

    :pswitch_5
    const-string v0, "isVpnExceptionRequired"

    return-object v0

    :pswitch_6
    const-string v0, "provisionCert"

    return-object v0

    :pswitch_7
    const-string v0, "getTAInfo"

    return-object v0

    :pswitch_8
    const-string v0, "getNonce"

    return-object v0

    :pswitch_9
    const-string v0, "getTAError"

    return-object v0

    :pswitch_a
    const-string v0, "getStringSystemProperty"

    return-object v0

    :pswitch_b
    const-string v0, "verifyKgRot"

    return-object v0

    :pswitch_c
    const-string v0, "setCheckingState"

    return-object v0

    :pswitch_d
    const-string v0, "resetRPMB"

    return-object v0

    :pswitch_e
    const-string v0, "getKGID"

    return-object v0

    :pswitch_f
    const-string v0, "setClientData"

    return-object v0

    :pswitch_10
    const-string v0, "getClientData"

    return-object v0

    :pswitch_11
    const-string v0, "getLockAction"

    return-object v0

    :pswitch_12
    const-string v0, "lockScreen"

    return-object v0

    :pswitch_13
    const-string v0, "unlockScreen"

    return-object v0

    :pswitch_14
    const-string v0, "verifyPolicy"

    return-object v0

    :pswitch_15
    const-string v0, "verifyRegistrationInfo"

    return-object v0

    :pswitch_16
    const-string v0, "getHotpChallenge"

    return-object v0

    :pswitch_17
    const-string v0, "generateHotpDHRequest"

    return-object v0

    :pswitch_18
    const-string v0, "verifyCompleteToken"

    return-object v0

    :pswitch_19
    const-string v0, "verifyHOTPDHChallenge"

    return-object v0

    :pswitch_1a
    const-string v0, "getKGPolicy"

    return-object v0

    :pswitch_1b
    const-string v0, "getTAStateSetError"

    return-object v0

    :pswitch_1c
    const-string v0, "getTAState"

    return-object v0

    :pswitch_1d
    const-string v0, "verifyHOTPPin"

    return-object v0

    :pswitch_1e
    const-string v0, "getKGPolicyCompany"

    return-object v0

    :pswitch_1f
    const-string v0, "unRegisterIntent"

    return-object v0

    :pswitch_20
    const-string v0, "getKGServiceVersion"

    return-object v0

    :pswitch_21
    const-string v0, "bindToLockScreen"

    return-object v0

    :pswitch_22
    const-string v0, "shouldBlockCustomRom"

    return-object v0

    :pswitch_23
    const-string v0, "showInstallmentStatus"

    return-object v0

    :pswitch_24
    const-string v0, "getPBAUniqueNumber"

    return-object v0

    :pswitch_25
    const-string v0, "isSkipSupportContainerSupported"

    return-object v0

    :pswitch_26
    const-string v0, "setRemoteLockToLockscreenWithSkipSupport"

    return-object v0

    :pswitch_27
    const-string v0, "setRemoteLockToLockscreen"

    return-object v0

    :pswitch_28
    const-string v0, "setAirplaneMode"

    return-object v0

    :pswitch_29
    const-string v0, "registerIntent"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0x29

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "com.samsung.android.knoxguard.IKnoxGuardManager"

    const/4 v9, 0x1

    if-lt v14, v9, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v14, v0, :cond_1

    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :cond_1
    packed-switch v14, :pswitch_data_0

    move-object v1, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->isKGAllowADB()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->isKGAllowDO()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getSfPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifySfPolicy(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGServiceInfo()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->isVpnExceptionRequired()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAError()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyKgRot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setCheckingState()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->resetRPMB()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setClientData(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getClientData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getLockAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->unlockScreen()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getHotpChallenge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->generateHotpDHRequest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyCompleteToken(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAStateSetError(Z)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAState()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyHOTPPin(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGPolicyCompany()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->unRegisterIntent()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGServiceVersion()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->bindToLockScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->shouldBlockCustomRom()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->showInstallmentStatus()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getPBAUniqueNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->isSkipSupportContainerSupported()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v27

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v30, v9

    move-wide/from16 v9, v24

    move-object/from16 v31, v11

    move/from16 v11, v26

    move/from16 v12, v27

    move-object v15, v13

    move-object/from16 v13, v28

    move/from16 v14, v29

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p0

    goto/16 :goto_0

    :pswitch_27
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-wide/from16 v9, v23

    move/from16 v11, v25

    move/from16 v12, v26

    move-object/from16 v13, v27

    invoke-virtual/range {v0 .. v13}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p0

    goto :goto_0

    :pswitch_28
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setAirplaneMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_29
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v1, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->registerIntent(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v30

    :pswitch_data_0
    .packed-switch 0x1
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
