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
.field static final blacklist TRANSACTION_addPackagesToClearCacheBlockList:I = 0x8

.field static final blacklist TRANSACTION_addPackagesToForceStopBlockList:I = 0x7

.field static final blacklist TRANSACTION_allowFirmwareRecovery:I = 0x4

.field static final blacklist TRANSACTION_allowOTAUpgrade:I = 0x5

.field static final blacklist TRANSACTION_allowSafeMode:I = 0x6

.field static final blacklist TRANSACTION_bindToLockScreen:I = 0x16

.field static final blacklist TRANSACTION_callKGsv:I = 0x1

.field static final blacklist TRANSACTION_generateHotpDHRequest:I = 0x21

.field static final blacklist TRANSACTION_getClientData:I = 0x28

.field static final blacklist TRANSACTION_getHDMVersion:I = 0x19

.field static final blacklist TRANSACTION_getHdmStatus:I = 0x2e

.field static final blacklist TRANSACTION_getHotpChallenge:I = 0x22

.field static final blacklist TRANSACTION_getKGID:I = 0x2a

.field static final blacklist TRANSACTION_getKGPolicy:I = 0x1e

.field static final blacklist TRANSACTION_getKGServiceVersion:I = 0x17

.field static final blacklist TRANSACTION_getLockAction:I = 0x27

.field static final blacklist TRANSACTION_getNonce:I = 0x32

.field static final blacklist TRANSACTION_getPBAUniqueNumber:I = 0x12

.field static final blacklist TRANSACTION_getStringSystemProperty:I = 0x30

.field static final blacklist TRANSACTION_getTAError:I = 0x31

.field static final blacklist TRANSACTION_getTAInfo:I = 0x33

.field static final blacklist TRANSACTION_getTAState:I = 0x1c

.field static final blacklist TRANSACTION_getTAStateSetError:I = 0x1d

.field static final blacklist TRANSACTION_isSkipSupportContainerSupported:I = 0x11

.field static final blacklist TRANSACTION_isVpnExceptionRequired:I = 0x35

.field static final blacklist TRANSACTION_lockScreen:I = 0x26

.field static final blacklist TRANSACTION_provisionCert:I = 0x34

.field static final blacklist TRANSACTION_registerIntent:I = 0x2

.field static final blacklist TRANSACTION_removeActiveAdmin:I = 0xc

.field static final blacklist TRANSACTION_resetRPMB:I = 0x2b

.field static final blacklist TRANSACTION_resetRPMB2:I = 0x2c

.field static final blacklist TRANSACTION_revokeRuntimePermission:I = 0xe

.field static final blacklist TRANSACTION_setActiveAdmin:I = 0xb

.field static final blacklist TRANSACTION_setAdminRemovable:I = 0x3

.field static final blacklist TRANSACTION_setAirplaneMode:I = 0xa

.field static final blacklist TRANSACTION_setApplicationUninstallationDisabled:I = 0x9

.field static final blacklist TRANSACTION_setCheckingState:I = 0x2d

.field static final blacklist TRANSACTION_setClientData:I = 0x29

.field static final blacklist TRANSACTION_setKnoxGuardExemptRule:I = 0x15

.field static final blacklist TRANSACTION_setRemoteLockToLockscreen:I = 0xf

.field static final blacklist TRANSACTION_setRemoteLockToLockscreenWithSkipSupport:I = 0x10

.field static final blacklist TRANSACTION_setRuntimePermission:I = 0xd

.field static final blacklist TRANSACTION_shouldBlockCustomRom:I = 0x14

.field static final blacklist TRANSACTION_showInstallmentStatus:I = 0x13

.field static final blacklist TRANSACTION_unRegisterIntent:I = 0x18

.field static final blacklist TRANSACTION_unlockScreen:I = 0x25

.field static final blacklist TRANSACTION_verifyCompleteToken:I = 0x20

.field static final blacklist TRANSACTION_verifyHOTPDHChallenge:I = 0x1f

.field static final blacklist TRANSACTION_verifyHOTPPin:I = 0x1b

.field static final blacklist TRANSACTION_verifyHOTPsecret:I = 0x1a

.field static final blacklist TRANSACTION_verifyKgRot:I = 0x2f

.field static final blacklist TRANSACTION_verifyPolicy:I = 0x24

.field static final blacklist TRANSACTION_verifyRegistrationInfo:I = 0x23


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 223
    const-string v0, "com.samsung.android.knoxguard.IKnoxGuardManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knoxguard/IKnoxGuardManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 231
    if-nez p0, :cond_0

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_0
    const-string v0, "com.samsung.android.knoxguard.IKnoxGuardManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 235
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    if-eqz v1, :cond_1

    .line 236
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knoxguard/IKnoxGuardManager;

    return-object v1

    .line 238
    :cond_1
    new-instance v1, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 247
    packed-switch p0, :pswitch_data_0

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 459
    :pswitch_0
    const-string v0, "isVpnExceptionRequired"

    return-object v0

    .line 455
    :pswitch_1
    const-string/jumbo v0, "provisionCert"

    return-object v0

    .line 451
    :pswitch_2
    const-string v0, "getTAInfo"

    return-object v0

    .line 447
    :pswitch_3
    const-string v0, "getNonce"

    return-object v0

    .line 443
    :pswitch_4
    const-string v0, "getTAError"

    return-object v0

    .line 439
    :pswitch_5
    const-string v0, "getStringSystemProperty"

    return-object v0

    .line 435
    :pswitch_6
    const-string/jumbo v0, "verifyKgRot"

    return-object v0

    .line 431
    :pswitch_7
    const-string v0, "getHdmStatus"

    return-object v0

    .line 427
    :pswitch_8
    const-string/jumbo v0, "setCheckingState"

    return-object v0

    .line 423
    :pswitch_9
    const-string/jumbo v0, "resetRPMB2"

    return-object v0

    .line 419
    :pswitch_a
    const-string/jumbo v0, "resetRPMB"

    return-object v0

    .line 415
    :pswitch_b
    const-string v0, "getKGID"

    return-object v0

    .line 411
    :pswitch_c
    const-string/jumbo v0, "setClientData"

    return-object v0

    .line 407
    :pswitch_d
    const-string v0, "getClientData"

    return-object v0

    .line 403
    :pswitch_e
    const-string v0, "getLockAction"

    return-object v0

    .line 399
    :pswitch_f
    const-string v0, "lockScreen"

    return-object v0

    .line 395
    :pswitch_10
    const-string/jumbo v0, "unlockScreen"

    return-object v0

    .line 391
    :pswitch_11
    const-string/jumbo v0, "verifyPolicy"

    return-object v0

    .line 387
    :pswitch_12
    const-string/jumbo v0, "verifyRegistrationInfo"

    return-object v0

    .line 383
    :pswitch_13
    const-string v0, "getHotpChallenge"

    return-object v0

    .line 379
    :pswitch_14
    const-string v0, "generateHotpDHRequest"

    return-object v0

    .line 375
    :pswitch_15
    const-string/jumbo v0, "verifyCompleteToken"

    return-object v0

    .line 371
    :pswitch_16
    const-string/jumbo v0, "verifyHOTPDHChallenge"

    return-object v0

    .line 367
    :pswitch_17
    const-string v0, "getKGPolicy"

    return-object v0

    .line 363
    :pswitch_18
    const-string v0, "getTAStateSetError"

    return-object v0

    .line 359
    :pswitch_19
    const-string v0, "getTAState"

    return-object v0

    .line 355
    :pswitch_1a
    const-string/jumbo v0, "verifyHOTPPin"

    return-object v0

    .line 351
    :pswitch_1b
    const-string/jumbo v0, "verifyHOTPsecret"

    return-object v0

    .line 347
    :pswitch_1c
    const-string v0, "getHDMVersion"

    return-object v0

    .line 343
    :pswitch_1d
    const-string/jumbo v0, "unRegisterIntent"

    return-object v0

    .line 339
    :pswitch_1e
    const-string v0, "getKGServiceVersion"

    return-object v0

    .line 335
    :pswitch_1f
    const-string v0, "bindToLockScreen"

    return-object v0

    .line 331
    :pswitch_20
    const-string/jumbo v0, "setKnoxGuardExemptRule"

    return-object v0

    .line 327
    :pswitch_21
    const-string/jumbo v0, "shouldBlockCustomRom"

    return-object v0

    .line 323
    :pswitch_22
    const-string/jumbo v0, "showInstallmentStatus"

    return-object v0

    .line 319
    :pswitch_23
    const-string v0, "getPBAUniqueNumber"

    return-object v0

    .line 315
    :pswitch_24
    const-string v0, "isSkipSupportContainerSupported"

    return-object v0

    .line 311
    :pswitch_25
    const-string/jumbo v0, "setRemoteLockToLockscreenWithSkipSupport"

    return-object v0

    .line 307
    :pswitch_26
    const-string/jumbo v0, "setRemoteLockToLockscreen"

    return-object v0

    .line 303
    :pswitch_27
    const-string/jumbo v0, "revokeRuntimePermission"

    return-object v0

    .line 299
    :pswitch_28
    const-string/jumbo v0, "setRuntimePermission"

    return-object v0

    .line 295
    :pswitch_29
    const-string/jumbo v0, "removeActiveAdmin"

    return-object v0

    .line 291
    :pswitch_2a
    const-string/jumbo v0, "setActiveAdmin"

    return-object v0

    .line 287
    :pswitch_2b
    const-string/jumbo v0, "setAirplaneMode"

    return-object v0

    .line 283
    :pswitch_2c
    const-string/jumbo v0, "setApplicationUninstallationDisabled"

    return-object v0

    .line 279
    :pswitch_2d
    const-string v0, "addPackagesToClearCacheBlockList"

    return-object v0

    .line 275
    :pswitch_2e
    const-string v0, "addPackagesToForceStopBlockList"

    return-object v0

    .line 271
    :pswitch_2f
    const-string v0, "allowSafeMode"

    return-object v0

    .line 267
    :pswitch_30
    const-string v0, "allowOTAUpgrade"

    return-object v0

    .line 263
    :pswitch_31
    const-string v0, "allowFirmwareRecovery"

    return-object v0

    .line 259
    :pswitch_32
    const-string/jumbo v0, "setAdminRemovable"

    return-object v0

    .line 255
    :pswitch_33
    const-string/jumbo v0, "registerIntent"

    return-object v0

    .line 251
    :pswitch_34
    const-string v0, "callKGsv"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
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

    .line 242
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2044
    const/16 v0, 0x34

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 470
    invoke-static {p1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "com.samsung.android.knoxguard.IKnoxGuardManager"

    .line 475
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v14, v9, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 476
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 486
    packed-switch v14, :pswitch_data_1

    .line 1027
    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 482
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    return v9

    .line 1020
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->isVpnExceptionRequired()Z

    move-result v0

    .line 1021
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1023
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 1005
    .end local v0    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1011
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1012
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1014
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 995
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 996
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1000
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 983
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 988
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 990
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 975
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAError()I

    move-result v0

    .line 976
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 964
    .end local v0    # "_result":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 967
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 969
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 971
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 956
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyKgRot()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 949
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getHdmStatus()Ljava/lang/String;

    move-result-object v0

    .line 950
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 942
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setCheckingState()I

    move-result v0

    .line 943
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 933
    .end local v0    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->resetRPMB2(Ljava/lang/String;)I

    move-result v1

    .line 936
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 925
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->resetRPMB()I

    move-result v0

    .line 926
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 918
    .end local v0    # "_result":I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGID()Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 921
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 909
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setClientData(Ljava/lang/String;)I

    move-result v1

    .line 912
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 901
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getClientData()Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 904
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 894
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getLockAction()Ljava/lang/String;

    move-result-object v0

    .line 895
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 897
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 871
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 873
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 875
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 877
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 879
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 881
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 883
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 885
    .local v21, "_arg6":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    .line 886
    .local v22, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
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

    .line 888
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 863
    .end local v0    # "_result":I
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":Landroid/os/Bundle;
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->unlockScreen()I

    move-result v0

    .line 864
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 852
    .end local v0    # "_result":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 859
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 840
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 842
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 843
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 845
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 847
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 832
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getHotpChallenge()Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 835
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 825
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->generateHotpDHRequest()Ljava/lang/String;

    move-result-object v0

    .line 826
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 828
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 816
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyCompleteToken(Ljava/lang/String;)I

    move-result v1

    .line 819
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 802
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 804
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 809
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 794
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGPolicy()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 797
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 785
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 786
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAStateSetError(Z)I

    move-result v1

    .line 788
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 777
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getTAState()I

    move-result v0

    .line 778
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 768
    .end local v0    # "_result":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyHOTPPin(Ljava/lang/String;)I

    move-result v1

    .line 771
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 758
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 759
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->verifyHOTPsecret(Ljava/lang/String;)I

    move-result v1

    .line 761
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 750
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getHDMVersion()Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 753
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 744
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->unRegisterIntent()V

    .line 745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 737
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getKGServiceVersion()I

    move-result v0

    .line 738
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 731
    .end local v0    # "_result":I
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->bindToLockScreen()V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 723
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 724
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {v15, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setKnoxGuardExemptRule(Z)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 715
    .end local v0    # "_arg0":Z
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->shouldBlockCustomRom()Z

    move-result v0

    .line 716
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 718
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 708
    .end local v0    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->showInstallmentStatus()Z

    move-result v0

    .line 709
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 711
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 701
    .end local v0    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->getPBAUniqueNumber()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 704
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 694
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->isSkipSupportContainerSupported()Z

    move-result v0

    .line 695
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 697
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    goto/16 :goto_0

    .line 662
    .end local v0    # "_result":Z
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 664
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 666
    .local v17, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 668
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 670
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 672
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 674
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 676
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 678
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 680
    .local v24, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 682
    .local v26, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v27

    .line 684
    .local v27, "_arg10":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Landroid/os/Bundle;

    .line 686
    .local v28, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    .line 687
    .local v29, "_arg12":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
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

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v31, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move/from16 v12, v27

    move-object v15, v13

    move-object/from16 v13, v28

    move/from16 v14, v29

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    move-object/from16 v3, p0

    move-object/from16 v2, p3

    move-object v4, v15

    goto/16 :goto_0

    .line 631
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":J
    .end local v26    # "_arg9":I
    .end local v27    # "_arg10":Z
    .end local v28    # "_arg11":Landroid/os/Bundle;
    .end local v29    # "_arg12":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 633
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 635
    .local v16, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 637
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 639
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 641
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 643
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 645
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 647
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 649
    .local v23, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 651
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 653
    .local v26, "_arg10":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 654
    .local v27, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
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

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    move-object/from16 v3, p0

    move-object/from16 v2, p3

    move-object v4, v15

    goto/16 :goto_0

    .line 618
    .end local v14    # "_arg0":I
    .end local v16    # "_arg1":Z
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":J
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Z
    .end local v27    # "_arg11":Landroid/os/Bundle;
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 623
    .local v2, "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    move-object/from16 v3, p0

    move-object v4, v15

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    move-object/from16 v2, p3

    goto/16 :goto_0

    .line 605
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 607
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 610
    .restart local v2    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    move-object/from16 v2, p3

    goto/16 :goto_0

    .line 596
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 597
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    move-object/from16 v2, p3

    goto/16 :goto_0

    .line 587
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 588
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    move-object/from16 v2, p3

    goto/16 :goto_0

    .line 578
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 579
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setAirplaneMode(Z)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    move-object/from16 v2, p3

    goto/16 :goto_0

    .line 568
    .end local v0    # "_arg0":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setApplicationUninstallationDisabled(Ljava/lang/String;)Z

    move-result v1

    .line 571
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 573
    goto/16 :goto_0

    .line 558
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 559
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->addPackagesToClearCacheBlockList(Ljava/util/List;)Z

    move-result v1

    .line 561
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 563
    goto/16 :goto_0

    .line 548
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 549
    .restart local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->addPackagesToForceStopBlockList(Ljava/util/List;)Z

    move-result v1

    .line 551
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 553
    goto/16 :goto_0

    .line 538
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 539
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->allowSafeMode(Z)Z

    move-result v1

    .line 541
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 543
    goto/16 :goto_0

    .line 528
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 529
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->allowOTAUpgrade(Z)Z

    move-result v1

    .line 531
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 533
    goto/16 :goto_0

    .line 518
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_32
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 519
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->allowFirmwareRecovery(Z)Z

    move-result v1

    .line 521
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 523
    goto :goto_0

    .line 508
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_33
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 509
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v3, v0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->setAdminRemovable(Z)Z

    move-result v1

    .line 511
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 513
    goto :goto_0

    .line 497
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 500
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->registerIntent(Ljava/lang/String;Ljava/util/List;)V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    goto :goto_0

    .line 490
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_35
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v4, v13

    move-object v3, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;->callKGsv()V

    .line 491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    nop

    .line 1030
    :goto_0
    return v30

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
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
    .end packed-switch
.end method
