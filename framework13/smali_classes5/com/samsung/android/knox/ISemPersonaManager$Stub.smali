.class public abstract Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.super Landroid/os/Binder;
.source "ISemPersonaManager.java"

# interfaces
.implements Lcom/samsung/android/knox/ISemPersonaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ISemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final greylist TRANSACTION_CMFALock:I = 0x38

.field static final greylist TRANSACTION_CMFAUnLock:I = 0x39

.field static final greylist TRANSACTION_addAppPackageNameToAllowList:I = 0x1a

.field static final greylist TRANSACTION_appliedPasswordPolicy:I = 0x2e

.field static final greylist TRANSACTION_bindCoreServiceAsUser:I = 0x25

.field static final greylist TRANSACTION_broadcastIntentThroughPersona:I = 0x15

.field static final greylist TRANSACTION_clearAttributes:I = 0x1e

.field static final greylist TRANSACTION_getAdminComponentName:I = 0x19

.field static final greylist TRANSACTION_getAttributes:I = 0x1d

.field static final greylist TRANSACTION_getContainerName:I = 0x8

.field static final greylist TRANSACTION_getContainerOrder:I = 0x12

.field static final greylist TRANSACTION_getCustomResource:I = 0x1f

.field static final greylist TRANSACTION_getDualDARProfile:I = 0x2c

.field static final greylist TRANSACTION_getECName:I = 0xb

.field static final greylist TRANSACTION_getFocusedLauncherId:I = 0x1b

.field static final greylist TRANSACTION_getFocusedUser:I = 0x28

.field static final greylist TRANSACTION_getFotaVersion:I = 0x16

.field static final greylist TRANSACTION_getKnoxIcon:I = 0x20

.field static final greylist TRANSACTION_getKnoxSettingsCustomName:I = 0xa

.field static final greylist TRANSACTION_getMoveToKnoxMenuList:I = 0x27

.field static final greylist TRANSACTION_getPersonaCacheValue:I = 0x17

.field static final greylist TRANSACTION_getPersonaUserHasBeenShutdownBefore:I = 0x2d

.field static final greylist TRANSACTION_getPersonalModeName:I = 0xe

.field static final greylist TRANSACTION_getProfileName:I = 0xc

.field static final greylist TRANSACTION_getProfiles:I = 0x2

.field static final greylist TRANSACTION_getRCPDataPolicy:I = 0x2f

.field static final greylist TRANSACTION_getRCPDataPolicyForUser:I = 0x30

.field static final greylist TRANSACTION_getSecureFolderId:I = 0x6

.field static final greylist TRANSACTION_getSecureFolderName:I = 0x7

.field static final greylist TRANSACTION_getSecureFolderPolicy:I = 0x36

.field static final greylist TRANSACTION_getSeparationConfigfromCache:I = 0x3a

.field static final greylist TRANSACTION_getWorkspaceName:I = 0x9

.field static final greylist TRANSACTION_hideMultiWindows:I = 0x24

.field static final greylist TRANSACTION_isContainerCorePackageUID:I = 0x3d

.field static final greylist TRANSACTION_isContainerService:I = 0x41

.field static final greylist TRANSACTION_isExternalStorageEnabled:I = 0x13

.field static final greylist TRANSACTION_isFOTAUpgrade:I = 0x1

.field static final greylist TRANSACTION_isFotaUpgradeVersionChanged:I = 0x5

.field static final greylist TRANSACTION_isKnoxProfileActivePasswordSufficientForParent:I = 0x29

.field static final greylist TRANSACTION_isKnoxWindowExist:I = 0x11

.field static final greylist TRANSACTION_isMoveFilesToContainerAllowed:I = 0x33

.field static final greylist TRANSACTION_isMoveFilesToOwnerAllowed:I = 0x34

.field static final greylist TRANSACTION_isPasswordSufficientAfterKnoxProfileUnification:I = 0x2a

.field static final greylist TRANSACTION_isPossibleAddAppsToContainer:I = 0x10

.field static final greylist TRANSACTION_isShareClipboardDataToContainerAllowed:I = 0x35

.field static final greylist TRANSACTION_isShareClipboardDataToOwnerAllowed:I = 0x32

.field static final greylist TRANSACTION_postPwdChangeNotificationForDeviceOwner:I = 0x40

.field static final greylist TRANSACTION_refreshLockTimer:I = 0x22

.field static final greylist TRANSACTION_registerSystemPersonaObserver:I = 0x3

.field static final greylist TRANSACTION_sendProxyMessage:I = 0x23

.field static final greylist TRANSACTION_sendRequestKeyStatus:I = 0x26

.field static final greylist TRANSACTION_setAppSeparationDefaultPolicy:I = 0x3b

.field static final greylist TRANSACTION_setAttributes:I = 0x1c

.field static final greylist TRANSACTION_setDualDARProfile:I = 0x2b

.field static final greylist TRANSACTION_setFocusedLauncherId:I = 0x4

.field static final greylist TRANSACTION_setPackageSettingInstalled:I = 0x21

.field static final greylist TRANSACTION_setPersonalModeName:I = 0xf

.field static final greylist TRANSACTION_setProfileName:I = 0xd

.field static final greylist TRANSACTION_setRCPDataPolicy:I = 0x31

.field static final greylist TRANSACTION_setSecureFolderPolicy:I = 0x37

.field static final greylist TRANSACTION_startActivityThroughPersona:I = 0x14

.field static final greylist TRANSACTION_startCountrySelectionActivity:I = 0x3e

.field static final greylist TRANSACTION_startTermsActivity:I = 0x3f

.field static final greylist TRANSACTION_updatePersonaCache:I = 0x18

.field static final greylist TRANSACTION_updateProfileActivityTimeFromKnox:I = 0x3c


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 284
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 285
    const-string v0, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 293
    if-nez p0, :cond_0

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 296
    :cond_0
    const-string v0, "com.samsung.android.knox.ISemPersonaManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 297
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_1

    .line 298
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v1

    .line 300
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static greylist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 309
    packed-switch p0, :pswitch_data_0

    .line 573
    const/4 v0, 0x0

    return-object v0

    .line 569
    :pswitch_0
    const-string v0, "isContainerService"

    return-object v0

    .line 565
    :pswitch_1
    const-string/jumbo v0, "postPwdChangeNotificationForDeviceOwner"

    return-object v0

    .line 561
    :pswitch_2
    const-string/jumbo v0, "startTermsActivity"

    return-object v0

    .line 557
    :pswitch_3
    const-string/jumbo v0, "startCountrySelectionActivity"

    return-object v0

    .line 553
    :pswitch_4
    const-string v0, "isContainerCorePackageUID"

    return-object v0

    .line 549
    :pswitch_5
    const-string/jumbo v0, "updateProfileActivityTimeFromKnox"

    return-object v0

    .line 545
    :pswitch_6
    const-string/jumbo v0, "setAppSeparationDefaultPolicy"

    return-object v0

    .line 541
    :pswitch_7
    const-string v0, "getSeparationConfigfromCache"

    return-object v0

    .line 537
    :pswitch_8
    const-string v0, "CMFAUnLock"

    return-object v0

    .line 533
    :pswitch_9
    const-string v0, "CMFALock"

    return-object v0

    .line 529
    :pswitch_a
    const-string/jumbo v0, "setSecureFolderPolicy"

    return-object v0

    .line 525
    :pswitch_b
    const-string v0, "getSecureFolderPolicy"

    return-object v0

    .line 521
    :pswitch_c
    const-string v0, "isShareClipboardDataToContainerAllowed"

    return-object v0

    .line 517
    :pswitch_d
    const-string v0, "isMoveFilesToOwnerAllowed"

    return-object v0

    .line 513
    :pswitch_e
    const-string v0, "isMoveFilesToContainerAllowed"

    return-object v0

    .line 509
    :pswitch_f
    const-string v0, "isShareClipboardDataToOwnerAllowed"

    return-object v0

    .line 505
    :pswitch_10
    const-string/jumbo v0, "setRCPDataPolicy"

    return-object v0

    .line 501
    :pswitch_11
    const-string v0, "getRCPDataPolicyForUser"

    return-object v0

    .line 497
    :pswitch_12
    const-string v0, "getRCPDataPolicy"

    return-object v0

    .line 493
    :pswitch_13
    const-string v0, "appliedPasswordPolicy"

    return-object v0

    .line 489
    :pswitch_14
    const-string v0, "getPersonaUserHasBeenShutdownBefore"

    return-object v0

    .line 485
    :pswitch_15
    const-string v0, "getDualDARProfile"

    return-object v0

    .line 481
    :pswitch_16
    const-string/jumbo v0, "setDualDARProfile"

    return-object v0

    .line 477
    :pswitch_17
    const-string v0, "isPasswordSufficientAfterKnoxProfileUnification"

    return-object v0

    .line 473
    :pswitch_18
    const-string v0, "isKnoxProfileActivePasswordSufficientForParent"

    return-object v0

    .line 469
    :pswitch_19
    const-string v0, "getFocusedUser"

    return-object v0

    .line 465
    :pswitch_1a
    const-string v0, "getMoveToKnoxMenuList"

    return-object v0

    .line 461
    :pswitch_1b
    const-string/jumbo v0, "sendRequestKeyStatus"

    return-object v0

    .line 457
    :pswitch_1c
    const-string v0, "bindCoreServiceAsUser"

    return-object v0

    .line 453
    :pswitch_1d
    const-string v0, "hideMultiWindows"

    return-object v0

    .line 449
    :pswitch_1e
    const-string/jumbo v0, "sendProxyMessage"

    return-object v0

    .line 445
    :pswitch_1f
    const-string/jumbo v0, "refreshLockTimer"

    return-object v0

    .line 441
    :pswitch_20
    const-string/jumbo v0, "setPackageSettingInstalled"

    return-object v0

    .line 437
    :pswitch_21
    const-string v0, "getKnoxIcon"

    return-object v0

    .line 433
    :pswitch_22
    const-string v0, "getCustomResource"

    return-object v0

    .line 429
    :pswitch_23
    const-string v0, "clearAttributes"

    return-object v0

    .line 425
    :pswitch_24
    const-string v0, "getAttributes"

    return-object v0

    .line 421
    :pswitch_25
    const-string/jumbo v0, "setAttributes"

    return-object v0

    .line 417
    :pswitch_26
    const-string v0, "getFocusedLauncherId"

    return-object v0

    .line 413
    :pswitch_27
    const-string v0, "addAppPackageNameToAllowList"

    return-object v0

    .line 409
    :pswitch_28
    const-string v0, "getAdminComponentName"

    return-object v0

    .line 405
    :pswitch_29
    const-string/jumbo v0, "updatePersonaCache"

    return-object v0

    .line 401
    :pswitch_2a
    const-string v0, "getPersonaCacheValue"

    return-object v0

    .line 397
    :pswitch_2b
    const-string v0, "getFotaVersion"

    return-object v0

    .line 393
    :pswitch_2c
    const-string v0, "broadcastIntentThroughPersona"

    return-object v0

    .line 389
    :pswitch_2d
    const-string/jumbo v0, "startActivityThroughPersona"

    return-object v0

    .line 385
    :pswitch_2e
    const-string v0, "isExternalStorageEnabled"

    return-object v0

    .line 381
    :pswitch_2f
    const-string v0, "getContainerOrder"

    return-object v0

    .line 377
    :pswitch_30
    const-string v0, "isKnoxWindowExist"

    return-object v0

    .line 373
    :pswitch_31
    const-string v0, "isPossibleAddAppsToContainer"

    return-object v0

    .line 369
    :pswitch_32
    const-string/jumbo v0, "setPersonalModeName"

    return-object v0

    .line 365
    :pswitch_33
    const-string v0, "getPersonalModeName"

    return-object v0

    .line 361
    :pswitch_34
    const-string/jumbo v0, "setProfileName"

    return-object v0

    .line 357
    :pswitch_35
    const-string v0, "getProfileName"

    return-object v0

    .line 353
    :pswitch_36
    const-string v0, "getECName"

    return-object v0

    .line 349
    :pswitch_37
    const-string v0, "getKnoxSettingsCustomName"

    return-object v0

    .line 345
    :pswitch_38
    const-string v0, "getWorkspaceName"

    return-object v0

    .line 341
    :pswitch_39
    const-string v0, "getContainerName"

    return-object v0

    .line 337
    :pswitch_3a
    const-string v0, "getSecureFolderName"

    return-object v0

    .line 333
    :pswitch_3b
    const-string v0, "getSecureFolderId"

    return-object v0

    .line 329
    :pswitch_3c
    const-string v0, "isFotaUpgradeVersionChanged"

    return-object v0

    .line 325
    :pswitch_3d
    const-string/jumbo v0, "setFocusedLauncherId"

    return-object v0

    .line 321
    :pswitch_3e
    const-string/jumbo v0, "registerSystemPersonaObserver"

    return-object v0

    .line 317
    :pswitch_3f
    const-string v0, "getProfiles"

    return-object v0

    .line 313
    :pswitch_40
    const-string v0, "isFOTAUpgrade"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 304
    return-object p0
.end method

.method public greylist getMaxTransactionId()I
    .locals 1

    .line 2538
    const/16 v0, 0x40

    return v0
.end method

.method public greylist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 580
    invoke-static {p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.samsung.android.knox.ISemPersonaManager"

    .line 585
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 586
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 596
    packed-switch v9, :pswitch_data_1

    .line 1276
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 592
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    return v13

    .line 1267
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1268
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1269
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isContainerService(I)Z

    move-result v1

    .line 1270
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1272
    goto/16 :goto_0

    .line 1258
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1259
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->postPwdChangeNotificationForDeviceOwner(I)V

    .line 1261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    goto/16 :goto_0

    .line 1251
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startTermsActivity()V

    .line 1252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    goto/16 :goto_0

    .line 1243
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1244
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startCountrySelectionActivity(Z)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    goto/16 :goto_0

    .line 1233
    .end local v0    # "_arg0":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1234
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isContainerCorePackageUID(I)Z

    move-result v1

    .line 1236
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1238
    goto/16 :goto_0

    .line 1222
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1224
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1225
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1226
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->updateProfileActivityTimeFromKnox(IJ)V

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    goto/16 :goto_0

    .line 1213
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1214
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setAppSeparationDefaultPolicy(I)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    goto/16 :goto_0

    .line 1205
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    .line 1206
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1208
    goto/16 :goto_0

    .line 1197
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1198
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->CMFAUnLock(I)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    goto/16 :goto_0

    .line 1188
    .end local v0    # "_arg0":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1189
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->CMFALock(I)V

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    goto/16 :goto_0

    .line 1174
    .end local v0    # "_arg0":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1178
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1179
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v3

    .line 1181
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1183
    goto/16 :goto_0

    .line 1162
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1165
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1166
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1167
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1169
    goto/16 :goto_0

    .line 1152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1153
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v1

    .line 1155
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1157
    goto/16 :goto_0

    .line 1142
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1143
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isMoveFilesToOwnerAllowed(I)Z

    move-result v1

    .line 1145
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1147
    goto/16 :goto_0

    .line 1132
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1133
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isMoveFilesToContainerAllowed(I)Z

    move-result v1

    .line 1135
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1137
    goto/16 :goto_0

    .line 1122
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1123
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1124
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v1

    .line 1125
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1127
    goto/16 :goto_0

    .line 1108
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1113
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1115
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1117
    goto/16 :goto_0

    .line 1094
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1096
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1098
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1099
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1100
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1101
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1103
    goto/16 :goto_0

    .line 1082
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1086
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1087
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1089
    goto/16 :goto_0

    .line 1072
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1073
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->appliedPasswordPolicy(I)Z

    move-result v1

    .line 1075
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1077
    goto/16 :goto_0

    .line 1062
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1063
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result v1

    .line 1065
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1067
    goto/16 :goto_0

    .line 1054
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getDualDARProfile()Landroid/os/Bundle;

    move-result-object v0

    .line 1055
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1057
    goto/16 :goto_0

    .line 1045
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_17
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1046
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setDualDARProfile(Landroid/os/Bundle;)I

    move-result v1

    .line 1048
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    goto/16 :goto_0

    .line 1035
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1036
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result v1

    .line 1038
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1040
    goto/16 :goto_0

    .line 1025
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1026
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKnoxProfileActivePasswordSufficientForParent(I)Z

    move-result v1

    .line 1028
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1030
    goto/16 :goto_0

    .line 1017
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFocusedUser()I

    move-result v0

    .line 1018
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    goto/16 :goto_0

    .line 1008
    .end local v0    # "_result":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1009
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getMoveToKnoxMenuList(I)Ljava/util/List;

    move-result-object v1

    .line 1011
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1013
    goto/16 :goto_0

    .line 999
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1000
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendRequestKeyStatus(I)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    goto/16 :goto_0

    .line 977
    .end local v0    # "_arg0":I
    :pswitch_1d
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/ComponentName;

    .line 979
    .local v14, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v15

    .line 981
    .local v15, "_arg1":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 983
    .local v16, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 985
    .local v17, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v18

    .line 987
    .local v18, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 989
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 990
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v0

    .line 992
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 994
    goto/16 :goto_0

    .line 968
    .end local v0    # "_result":Z
    .end local v14    # "_arg0":Landroid/content/ComponentName;
    .end local v15    # "_arg1":Landroid/app/IApplicationThread;
    .end local v16    # "_arg2":Landroid/os/IBinder;
    .end local v17    # "_arg3":Landroid/content/Intent;
    .end local v18    # "_arg4":Landroid/app/IServiceConnection;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 969
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->hideMultiWindows(I)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    goto/16 :goto_0

    .line 954
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 959
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 961
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 963
    goto/16 :goto_0

    .line 945
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 946
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->refreshLockTimer(I)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    goto/16 :goto_0

    .line 931
    .end local v0    # "_arg0":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 935
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 936
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result v3

    .line 938
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 940
    goto/16 :goto_0

    .line 917
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 919
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 921
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 922
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v3

    .line 924
    .local v3, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 926
    goto/16 :goto_0

    .line 905
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[B
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 907
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 908
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 910
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 912
    goto/16 :goto_0

    .line 893
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 895
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 896
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->clearAttributes(II)Z

    move-result v2

    .line 898
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 900
    goto/16 :goto_0

    .line 883
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 884
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAttributes(I)I

    move-result v1

    .line 886
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    goto/16 :goto_0

    .line 871
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 873
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 874
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setAttributes(II)Z

    move-result v2

    .line 876
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 878
    goto/16 :goto_0

    .line 863
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFocusedLauncherId()I

    move-result v0

    .line 864
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    goto/16 :goto_0

    .line 853
    .end local v0    # "_result":I
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 855
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 856
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->addAppPackageNameToAllowList(ILjava/util/List;)V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    goto/16 :goto_0

    .line 843
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 844
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 846
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 848
    goto/16 :goto_0

    .line 831
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 836
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 838
    goto/16 :goto_0

    .line 821
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 822
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 826
    goto/16 :goto_0

    .line 813
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFotaVersion()I

    move-result v0

    .line 814
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    goto/16 :goto_0

    .line 802
    .end local v0    # "_result":I
    :pswitch_2d
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 804
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 805
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->broadcastIntentThroughPersona(Landroid/content/Intent;I)Z

    move-result v2

    .line 807
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 809
    goto/16 :goto_0

    .line 792
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 793
    .restart local v0    # "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startActivityThroughPersona(Landroid/content/Intent;)Z

    move-result v1

    .line 795
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 797
    goto/16 :goto_0

    .line 782
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 783
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isExternalStorageEnabled(I)Z

    move-result v1

    .line 785
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 787
    goto/16 :goto_0

    .line 772
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 773
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerOrder(I)I

    move-result v1

    .line 775
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    goto/16 :goto_0

    .line 758
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 760
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 762
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 763
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKnoxWindowExist(III)Z

    move-result v3

    .line 765
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 767
    goto/16 :goto_0

    .line 746
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 749
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z

    move-result v2

    .line 751
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 753
    goto/16 :goto_0

    .line 734
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 736
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPersonalModeName(ILjava/lang/String;)Z

    move-result v2

    .line 739
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 741
    goto/16 :goto_0

    .line 724
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 725
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    goto/16 :goto_0

    .line 712
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 714
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setProfileName(ILjava/lang/String;)Z

    move-result v2

    .line 717
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 719
    goto/16 :goto_0

    .line 702
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 703
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    goto/16 :goto_0

    .line 692
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 693
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getECName(I)Ljava/lang/String;

    move-result-object v1

    .line 695
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 697
    goto/16 :goto_0

    .line 682
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 683
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxSettingsCustomName(I)Ljava/lang/String;

    move-result-object v1

    .line 685
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 687
    goto/16 :goto_0

    .line 670
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_39
    sget-object v0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 672
    .local v0, "_arg0":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 673
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 677
    goto/16 :goto_0

    .line 660
    .end local v0    # "_arg0":Landroid/content/pm/UserInfo;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 661
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerName(I)Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    goto :goto_0

    .line 652
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderName()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 655
    goto :goto_0

    .line 645
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderId()I

    move-result v0

    .line 646
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    goto :goto_0

    .line 638
    .end local v0    # "_result":I
    :pswitch_3d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFotaUpgradeVersionChanged()Z

    move-result v0

    .line 639
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 641
    goto :goto_0

    .line 630
    .end local v0    # "_result":Z
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 631
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setFocusedLauncherId(I)V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto :goto_0

    .line 620
    .end local v0    # "_arg0":I
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ISystemPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;

    move-result-object v0

    .line 621
    .local v0, "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v1

    .line 623
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 625
    goto :goto_0

    .line 608
    .end local v0    # "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    .end local v1    # "_result":Z
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 610
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 611
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 613
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 615
    goto :goto_0

    .line 600
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFOTAUpgrade()Z

    move-result v0

    .line 601
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 603
    nop

    .line 1279
    .end local v0    # "_result":Z
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
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
