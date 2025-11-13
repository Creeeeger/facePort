.class public abstract Landroid/net/IVpnManager$Stub;
.super Landroid/os/Binder;
.source "IVpnManager.java"

# interfaces
.implements Landroid/net/IVpnManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IVpnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IVpnManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addVpnAddress:I = 0x4

.field static final blacklist TRANSACTION_applyBlockingRulesToUidRange:I = 0x23

.field static final blacklist TRANSACTION_checkIfLocalProxyPortExists:I = 0x1d

.field static final blacklist TRANSACTION_checkIfUidIsExempted:I = 0x1e

.field static final blacklist TRANSACTION_createEnterpriseVpnInstance:I = 0x2a

.field static final blacklist TRANSACTION_deleteVpnProfile:I = 0x8

.field static final blacklist TRANSACTION_disconnectKnoxVpn:I = 0x25

.field static final blacklist TRANSACTION_establishVpn:I = 0x3

.field static final blacklist TRANSACTION_factoryReset:I = 0x19

.field static final blacklist TRANSACTION_getActiveDefaultInterface:I = 0x33

.field static final blacklist TRANSACTION_getActiveDefaultNetwork:I = 0x32

.field static final blacklist TRANSACTION_getAlwaysOnVpnPackage:I = 0x10

.field static final blacklist TRANSACTION_getAppExclusionList:I = 0xd

.field static final blacklist TRANSACTION_getChainingEnabledForProfile:I = 0x1a

.field static final blacklist TRANSACTION_getDnsServerListForInterface:I = 0x1f

.field static final blacklist TRANSACTION_getLegacyKnoxVpnInfo:I = 0x29

.field static final blacklist TRANSACTION_getLegacyVpnInfo:I = 0x16

.field static final blacklist TRANSACTION_getNetIdforActiveDefaultInterface:I = 0x31

.field static final blacklist TRANSACTION_getProvisionedVpnProfileState:I = 0xb

.field static final blacklist TRANSACTION_getProxyInfoForUid:I = 0x1c

.field static final blacklist TRANSACTION_getVpnConfig:I = 0x18

.field static final blacklist TRANSACTION_getVpnLockdownAllowlist:I = 0x12

.field static final blacklist TRANSACTION_isAlwaysOnVpnPackageSupported:I = 0xe

.field static final blacklist TRANSACTION_isCallerCurrentAlwaysOnVpnApp:I = 0x13

.field static final blacklist TRANSACTION_isCallerCurrentAlwaysOnVpnLockdownApp:I = 0x14

.field static final blacklist TRANSACTION_isProxyConfiguredForKnoxVpn:I = 0x20

.field static final blacklist TRANSACTION_isVpnLockdownEnabled:I = 0x11

.field static final blacklist TRANSACTION_knoxVpnProfileType:I = 0x1b

.field static final blacklist TRANSACTION_prepareEnterpriseVpnExt:I = 0x24

.field static final blacklist TRANSACTION_prepareVpn:I = 0x1

.field static final blacklist TRANSACTION_provisionVpnProfile:I = 0x7

.field static final blacklist TRANSACTION_registerSystemDefaultNetworkCallback:I = 0x2f

.field static final blacklist TRANSACTION_removeEnterpriseVpnInstance:I = 0x2b

.field static final blacklist TRANSACTION_removeVpnAddress:I = 0x5

.field static final blacklist TRANSACTION_resetUidListInNetworkCapabilities:I = 0x21

.field static final blacklist TRANSACTION_setAlwaysOnVpnPackage:I = 0xf

.field static final blacklist TRANSACTION_setAppExclusionList:I = 0xc

.field static final blacklist TRANSACTION_setUnderlyingNetworksForVpn:I = 0x6

.field static final blacklist TRANSACTION_setVpnPackageAuthorization:I = 0x2

.field static final blacklist TRANSACTION_startLegacyKnoxVpn:I = 0x27

.field static final blacklist TRANSACTION_startLegacyVpn:I = 0x15

.field static final blacklist TRANSACTION_startVpnProfile:I = 0x9

.field static final blacklist TRANSACTION_stopLegacyKnoxVpn:I = 0x28

.field static final blacklist TRANSACTION_stopVpnProfile:I = 0xa

.field static final blacklist TRANSACTION_unregisterSystemDefaultNetworkCallback:I = 0x30

.field static final blacklist TRANSACTION_updateEnterpriseVpn:I = 0x26

.field static final blacklist TRANSACTION_updateLocalProxyInfo:I = 0x22

.field static final blacklist TRANSACTION_updateLockdownVpn:I = 0x17

.field static final blacklist TRANSACTION_updateUidRangesToPerAppVpn:I = 0x2c

.field static final blacklist TRANSACTION_updateUidRangesToUserVpn:I = 0x2d

.field static final blacklist TRANSACTION_updateUidRangesToUserVpnWithBlackList:I = 0x2e


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 216
    const-string v0, "android.net.IVpnManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IVpnManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 224
    if-nez p0, :cond_0

    .line 225
    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_0
    const-string v0, "android.net.IVpnManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 228
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IVpnManager;

    if-eqz v1, :cond_1

    .line 229
    move-object v1, v0

    check-cast v1, Landroid/net/IVpnManager;

    return-object v1

    .line 231
    :cond_1
    new-instance v1, Landroid/net/IVpnManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IVpnManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 240
    packed-switch p0, :pswitch_data_0

    .line 448
    const/4 v0, 0x0

    return-object v0

    .line 444
    :pswitch_0
    const-string v0, "getActiveDefaultInterface"

    return-object v0

    .line 440
    :pswitch_1
    const-string v0, "getActiveDefaultNetwork"

    return-object v0

    .line 436
    :pswitch_2
    const-string v0, "getNetIdforActiveDefaultInterface"

    return-object v0

    .line 432
    :pswitch_3
    const-string/jumbo v0, "unregisterSystemDefaultNetworkCallback"

    return-object v0

    .line 428
    :pswitch_4
    const-string v0, "registerSystemDefaultNetworkCallback"

    return-object v0

    .line 424
    :pswitch_5
    const-string/jumbo v0, "updateUidRangesToUserVpnWithBlackList"

    return-object v0

    .line 420
    :pswitch_6
    const-string/jumbo v0, "updateUidRangesToUserVpn"

    return-object v0

    .line 416
    :pswitch_7
    const-string/jumbo v0, "updateUidRangesToPerAppVpn"

    return-object v0

    .line 412
    :pswitch_8
    const-string v0, "removeEnterpriseVpnInstance"

    return-object v0

    .line 408
    :pswitch_9
    const-string v0, "createEnterpriseVpnInstance"

    return-object v0

    .line 404
    :pswitch_a
    const-string v0, "getLegacyKnoxVpnInfo"

    return-object v0

    .line 400
    :pswitch_b
    const-string/jumbo v0, "stopLegacyKnoxVpn"

    return-object v0

    .line 396
    :pswitch_c
    const-string/jumbo v0, "startLegacyKnoxVpn"

    return-object v0

    .line 392
    :pswitch_d
    const-string/jumbo v0, "updateEnterpriseVpn"

    return-object v0

    .line 388
    :pswitch_e
    const-string v0, "disconnectKnoxVpn"

    return-object v0

    .line 384
    :pswitch_f
    const-string v0, "prepareEnterpriseVpnExt"

    return-object v0

    .line 380
    :pswitch_10
    const-string v0, "applyBlockingRulesToUidRange"

    return-object v0

    .line 376
    :pswitch_11
    const-string/jumbo v0, "updateLocalProxyInfo"

    return-object v0

    .line 372
    :pswitch_12
    const-string v0, "resetUidListInNetworkCapabilities"

    return-object v0

    .line 368
    :pswitch_13
    const-string v0, "isProxyConfiguredForKnoxVpn"

    return-object v0

    .line 364
    :pswitch_14
    const-string v0, "getDnsServerListForInterface"

    return-object v0

    .line 360
    :pswitch_15
    const-string v0, "checkIfUidIsExempted"

    return-object v0

    .line 356
    :pswitch_16
    const-string v0, "checkIfLocalProxyPortExists"

    return-object v0

    .line 352
    :pswitch_17
    const-string v0, "getProxyInfoForUid"

    return-object v0

    .line 348
    :pswitch_18
    const-string v0, "knoxVpnProfileType"

    return-object v0

    .line 344
    :pswitch_19
    const-string v0, "getChainingEnabledForProfile"

    return-object v0

    .line 340
    :pswitch_1a
    const-string v0, "factoryReset"

    return-object v0

    .line 336
    :pswitch_1b
    const-string v0, "getVpnConfig"

    return-object v0

    .line 332
    :pswitch_1c
    const-string/jumbo v0, "updateLockdownVpn"

    return-object v0

    .line 328
    :pswitch_1d
    const-string v0, "getLegacyVpnInfo"

    return-object v0

    .line 324
    :pswitch_1e
    const-string/jumbo v0, "startLegacyVpn"

    return-object v0

    .line 320
    :pswitch_1f
    const-string v0, "isCallerCurrentAlwaysOnVpnLockdownApp"

    return-object v0

    .line 316
    :pswitch_20
    const-string v0, "isCallerCurrentAlwaysOnVpnApp"

    return-object v0

    .line 312
    :pswitch_21
    const-string v0, "getVpnLockdownAllowlist"

    return-object v0

    .line 308
    :pswitch_22
    const-string v0, "isVpnLockdownEnabled"

    return-object v0

    .line 304
    :pswitch_23
    const-string v0, "getAlwaysOnVpnPackage"

    return-object v0

    .line 300
    :pswitch_24
    const-string v0, "setAlwaysOnVpnPackage"

    return-object v0

    .line 296
    :pswitch_25
    const-string v0, "isAlwaysOnVpnPackageSupported"

    return-object v0

    .line 292
    :pswitch_26
    const-string v0, "getAppExclusionList"

    return-object v0

    .line 288
    :pswitch_27
    const-string v0, "setAppExclusionList"

    return-object v0

    .line 284
    :pswitch_28
    const-string v0, "getProvisionedVpnProfileState"

    return-object v0

    .line 280
    :pswitch_29
    const-string/jumbo v0, "stopVpnProfile"

    return-object v0

    .line 276
    :pswitch_2a
    const-string/jumbo v0, "startVpnProfile"

    return-object v0

    .line 272
    :pswitch_2b
    const-string v0, "deleteVpnProfile"

    return-object v0

    .line 268
    :pswitch_2c
    const-string v0, "provisionVpnProfile"

    return-object v0

    .line 264
    :pswitch_2d
    const-string/jumbo v0, "setUnderlyingNetworksForVpn"

    return-object v0

    .line 260
    :pswitch_2e
    const-string v0, "removeVpnAddress"

    return-object v0

    .line 256
    :pswitch_2f
    const-string v0, "addVpnAddress"

    return-object v0

    .line 252
    :pswitch_30
    const-string v0, "establishVpn"

    return-object v0

    .line 248
    :pswitch_31
    const-string/jumbo v0, "setVpnPackageAuthorization"

    return-object v0

    .line 244
    :pswitch_32
    const-string v0, "prepareVpn"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 235
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2014
    const/16 v0, 0x32

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 455
    invoke-static {p1}, Landroid/net/IVpnManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.net.IVpnManager"

    .line 460
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 461
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 471
    packed-switch v7, :pswitch_data_1

    .line 1032
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 467
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    return v11

    .line 1025
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/net/IVpnManager$Stub;->getActiveDefaultInterface()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1028
    goto/16 :goto_0

    .line 1018
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/net/IVpnManager$Stub;->getActiveDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1019
    .local v0, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1021
    goto/16 :goto_0

    .line 1011
    .end local v0    # "_result":Landroid/net/Network;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/net/IVpnManager$Stub;->getNetIdforActiveDefaultInterface()I

    move-result v0

    .line 1012
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1014
    goto/16 :goto_0

    .line 1005
    .end local v0    # "_result":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/net/IVpnManager$Stub;->unregisterSystemDefaultNetworkCallback()V

    .line 1006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    goto/16 :goto_0

    .line 999
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/net/IVpnManager$Stub;->registerSystemDefaultNetworkCallback()V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    goto/16 :goto_0

    .line 983
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 985
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 987
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 989
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 991
    .local v15, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 992
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/IVpnManager$Stub;->updateUidRangesToUserVpnWithBlackList(Ljava/lang/String;II[ILjava/lang/String;)V

    .line 994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    goto/16 :goto_0

    .line 966
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 968
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 970
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 972
    .local v14, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 974
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 975
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 976
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/IVpnManager$Stub;->updateUidRangesToUserVpn(Ljava/lang/String;IZILjava/lang/String;)V

    .line 977
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    goto/16 :goto_0

    .line 949
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Z
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 951
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 953
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 955
    .restart local v14    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 957
    .local v15, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 958
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 959
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/IVpnManager$Stub;->updateUidRangesToPerAppVpn(Ljava/lang/String;IZ[ILjava/lang/String;)V

    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    goto/16 :goto_0

    .line 936
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Z
    .end local v15    # "_arg3":[I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IVpnManager$Stub;->removeEnterpriseVpnInstance(Ljava/lang/String;Ljava/lang/String;I)V

    .line 943
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    goto/16 :goto_0

    .line 921
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 923
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 925
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 927
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 928
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/IVpnManager$Stub;->createEnterpriseVpnInstance(Ljava/lang/String;Ljava/lang/String;II)V

    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    goto/16 :goto_0

    .line 911
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 912
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->getLegacyKnoxVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 914
    .local v1, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 916
    goto/16 :goto_0

    .line 898
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 900
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IVpnManager$Stub;->stopLegacyKnoxVpn(ILjava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    goto/16 :goto_0

    .line 887
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 889
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/net/KnoxVpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/KnoxVpnProfile;

    .line 890
    .local v1, "_arg1":Lcom/android/internal/net/KnoxVpnProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {v6, v0, v1}, Landroid/net/IVpnManager$Stub;->startLegacyKnoxVpn(ILcom/android/internal/net/KnoxVpnProfile;)V

    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    goto/16 :goto_0

    .line 874
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/net/KnoxVpnProfile;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 878
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 879
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IVpnManager$Stub;->updateEnterpriseVpn(Ljava/lang/String;IZ)V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    goto/16 :goto_0

    .line 862
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 864
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 865
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {v6, v0, v1}, Landroid/net/IVpnManager$Stub;->disconnectKnoxVpn(Ljava/lang/String;I)Z

    move-result v2

    .line 867
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 869
    goto/16 :goto_0

    .line 850
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 852
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 853
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {v6, v0, v1}, Landroid/net/IVpnManager$Stub;->prepareEnterpriseVpnExt(Ljava/lang/String;Z)Z

    move-result v2

    .line 855
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 857
    goto/16 :goto_0

    .line 835
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 837
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 839
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 841
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/IVpnManager$Stub;->applyBlockingRulesToUidRange(Ljava/lang/String;IZLjava/lang/String;)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto/16 :goto_0

    .line 820
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 822
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 824
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 826
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ProxyInfo;

    .line 827
    .local v3, "_arg3":Landroid/net/ProxyInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/IVpnManager$Stub;->updateLocalProxyInfo(Ljava/lang/String;ILjava/lang/String;Landroid/net/ProxyInfo;)V

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    goto/16 :goto_0

    .line 807
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/net/ProxyInfo;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 809
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 811
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 812
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IVpnManager$Stub;->resetUidListInNetworkCapabilities(Ljava/lang/String;ILjava/lang/String;)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    goto/16 :goto_0

    .line 797
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 798
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->isProxyConfiguredForKnoxVpn(I)Z

    move-result v1

    .line 800
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 802
    goto/16 :goto_0

    .line 787
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->getDnsServerListForInterface(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 792
    goto/16 :goto_0

    .line 777
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 778
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->checkIfUidIsExempted(I)Z

    move-result v1

    .line 780
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 782
    goto/16 :goto_0

    .line 767
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 768
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->checkIfLocalProxyPortExists(I)Z

    move-result v1

    .line 770
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 772
    goto/16 :goto_0

    .line 757
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 758
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->getProxyInfoForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 762
    goto/16 :goto_0

    .line 747
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v1

    .line 750
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    goto/16 :goto_0

    .line 737
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 738
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->getChainingEnabledForProfile(I)Z

    move-result v1

    .line 740
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 742
    goto/16 :goto_0

    .line 730
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/net/IVpnManager$Stub;->factoryReset()V

    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    goto/16 :goto_0

    .line 721
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 722
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 724
    .local v1, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 726
    goto/16 :goto_0

    .line 713
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/internal/net/VpnConfig;
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/net/IVpnManager$Stub;->updateLockdownVpn()Z

    move-result v0

    .line 714
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 716
    goto/16 :goto_0

    .line 704
    .end local v0    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 705
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 707
    .local v1, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 709
    goto/16 :goto_0

    .line 695
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 696
    .local v0, "_arg0":Lcom/android/internal/net/VpnProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    goto/16 :goto_0

    .line 687
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/net/IVpnManager$Stub;->isCallerCurrentAlwaysOnVpnLockdownApp()Z

    move-result v0

    .line 688
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 690
    goto/16 :goto_0

    .line 680
    .end local v0    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/net/IVpnManager$Stub;->isCallerCurrentAlwaysOnVpnApp()Z

    move-result v0

    .line 681
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 683
    goto/16 :goto_0

    .line 671
    .end local v0    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 672
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->getVpnLockdownAllowlist(I)Ljava/util/List;

    move-result-object v1

    .line 674
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 676
    goto/16 :goto_0

    .line 661
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 662
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->isVpnLockdownEnabled(I)Z

    move-result v1

    .line 664
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 666
    goto/16 :goto_0

    .line 651
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 652
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 656
    goto/16 :goto_0

    .line 635
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 637
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 641
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 642
    .local v3, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/IVpnManager$Stub;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    move-result v4

    .line 644
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 646
    goto/16 :goto_0

    .line 623
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 625
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {v6, v0, v1}, Landroid/net/IVpnManager$Stub;->isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z

    move-result v2

    .line 628
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 630
    goto/16 :goto_0

    .line 611
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 613
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 614
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {v6, v0, v1}, Landroid/net/IVpnManager$Stub;->getAppExclusionList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 616
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 618
    goto/16 :goto_0

    .line 597
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 599
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 602
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IVpnManager$Stub;->setAppExclusionList(ILjava/lang/String;Ljava/util/List;)Z

    move-result v3

    .line 604
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 606
    goto/16 :goto_0

    .line 587
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;

    move-result-object v1

    .line 590
    .local v1, "_result":Landroid/net/VpnProfileState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 592
    goto/16 :goto_0

    .line 578
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/net/VpnProfileState;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 579
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->stopVpnProfile(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_0

    .line 568
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->startVpnProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    goto/16 :goto_0

    .line 559
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 560
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->deleteVpnProfile(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    goto/16 :goto_0

    .line 547
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2d
    sget-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 549
    .local v0, "_arg0":Lcom/android/internal/net/VpnProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {v6, v0, v1}, Landroid/net/IVpnManager$Stub;->provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z

    move-result v2

    .line 552
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 554
    goto/16 :goto_0

    .line 537
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2e
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Network;

    .line 538
    .local v0, "_arg0":[Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v1

    .line 540
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 542
    goto :goto_0

    .line 525
    .end local v0    # "_arg0":[Landroid/net/Network;
    .end local v1    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 528
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {v6, v0, v1}, Landroid/net/IVpnManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v2

    .line 530
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 532
    goto :goto_0

    .line 513
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 515
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 516
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {v6, v0, v1}, Landroid/net/IVpnManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v2

    .line 518
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 520
    goto :goto_0

    .line 503
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_31
    sget-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 504
    .local v0, "_arg0":Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {v6, v0}, Landroid/net/IVpnManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 506
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 508
    goto :goto_0

    .line 490
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 494
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 495
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IVpnManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    goto :goto_0

    .line 476
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 478
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 481
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IVpnManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 483
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 485
    nop

    .line 1035
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
