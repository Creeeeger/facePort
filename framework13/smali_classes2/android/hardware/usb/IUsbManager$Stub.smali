.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final blacklist TRANSACTION_addAccessoryPackagesToPreferenceDenied:I = 0x8

.field static final blacklist TRANSACTION_addDevicePackagesToPreferenceDenied:I = 0x7

.field static final greylist-max-o TRANSACTION_clearDefaults:I = 0x14

.field static final blacklist TRANSACTION_enableContaminantDetection:I = 0x27

.field static final blacklist TRANSACTION_enableLimitPowerTransfer:I = 0x26

.field static final blacklist TRANSACTION_enableUsbData:I = 0x1f

.field static final blacklist TRANSACTION_enableUsbDataWhileDocked:I = 0x20

.field static final greylist-max-o TRANSACTION_getControlFd:I = 0x22

.field static final greylist-max-o TRANSACTION_getCurrentAccessory:I = 0x3

.field static final greylist-max-o TRANSACTION_getCurrentFunctions:I = 0x18

.field static final blacklist TRANSACTION_getCurrentUsbSpeed:I = 0x19

.field static final greylist-max-o TRANSACTION_getDeviceList:I = 0x1

.field static final blacklist TRANSACTION_getGadgetHalVersion:I = 0x1a

.field static final greylist-max-o TRANSACTION_getPortStatus:I = 0x24

.field static final greylist-max-o TRANSACTION_getPorts:I = 0x23

.field static final greylist-max-o TRANSACTION_getScreenUnlockedFunctions:I = 0x1c

.field static final blacklist TRANSACTION_getUsbHalVersion:I = 0x21

.field static final greylist-max-o TRANSACTION_grantAccessoryPermission:I = 0x12

.field static final greylist-max-o TRANSACTION_grantDevicePermission:I = 0x11

.field static final greylist-max-o TRANSACTION_hasAccessoryPermission:I = 0xe

.field static final greylist-max-o TRANSACTION_hasDefaults:I = 0x13

.field static final greylist-max-o TRANSACTION_hasDevicePermission:I = 0xd

.field static final greylist-max-o TRANSACTION_isFunctionEnabled:I = 0x15

.field static final blacklist TRANSACTION_isSupportDexRestrict:I = 0x2a

.field static final blacklist TRANSACTION_isUsbBlocked:I = 0x29

.field static final greylist-max-o TRANSACTION_openAccessory:I = 0x4

.field static final greylist-max-o TRANSACTION_openDevice:I = 0x2

.field static final blacklist TRANSACTION_removeAccessoryPackagesFromPreferenceDenied:I = 0xa

.field static final blacklist TRANSACTION_removeDevicePackagesFromPreferenceDenied:I = 0x9

.field static final greylist-max-o TRANSACTION_requestAccessoryPermission:I = 0x10

.field static final greylist-max-o TRANSACTION_requestDevicePermission:I = 0xf

.field static final blacklist TRANSACTION_resetUsbGadget:I = 0x1d

.field static final blacklist TRANSACTION_resetUsbPort:I = 0x1e

.field static final blacklist TRANSACTION_restrictUsbHostInterface:I = 0x2b

.field static final blacklist TRANSACTION_semGetDataRoleStatus:I = 0x31

.field static final blacklist TRANSACTION_semGetPowerRoleStatus:I = 0x30

.field static final blacklist TRANSACTION_semGrantDevicePermission:I = 0x2f

.field static final blacklist TRANSACTION_semSetDevicePackage:I = 0x2e

.field static final blacklist TRANSACTION_semSetMode:I = 0x2d

.field static final greylist-max-o TRANSACTION_setAccessoryPackage:I = 0x6

.field static final blacklist TRANSACTION_setAccessoryPersistentPermission:I = 0xc

.field static final greylist-max-o TRANSACTION_setCurrentFunction:I = 0x17

.field static final greylist-max-o TRANSACTION_setCurrentFunctions:I = 0x16

.field static final greylist-max-o TRANSACTION_setDevicePackage:I = 0x5

.field static final blacklist TRANSACTION_setDevicePersistentPermission:I = 0xb

.field static final greylist-max-o TRANSACTION_setPortRoles:I = 0x25

.field static final greylist-max-o TRANSACTION_setScreenUnlockedFunctions:I = 0x1b

.field static final greylist-max-o TRANSACTION_setUsbDeviceConnectionHandler:I = 0x28

.field static final blacklist TRANSACTION_setUsbHiddenMenuState:I = 0x2c


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 282
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 283
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 291
    if-nez p0, :cond_0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 295
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_1

    .line 296
    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/IUsbManager;

    return-object v1

    .line 298
    :cond_1
    new-instance v1, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 307
    packed-switch p0, :pswitch_data_0

    .line 507
    const/4 v0, 0x0

    return-object v0

    .line 503
    :pswitch_0
    const-string v0, "semGetDataRoleStatus"

    return-object v0

    .line 499
    :pswitch_1
    const-string v0, "semGetPowerRoleStatus"

    return-object v0

    .line 495
    :pswitch_2
    const-string v0, "semGrantDevicePermission"

    return-object v0

    .line 491
    :pswitch_3
    const-string v0, "semSetDevicePackage"

    return-object v0

    .line 487
    :pswitch_4
    const-string v0, "semSetMode"

    return-object v0

    .line 483
    :pswitch_5
    const-string/jumbo v0, "setUsbHiddenMenuState"

    return-object v0

    .line 479
    :pswitch_6
    const-string v0, "restrictUsbHostInterface"

    return-object v0

    .line 475
    :pswitch_7
    const-string v0, "isSupportDexRestrict"

    return-object v0

    .line 471
    :pswitch_8
    const-string v0, "isUsbBlocked"

    return-object v0

    .line 467
    :pswitch_9
    const-string/jumbo v0, "setUsbDeviceConnectionHandler"

    return-object v0

    .line 463
    :pswitch_a
    const-string v0, "enableContaminantDetection"

    return-object v0

    .line 459
    :pswitch_b
    const-string v0, "enableLimitPowerTransfer"

    return-object v0

    .line 455
    :pswitch_c
    const-string/jumbo v0, "setPortRoles"

    return-object v0

    .line 451
    :pswitch_d
    const-string v0, "getPortStatus"

    return-object v0

    .line 447
    :pswitch_e
    const-string v0, "getPorts"

    return-object v0

    .line 443
    :pswitch_f
    const-string v0, "getControlFd"

    return-object v0

    .line 439
    :pswitch_10
    const-string v0, "getUsbHalVersion"

    return-object v0

    .line 435
    :pswitch_11
    const-string v0, "enableUsbDataWhileDocked"

    return-object v0

    .line 431
    :pswitch_12
    const-string v0, "enableUsbData"

    return-object v0

    .line 427
    :pswitch_13
    const-string v0, "resetUsbPort"

    return-object v0

    .line 423
    :pswitch_14
    const-string v0, "resetUsbGadget"

    return-object v0

    .line 419
    :pswitch_15
    const-string v0, "getScreenUnlockedFunctions"

    return-object v0

    .line 415
    :pswitch_16
    const-string/jumbo v0, "setScreenUnlockedFunctions"

    return-object v0

    .line 411
    :pswitch_17
    const-string v0, "getGadgetHalVersion"

    return-object v0

    .line 407
    :pswitch_18
    const-string v0, "getCurrentUsbSpeed"

    return-object v0

    .line 403
    :pswitch_19
    const-string v0, "getCurrentFunctions"

    return-object v0

    .line 399
    :pswitch_1a
    const-string v0, "setCurrentFunction"

    return-object v0

    .line 395
    :pswitch_1b
    const-string v0, "setCurrentFunctions"

    return-object v0

    .line 391
    :pswitch_1c
    const-string v0, "isFunctionEnabled"

    return-object v0

    .line 387
    :pswitch_1d
    const-string v0, "clearDefaults"

    return-object v0

    .line 383
    :pswitch_1e
    const-string v0, "hasDefaults"

    return-object v0

    .line 379
    :pswitch_1f
    const-string v0, "grantAccessoryPermission"

    return-object v0

    .line 375
    :pswitch_20
    const-string v0, "grantDevicePermission"

    return-object v0

    .line 371
    :pswitch_21
    const-string v0, "requestAccessoryPermission"

    return-object v0

    .line 367
    :pswitch_22
    const-string v0, "requestDevicePermission"

    return-object v0

    .line 363
    :pswitch_23
    const-string v0, "hasAccessoryPermission"

    return-object v0

    .line 359
    :pswitch_24
    const-string v0, "hasDevicePermission"

    return-object v0

    .line 355
    :pswitch_25
    const-string v0, "setAccessoryPersistentPermission"

    return-object v0

    .line 351
    :pswitch_26
    const-string v0, "setDevicePersistentPermission"

    return-object v0

    .line 347
    :pswitch_27
    const-string v0, "removeAccessoryPackagesFromPreferenceDenied"

    return-object v0

    .line 343
    :pswitch_28
    const-string v0, "removeDevicePackagesFromPreferenceDenied"

    return-object v0

    .line 339
    :pswitch_29
    const-string v0, "addAccessoryPackagesToPreferenceDenied"

    return-object v0

    .line 335
    :pswitch_2a
    const-string v0, "addDevicePackagesToPreferenceDenied"

    return-object v0

    .line 331
    :pswitch_2b
    const-string v0, "setAccessoryPackage"

    return-object v0

    .line 327
    :pswitch_2c
    const-string v0, "setDevicePackage"

    return-object v0

    .line 323
    :pswitch_2d
    const-string v0, "openAccessory"

    return-object v0

    .line 319
    :pswitch_2e
    const-string v0, "getCurrentAccessory"

    return-object v0

    .line 315
    :pswitch_2f
    const-string v0, "openDevice"

    return-object v0

    .line 311
    :pswitch_30
    const-string v0, "getDeviceList"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 302
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2054
    const/16 v0, 0x30

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 514
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    const-string v0, "android.hardware.usb.IUsbManager"

    .line 519
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 520
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 530
    packed-switch p1, :pswitch_data_1

    .line 1053
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 526
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    return v1

    .line 1046
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->semGetDataRoleStatus()I

    move-result v2

    .line 1047
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    goto/16 :goto_0

    .line 1039
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->semGetPowerRoleStatus()I

    move-result v2

    .line 1040
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    goto/16 :goto_0

    .line 1029
    .end local v2    # "_result":I
    :pswitch_3
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 1031
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1032
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->semGrantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_0

    .line 1016
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":I
    :pswitch_4
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 1018
    .restart local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1021
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->semSetDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    goto/16 :goto_0

    .line 1007
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1008
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->semSetMode(I)V

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    goto/16 :goto_0

    .line 998
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 999
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbHiddenMenuState(Z)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    goto/16 :goto_0

    .line 986
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 988
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 989
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->restrictUsbHostInterface(ZLjava/lang/String;)I

    move-result v4

    .line 991
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    goto/16 :goto_0

    .line 978
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->isSupportDexRestrict()Z

    move-result v2

    .line 979
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 981
    goto/16 :goto_0

    .line 971
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->isUsbBlocked()Z

    move-result v2

    .line 972
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 974
    goto/16 :goto_0

    .line 963
    .end local v2    # "_result":Z
    :pswitch_a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 964
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    goto/16 :goto_0

    .line 952
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 955
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->enableContaminantDetection(Ljava/lang/String;Z)V

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    goto/16 :goto_0

    .line 937
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 939
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 941
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 943
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v5

    .line 944
    .local v5, "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->enableLimitPowerTransfer(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    goto/16 :goto_0

    .line 924
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 926
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 928
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 929
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setPortRoles(Ljava/lang/String;II)V

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    goto/16 :goto_0

    .line 914
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 915
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    .line 917
    .local v3, "_result":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 919
    goto/16 :goto_0

    .line 906
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/usb/UsbPortStatus;
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getPorts()Ljava/util/List;

    move-result-object v2

    .line 907
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/ParcelableUsbPort;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 909
    goto/16 :goto_0

    .line 897
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/ParcelableUsbPort;>;"
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 898
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 900
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 902
    goto/16 :goto_0

    .line 889
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getUsbHalVersion()I

    move-result v2

    .line 890
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    goto/16 :goto_0

    .line 877
    .end local v2    # "_result":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 881
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v4

    .line 882
    .local v4, "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->enableUsbDataWhileDocked(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    goto/16 :goto_0

    .line 861
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 863
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 865
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 867
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v5

    .line 868
    .restart local v5    # "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result v6

    .line 870
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 872
    goto/16 :goto_0

    .line 848
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    .end local v6    # "_result":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 850
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 852
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v4

    .line 853
    .local v4, "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_0

    .line 841
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->resetUsbGadget()V

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    goto/16 :goto_0

    .line 834
    :pswitch_16
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getScreenUnlockedFunctions()J

    move-result-wide v2

    .line 835
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 837
    goto/16 :goto_0

    .line 826
    .end local v2    # "_result":J
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 827
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->setScreenUnlockedFunctions(J)V

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    goto/16 :goto_0

    .line 818
    .end local v2    # "_arg0":J
    :pswitch_18
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getGadgetHalVersion()I

    move-result v2

    .line 819
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    goto/16 :goto_0

    .line 811
    .end local v2    # "_result":I
    :pswitch_19
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentUsbSpeed()I

    move-result v2

    .line 812
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    goto/16 :goto_0

    .line 804
    .end local v2    # "_result":I
    :pswitch_1a
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentFunctions()J

    move-result-wide v2

    .line 805
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 807
    goto/16 :goto_0

    .line 794
    .end local v2    # "_result":J
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 797
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    goto/16 :goto_0

    .line 785
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 786
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunctions(J)V

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    goto/16 :goto_0

    .line 775
    .end local v2    # "_arg0":J
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 778
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 780
    goto/16 :goto_0

    .line 764
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 766
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 767
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;I)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_0

    .line 752
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 754
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 755
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;I)Z

    move-result v4

    .line 757
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 759
    goto/16 :goto_0

    .line 741
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_20
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 743
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 744
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    goto/16 :goto_0

    .line 730
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":I
    :pswitch_21
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 732
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 733
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    goto/16 :goto_0

    .line 717
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":I
    :pswitch_22
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 719
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 722
    .local v4, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    goto/16 :goto_0

    .line 704
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/app/PendingIntent;
    :pswitch_23
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 706
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 708
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 709
    .restart local v4    # "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    goto/16 :goto_0

    .line 694
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/app/PendingIntent;
    :pswitch_24
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 695
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v3

    .line 697
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 699
    goto/16 :goto_0

    .line 682
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_result":Z
    :pswitch_25
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 684
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v4

    .line 687
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 689
    goto/16 :goto_0

    .line 667
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_26
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 669
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 671
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 673
    .local v4, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 674
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;ILandroid/os/UserHandle;Z)V

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_0

    .line 652
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    .end local v5    # "_arg3":Z
    :pswitch_27
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 654
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 656
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 658
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 659
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;ILandroid/os/UserHandle;Z)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_0

    .line 639
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    .end local v5    # "_arg3":Z
    :pswitch_28
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 641
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 644
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->removeAccessoryPackagesFromPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_0

    .line 626
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_29
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 628
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 630
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 631
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->removeDevicePackagesFromPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto/16 :goto_0

    .line 613
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_2a
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 615
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 617
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 618
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->addAccessoryPackagesToPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    goto/16 :goto_0

    .line 600
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_2b
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 602
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 604
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 605
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->addDevicePackagesToPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    goto/16 :goto_0

    .line 587
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_2c
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 589
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 592
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    goto :goto_0

    .line 574
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_2d
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 576
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 578
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 579
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto :goto_0

    .line 564
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_2e
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 565
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 567
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 569
    goto :goto_0

    .line 556
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_2f
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v2

    .line 557
    .local v2, "_result":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 559
    goto :goto_0

    .line 545
    .end local v2    # "_result":Landroid/hardware/usb/UsbAccessory;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 550
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 552
    goto :goto_0

    .line 535
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_31
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 536
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->getDeviceList(Landroid/os/Bundle;)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 540
    nop

    .line 1056
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
