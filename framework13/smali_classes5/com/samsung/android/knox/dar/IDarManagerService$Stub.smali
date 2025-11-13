.class public abstract Lcom/samsung/android/knox/dar/IDarManagerService$Stub;
.super Landroid/os/Binder;
.source "IDarManagerService.java"

# interfaces
.implements Lcom/samsung/android/knox/dar/IDarManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dar/IDarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/IDarManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addBlockedClearablePackages:I = 0x30

.field static final blacklist TRANSACTION_addEngine:I = 0x1c

.field static final blacklist TRANSACTION_allow:I = 0x19

.field static final blacklist TRANSACTION_clearResetPasswordToken:I = 0xa

.field static final blacklist TRANSACTION_createEncPkgDir:I = 0x21

.field static final blacklist TRANSACTION_deleteToeknFromTrusted:I = 0x23

.field static final blacklist TRANSACTION_disallow:I = 0x1a

.field static final blacklist TRANSACTION_exists:I = 0x18

.field static final blacklist TRANSACTION_getAvailableUserId:I = 0x7

.field static final blacklist TRANSACTION_getBlockedClearablePackages:I = 0x31

.field static final blacklist TRANSACTION_getEngineInfo:I = 0x1e

.field static final blacklist TRANSACTION_getInnerAuthUserId:I = 0x2d

.field static final blacklist TRANSACTION_getMainUserId:I = 0x2f

.field static final blacklist TRANSACTION_getPackageListForDualDarPolicy:I = 0x32

.field static final blacklist TRANSACTION_getPasswordMinimumLengthForInner:I = 0x33

.field static final blacklist TRANSACTION_getReservedUserIdForSystem:I = 0x6

.field static final blacklist TRANSACTION_getSupportedSDKVersion:I = 0x1b

.field static final blacklist TRANSACTION_getVirtualUsers:I = 0x8

.field static final blacklist TRANSACTION_isDarSupported:I = 0x1

.field static final blacklist TRANSACTION_isDefaultPathUser:I = 0x29

.field static final blacklist TRANSACTION_isDeviceRootKeyInstalled:I = 0x3

.field static final blacklist TRANSACTION_isInnerAuthRequired:I = 0x2b

.field static final blacklist TRANSACTION_isKnoxKeyInstallable:I = 0x4

.field static final blacklist TRANSACTION_isLicensed:I = 0x17

.field static final blacklist TRANSACTION_isResetPasswordTokenActive:I = 0xb

.field static final blacklist TRANSACTION_isSDPEnabled:I = 0xd

.field static final blacklist TRANSACTION_isSdpSupported:I = 0xe

.field static final blacklist TRANSACTION_isSdpSupportedSecureFolder:I = 0xf

.field static final blacklist TRANSACTION_isSensitive:I = 0x20

.field static final blacklist TRANSACTION_lock:I = 0x11

.field static final blacklist TRANSACTION_migrate:I = 0x14

.field static final blacklist TRANSACTION_onBiometricsAuthenticated:I = 0x25

.field static final blacklist TRANSACTION_onDeviceOwnerLocked:I = 0x26

.field static final blacklist TRANSACTION_registerClient:I = 0x27

.field static final blacklist TRANSACTION_registerListener:I = 0x15

.field static final blacklist TRANSACTION_removeEngine:I = 0x1d

.field static final blacklist TRANSACTION_reserveUserIdForSystem:I = 0x5

.field static final blacklist TRANSACTION_resetPassword:I = 0x13

.field static final blacklist TRANSACTION_resetPasswordWithToken:I = 0xc

.field static final blacklist TRANSACTION_saveTokenIntoTrusted:I = 0x22

.field static final blacklist TRANSACTION_setDualDarInfo:I = 0x2a

.field static final blacklist TRANSACTION_setInnerAuthUserId:I = 0x2c

.field static final blacklist TRANSACTION_setMainUserId:I = 0x2e

.field static final blacklist TRANSACTION_setPassword:I = 0x12

.field static final blacklist TRANSACTION_setResetPasswordToken:I = 0x9

.field static final blacklist TRANSACTION_setSensitive:I = 0x1f

.field static final blacklist TRANSACTION_systemReady:I = 0x2

.field static final blacklist TRANSACTION_unlock:I = 0x10

.field static final blacklist TRANSACTION_unlockViaTrusted:I = 0x24

.field static final blacklist TRANSACTION_unregisterClient:I = 0x28

.field static final blacklist TRANSACTION_unregisterListener:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 230
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 231
    const-string v0, "com.samsung.android.knox.dar.IDarManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 239
    if-nez p0, :cond_0

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 242
    :cond_0
    const-string v0, "com.samsung.android.knox.dar.IDarManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 243
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/dar/IDarManagerService;

    if-eqz v1, :cond_1

    .line 244
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/dar/IDarManagerService;

    return-object v1

    .line 246
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/dar/IDarManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 255
    packed-switch p0, :pswitch_data_0

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 459
    :pswitch_0
    const-string v0, "getPasswordMinimumLengthForInner"

    return-object v0

    .line 455
    :pswitch_1
    const-string v0, "getPackageListForDualDarPolicy"

    return-object v0

    .line 451
    :pswitch_2
    const-string v0, "getBlockedClearablePackages"

    return-object v0

    .line 447
    :pswitch_3
    const-string v0, "addBlockedClearablePackages"

    return-object v0

    .line 443
    :pswitch_4
    const-string v0, "getMainUserId"

    return-object v0

    .line 439
    :pswitch_5
    const-string/jumbo v0, "setMainUserId"

    return-object v0

    .line 435
    :pswitch_6
    const-string v0, "getInnerAuthUserId"

    return-object v0

    .line 431
    :pswitch_7
    const-string/jumbo v0, "setInnerAuthUserId"

    return-object v0

    .line 427
    :pswitch_8
    const-string v0, "isInnerAuthRequired"

    return-object v0

    .line 423
    :pswitch_9
    const-string/jumbo v0, "setDualDarInfo"

    return-object v0

    .line 419
    :pswitch_a
    const-string v0, "isDefaultPathUser"

    return-object v0

    .line 415
    :pswitch_b
    const-string/jumbo v0, "unregisterClient"

    return-object v0

    .line 411
    :pswitch_c
    const-string/jumbo v0, "registerClient"

    return-object v0

    .line 407
    :pswitch_d
    const-string v0, "onDeviceOwnerLocked"

    return-object v0

    .line 403
    :pswitch_e
    const-string v0, "onBiometricsAuthenticated"

    return-object v0

    .line 399
    :pswitch_f
    const-string/jumbo v0, "unlockViaTrusted"

    return-object v0

    .line 395
    :pswitch_10
    const-string v0, "deleteToeknFromTrusted"

    return-object v0

    .line 391
    :pswitch_11
    const-string/jumbo v0, "saveTokenIntoTrusted"

    return-object v0

    .line 387
    :pswitch_12
    const-string v0, "createEncPkgDir"

    return-object v0

    .line 383
    :pswitch_13
    const-string v0, "isSensitive"

    return-object v0

    .line 379
    :pswitch_14
    const-string/jumbo v0, "setSensitive"

    return-object v0

    .line 375
    :pswitch_15
    const-string v0, "getEngineInfo"

    return-object v0

    .line 371
    :pswitch_16
    const-string/jumbo v0, "removeEngine"

    return-object v0

    .line 367
    :pswitch_17
    const-string v0, "addEngine"

    return-object v0

    .line 363
    :pswitch_18
    const-string v0, "getSupportedSDKVersion"

    return-object v0

    .line 359
    :pswitch_19
    const-string v0, "disallow"

    return-object v0

    .line 355
    :pswitch_1a
    const-string v0, "allow"

    return-object v0

    .line 351
    :pswitch_1b
    const-string v0, "exists"

    return-object v0

    .line 347
    :pswitch_1c
    const-string v0, "isLicensed"

    return-object v0

    .line 343
    :pswitch_1d
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 339
    :pswitch_1e
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 335
    :pswitch_1f
    const-string v0, "migrate"

    return-object v0

    .line 331
    :pswitch_20
    const-string/jumbo v0, "resetPassword"

    return-object v0

    .line 327
    :pswitch_21
    const-string/jumbo v0, "setPassword"

    return-object v0

    .line 323
    :pswitch_22
    const-string v0, "lock"

    return-object v0

    .line 319
    :pswitch_23
    const-string/jumbo v0, "unlock"

    return-object v0

    .line 315
    :pswitch_24
    const-string v0, "isSdpSupportedSecureFolder"

    return-object v0

    .line 311
    :pswitch_25
    const-string v0, "isSdpSupported"

    return-object v0

    .line 307
    :pswitch_26
    const-string v0, "isSDPEnabled"

    return-object v0

    .line 303
    :pswitch_27
    const-string/jumbo v0, "resetPasswordWithToken"

    return-object v0

    .line 299
    :pswitch_28
    const-string v0, "isResetPasswordTokenActive"

    return-object v0

    .line 295
    :pswitch_29
    const-string v0, "clearResetPasswordToken"

    return-object v0

    .line 291
    :pswitch_2a
    const-string/jumbo v0, "setResetPasswordToken"

    return-object v0

    .line 287
    :pswitch_2b
    const-string v0, "getVirtualUsers"

    return-object v0

    .line 283
    :pswitch_2c
    const-string v0, "getAvailableUserId"

    return-object v0

    .line 279
    :pswitch_2d
    const-string v0, "getReservedUserIdForSystem"

    return-object v0

    .line 275
    :pswitch_2e
    const-string/jumbo v0, "reserveUserIdForSystem"

    return-object v0

    .line 271
    :pswitch_2f
    const-string v0, "isKnoxKeyInstallable"

    return-object v0

    .line 267
    :pswitch_30
    const-string v0, "isDeviceRootKeyInstalled"

    return-object v0

    .line 263
    :pswitch_31
    const-string/jumbo v0, "systemReady"

    return-object v0

    .line 259
    :pswitch_32
    const-string v0, "isDarSupported"

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

    .line 250
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1984
    const/16 v0, 0x32

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 470
    invoke-static {p1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 474
    const-string v0, "com.samsung.android.knox.dar.IDarManagerService"

    .line 475
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 476
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 486
    packed-switch p1, :pswitch_data_1

    .line 1000
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 482
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    return v1

    .line 993
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getPasswordMinimumLengthForInner()I

    move-result v2

    .line 994
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    goto/16 :goto_0

    .line 984
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 985
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 987
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 989
    goto/16 :goto_0

    .line 974
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 975
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 976
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getBlockedClearablePackages(I)Ljava/util/List;

    move-result-object v3

    .line 977
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 979
    goto/16 :goto_0

    .line 963
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 965
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 966
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->addBlockedClearablePackages(ILjava/lang/String;)V

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    goto/16 :goto_0

    .line 953
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 954
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getMainUserId(I)I

    move-result v3

    .line 956
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    goto/16 :goto_0

    .line 942
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 944
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 945
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setMainUserId(II)V

    .line 947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    goto/16 :goto_0

    .line 932
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 933
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getInnerAuthUserId(I)I

    move-result v3

    .line 935
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    goto/16 :goto_0

    .line 921
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 923
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 924
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setInnerAuthUserId(II)V

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    goto/16 :goto_0

    .line 911
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 912
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isInnerAuthRequired(I)Z

    move-result v3

    .line 914
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 916
    goto/16 :goto_0

    .line 899
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 901
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 902
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setDualDarInfo(II)Z

    move-result v4

    .line 904
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 906
    goto/16 :goto_0

    .line 889
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 890
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isDefaultPathUser(I)Z

    move-result v3

    .line 892
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 894
    goto/16 :goto_0

    .line 879
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 881
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object v3

    .line 882
    .local v3, "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unregisterClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V

    .line 884
    goto/16 :goto_0

    .line 869
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 871
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object v3

    .line 872
    .restart local v3    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->registerClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V

    .line 874
    goto/16 :goto_0

    .line 860
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 861
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->onDeviceOwnerLocked(I)V

    .line 863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    goto/16 :goto_0

    .line 851
    .end local v2    # "_arg0":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 852
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->onBiometricsAuthenticated(I)V

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    goto/16 :goto_0

    .line 839
    .end local v2    # "_arg0":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 841
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 844
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    goto/16 :goto_0

    .line 829
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 830
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->deleteToeknFromTrusted(Ljava/lang/String;)I

    move-result v3

    .line 832
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    goto/16 :goto_0

    .line 817
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 820
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 822
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    goto/16 :goto_0

    .line 805
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 807
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 808
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->createEncPkgDir(ILjava/lang/String;)I

    move-result v4

    .line 810
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    goto/16 :goto_0

    .line 795
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSensitive(Ljava/lang/String;)Z

    move-result v3

    .line 798
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 800
    goto/16 :goto_0

    .line 783
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 785
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 786
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setSensitive(ILjava/lang/String;)Z

    move-result v4

    .line 788
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 790
    goto/16 :goto_0

    .line 773
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v3

    .line 776
    .local v3, "_result":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 778
    goto/16 :goto_0

    .line 763
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 764
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->removeEngine(Ljava/lang/String;)I

    move-result v3

    .line 766
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    goto/16 :goto_0

    .line 749
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_18
    sget-object v2, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    .line 751
    .local v2, "_arg0":Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 756
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    goto/16 :goto_0

    .line 741
    .end local v2    # "_arg0":Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_19
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getSupportedSDKVersion()D

    move-result-wide v2

    .line 742
    .local v2, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 744
    goto/16 :goto_0

    .line 730
    .end local v2    # "_result":D
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 733
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->disallow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 735
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    goto/16 :goto_0

    .line 718
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 720
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 721
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->allow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 723
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    goto/16 :goto_0

    .line 708
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 709
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->exists(Ljava/lang/String;)I

    move-result v3

    .line 711
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    goto/16 :goto_0

    .line 700
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_1d
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isLicensed()I

    move-result v2

    .line 701
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    goto/16 :goto_0

    .line 689
    .end local v2    # "_result":I
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object v3

    .line 692
    .local v3, "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result v4

    .line 694
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    goto/16 :goto_0

    .line 677
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    .end local v4    # "_result":I
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 679
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object v3

    .line 680
    .restart local v3    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->registerListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result v4

    .line 682
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    goto/16 :goto_0

    .line 667
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    .end local v4    # "_result":I
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 668
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->migrate(Ljava/lang/String;)I

    move-result v3

    .line 670
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    goto/16 :goto_0

    .line 653
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 655
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 657
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 660
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    goto/16 :goto_0

    .line 641
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 643
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 644
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 646
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    goto/16 :goto_0

    .line 631
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 632
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->lock(Ljava/lang/String;)I

    move-result v3

    .line 634
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    goto/16 :goto_0

    .line 619
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 621
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->unlock(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 624
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    goto/16 :goto_0

    .line 609
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 610
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSdpSupportedSecureFolder(I)Z

    move-result v3

    .line 612
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 614
    goto/16 :goto_0

    .line 601
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_26
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSdpSupported()Z

    move-result v2

    .line 602
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 604
    goto/16 :goto_0

    .line 592
    .end local v2    # "_result":Z
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 593
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isSDPEnabled(I)Z

    move-result v3

    .line 595
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 597
    goto/16 :goto_0

    .line 578
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 582
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 583
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->resetPasswordWithToken(Ljava/lang/String;[BI)Z

    move-result v5

    .line 585
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 587
    goto/16 :goto_0

    .line 568
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 569
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isResetPasswordTokenActive(I)Z

    move-result v3

    .line 571
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 573
    goto/16 :goto_0

    .line 558
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 559
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->clearResetPasswordToken(I)Z

    move-result v3

    .line 561
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 563
    goto :goto_0

    .line 546
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 548
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 549
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->setResetPasswordToken([BI)Z

    move-result v4

    .line 551
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 553
    goto :goto_0

    .line 538
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_2c
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getVirtualUsers()[I

    move-result-object v2

    .line 539
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 541
    goto :goto_0

    .line 531
    .end local v2    # "_result":[I
    :pswitch_2d
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getAvailableUserId()I

    move-result v2

    .line 532
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    goto :goto_0

    .line 524
    .end local v2    # "_result":I
    :pswitch_2e
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->getReservedUserIdForSystem()I

    move-result v2

    .line 525
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    goto :goto_0

    .line 517
    .end local v2    # "_result":I
    :pswitch_2f
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->reserveUserIdForSystem()I

    move-result v2

    .line 518
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    goto :goto_0

    .line 510
    .end local v2    # "_result":I
    :pswitch_30
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isKnoxKeyInstallable()Z

    move-result v2

    .line 511
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 513
    goto :goto_0

    .line 503
    .end local v2    # "_result":Z
    :pswitch_31
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isDeviceRootKeyInstalled()Z

    move-result v2

    .line 504
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 506
    goto :goto_0

    .line 497
    .end local v2    # "_result":Z
    :pswitch_32
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->systemReady()V

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    goto :goto_0

    .line 490
    :pswitch_33
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->isDarSupported()Z

    move-result v2

    .line 491
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    nop

    .line 1003
    .end local v2    # "_result":Z
    :goto_0
    return v1

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
