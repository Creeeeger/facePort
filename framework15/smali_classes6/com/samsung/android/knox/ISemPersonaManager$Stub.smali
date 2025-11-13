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
.field static final greylist TRANSACTION_CMFALock:I = 0x40

.field static final greylist TRANSACTION_CMFAUnLock:I = 0x41

.field static final greylist TRANSACTION_addAppPackageNameToAllowList:I = 0x1e

.field static final greylist TRANSACTION_appliedPasswordPolicy:I = 0x35

.field static final greylist TRANSACTION_bindCoreServiceAsUser:I = 0x29

.field static final greylist TRANSACTION_broadcastIntentThroughPersona:I = 0x19

.field static final greylist TRANSACTION_clearAttributes:I = 0x22

.field static final greylist TRANSACTION_getAdminComponentName:I = 0x1d

.field static final greylist TRANSACTION_getAttributes:I = 0x21

.field static final greylist TRANSACTION_getContainerName:I = 0x8

.field static final greylist TRANSACTION_getContainerOrder:I = 0x16

.field static final greylist TRANSACTION_getCustomResource:I = 0x23

.field static final greylist TRANSACTION_getDualDARProfile:I = 0x30

.field static final greylist TRANSACTION_getECName:I = 0xa

.field static final greylist TRANSACTION_getFocusedLauncherId:I = 0x1f

.field static final greylist TRANSACTION_getFocusedUser:I = 0x2c

.field static final greylist TRANSACTION_getFotaVersion:I = 0x1a

.field static final greylist TRANSACTION_getKnoxForesightService:I = 0x4c

.field static final greylist TRANSACTION_getKnoxIcon:I = 0x24

.field static final greylist TRANSACTION_getMoveToKnoxMenuList:I = 0x2b

.field static final greylist TRANSACTION_getPersonaCacheValue:I = 0x1b

.field static final greylist TRANSACTION_getPersonaUserHasBeenShutdownBefore:I = 0x34

.field static final greylist TRANSACTION_getPersonalModeName:I = 0xd

.field static final greylist TRANSACTION_getProfileName:I = 0xb

.field static final greylist TRANSACTION_getProfiles:I = 0x2

.field static final greylist TRANSACTION_getRCPDataPolicy:I = 0x36

.field static final greylist TRANSACTION_getRCPDataPolicyForUser:I = 0x37

.field static final greylist TRANSACTION_getSecureFolderId:I = 0x6

.field static final greylist TRANSACTION_getSecureFolderName:I = 0x7

.field static final greylist TRANSACTION_getSecureFolderPolicy:I = 0x3e

.field static final greylist TRANSACTION_getSeparatedAppsList:I = 0x11

.field static final greylist TRANSACTION_getSeparationConfigfromCache:I = 0x42

.field static final greylist TRANSACTION_getUCMProfile:I = 0x32

.field static final greylist TRANSACTION_getUpdatedListWithAppSeparation:I = 0x13

.field static final greylist TRANSACTION_getWorkspaceName:I = 0x9

.field static final greylist TRANSACTION_hasLicensePermission:I = 0x4b

.field static final greylist TRANSACTION_hideMultiWindows:I = 0x28

.field static final greylist TRANSACTION_isAppSeparationPresent:I = 0x12

.field static final greylist TRANSACTION_isContainerCorePackageUID:I = 0x45

.field static final greylist TRANSACTION_isContainerService:I = 0x49

.field static final greylist TRANSACTION_isExternalStorageEnabled:I = 0x17

.field static final greylist TRANSACTION_isFOTAUpgrade:I = 0x1

.field static final greylist TRANSACTION_isFotaUpgradeVersionChanged:I = 0x5

.field static final greylist TRANSACTION_isInSeparatedAppsOnly:I = 0x10

.field static final greylist TRANSACTION_isKnoxProfileActivePasswordSufficientForParent:I = 0x2d

.field static final greylist TRANSACTION_isKnoxWindowExist:I = 0x15

.field static final greylist TRANSACTION_isMoveFilesToContainerAllowed:I = 0x3a

.field static final greylist TRANSACTION_isMoveFilesToOwnerAllowed:I = 0x3b

.field static final greylist TRANSACTION_isPasswordSufficientAfterKnoxProfileUnification:I = 0x2e

.field static final greylist TRANSACTION_isPossibleAddAppsToContainer:I = 0xf

.field static final greylist TRANSACTION_isShareClipboardDataToContainerAllowed:I = 0x3d

.field static final greylist TRANSACTION_isShareClipboardDataToOwnerAllowed:I = 0x39

.field static final greylist TRANSACTION_logDpmsKA:I = 0x3c

.field static final greylist TRANSACTION_notifyApplicationChanged:I = 0x14

.field static final greylist TRANSACTION_postPwdChangeNotificationForDeviceOwner:I = 0x48

.field static final greylist TRANSACTION_refreshLockTimer:I = 0x26

.field static final greylist TRANSACTION_registerSystemPersonaObserver:I = 0x3

.field static final greylist TRANSACTION_resetUCMProfile:I = 0x33

.field static final greylist TRANSACTION_sendKnoxForesightBroadcast:I = 0x4a

.field static final greylist TRANSACTION_sendProxyMessage:I = 0x27

.field static final greylist TRANSACTION_sendRequestKeyStatus:I = 0x2a

.field static final greylist TRANSACTION_setAppSeparationDefaultPolicy:I = 0x43

.field static final greylist TRANSACTION_setAttributes:I = 0x20

.field static final greylist TRANSACTION_setDualDARProfile:I = 0x2f

.field static final greylist TRANSACTION_setFocusedLauncherId:I = 0x4

.field static final greylist TRANSACTION_setPackageSettingInstalled:I = 0x25

.field static final greylist TRANSACTION_setPersonalModeName:I = 0xe

.field static final greylist TRANSACTION_setProfileName:I = 0xc

.field static final greylist TRANSACTION_setRCPDataPolicy:I = 0x38

.field static final greylist TRANSACTION_setSecureFolderPolicy:I = 0x3f

.field static final greylist TRANSACTION_setUCMProfile:I = 0x31

.field static final greylist TRANSACTION_startActivityThroughPersona:I = 0x18

.field static final greylist TRANSACTION_startCountrySelectionActivity:I = 0x46

.field static final greylist TRANSACTION_startTermsActivity:I = 0x47

.field static final greylist TRANSACTION_updatePersonaCache:I = 0x1c

.field static final greylist TRANSACTION_updateProfileActivityTimeFromKnox:I = 0x44


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.ISemPersonaManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static greylist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "getKnoxForesightService"

    return-object v0

    :pswitch_1
    const-string v0, "hasLicensePermission"

    return-object v0

    :pswitch_2
    const-string v0, "sendKnoxForesightBroadcast"

    return-object v0

    :pswitch_3
    const-string v0, "isContainerService"

    return-object v0

    :pswitch_4
    const-string v0, "postPwdChangeNotificationForDeviceOwner"

    return-object v0

    :pswitch_5
    const-string v0, "startTermsActivity"

    return-object v0

    :pswitch_6
    const-string v0, "startCountrySelectionActivity"

    return-object v0

    :pswitch_7
    const-string v0, "isContainerCorePackageUID"

    return-object v0

    :pswitch_8
    const-string v0, "updateProfileActivityTimeFromKnox"

    return-object v0

    :pswitch_9
    const-string v0, "setAppSeparationDefaultPolicy"

    return-object v0

    :pswitch_a
    const-string v0, "getSeparationConfigfromCache"

    return-object v0

    :pswitch_b
    const-string v0, "CMFAUnLock"

    return-object v0

    :pswitch_c
    const-string v0, "CMFALock"

    return-object v0

    :pswitch_d
    const-string v0, "setSecureFolderPolicy"

    return-object v0

    :pswitch_e
    const-string v0, "getSecureFolderPolicy"

    return-object v0

    :pswitch_f
    const-string v0, "isShareClipboardDataToContainerAllowed"

    return-object v0

    :pswitch_10
    const-string v0, "logDpmsKA"

    return-object v0

    :pswitch_11
    const-string v0, "isMoveFilesToOwnerAllowed"

    return-object v0

    :pswitch_12
    const-string v0, "isMoveFilesToContainerAllowed"

    return-object v0

    :pswitch_13
    const-string v0, "isShareClipboardDataToOwnerAllowed"

    return-object v0

    :pswitch_14
    const-string v0, "setRCPDataPolicy"

    return-object v0

    :pswitch_15
    const-string v0, "getRCPDataPolicyForUser"

    return-object v0

    :pswitch_16
    const-string v0, "getRCPDataPolicy"

    return-object v0

    :pswitch_17
    const-string v0, "appliedPasswordPolicy"

    return-object v0

    :pswitch_18
    const-string v0, "getPersonaUserHasBeenShutdownBefore"

    return-object v0

    :pswitch_19
    const-string v0, "resetUCMProfile"

    return-object v0

    :pswitch_1a
    const-string v0, "getUCMProfile"

    return-object v0

    :pswitch_1b
    const-string v0, "setUCMProfile"

    return-object v0

    :pswitch_1c
    const-string v0, "getDualDARProfile"

    return-object v0

    :pswitch_1d
    const-string v0, "setDualDARProfile"

    return-object v0

    :pswitch_1e
    const-string v0, "isPasswordSufficientAfterKnoxProfileUnification"

    return-object v0

    :pswitch_1f
    const-string v0, "isKnoxProfileActivePasswordSufficientForParent"

    return-object v0

    :pswitch_20
    const-string v0, "getFocusedUser"

    return-object v0

    :pswitch_21
    const-string v0, "getMoveToKnoxMenuList"

    return-object v0

    :pswitch_22
    const-string v0, "sendRequestKeyStatus"

    return-object v0

    :pswitch_23
    const-string v0, "bindCoreServiceAsUser"

    return-object v0

    :pswitch_24
    const-string v0, "hideMultiWindows"

    return-object v0

    :pswitch_25
    const-string v0, "sendProxyMessage"

    return-object v0

    :pswitch_26
    const-string v0, "refreshLockTimer"

    return-object v0

    :pswitch_27
    const-string v0, "setPackageSettingInstalled"

    return-object v0

    :pswitch_28
    const-string v0, "getKnoxIcon"

    return-object v0

    :pswitch_29
    const-string v0, "getCustomResource"

    return-object v0

    :pswitch_2a
    const-string v0, "clearAttributes"

    return-object v0

    :pswitch_2b
    const-string v0, "getAttributes"

    return-object v0

    :pswitch_2c
    const-string v0, "setAttributes"

    return-object v0

    :pswitch_2d
    const-string v0, "getFocusedLauncherId"

    return-object v0

    :pswitch_2e
    const-string v0, "addAppPackageNameToAllowList"

    return-object v0

    :pswitch_2f
    const-string v0, "getAdminComponentName"

    return-object v0

    :pswitch_30
    const-string v0, "updatePersonaCache"

    return-object v0

    :pswitch_31
    const-string v0, "getPersonaCacheValue"

    return-object v0

    :pswitch_32
    const-string v0, "getFotaVersion"

    return-object v0

    :pswitch_33
    const-string v0, "broadcastIntentThroughPersona"

    return-object v0

    :pswitch_34
    const-string v0, "startActivityThroughPersona"

    return-object v0

    :pswitch_35
    const-string v0, "isExternalStorageEnabled"

    return-object v0

    :pswitch_36
    const-string v0, "getContainerOrder"

    return-object v0

    :pswitch_37
    const-string v0, "isKnoxWindowExist"

    return-object v0

    :pswitch_38
    const-string v0, "notifyApplicationChanged"

    return-object v0

    :pswitch_39
    const-string v0, "getUpdatedListWithAppSeparation"

    return-object v0

    :pswitch_3a
    const-string v0, "isAppSeparationPresent"

    return-object v0

    :pswitch_3b
    const-string v0, "getSeparatedAppsList"

    return-object v0

    :pswitch_3c
    const-string v0, "isInSeparatedAppsOnly"

    return-object v0

    :pswitch_3d
    const-string v0, "isPossibleAddAppsToContainer"

    return-object v0

    :pswitch_3e
    const-string v0, "setPersonalModeName"

    return-object v0

    :pswitch_3f
    const-string v0, "getPersonalModeName"

    return-object v0

    :pswitch_40
    const-string v0, "setProfileName"

    return-object v0

    :pswitch_41
    const-string v0, "getProfileName"

    return-object v0

    :pswitch_42
    const-string v0, "getECName"

    return-object v0

    :pswitch_43
    const-string v0, "getWorkspaceName"

    return-object v0

    :pswitch_44
    const-string v0, "getContainerName"

    return-object v0

    :pswitch_45
    const-string v0, "getSecureFolderName"

    return-object v0

    :pswitch_46
    const-string v0, "getSecureFolderId"

    return-object v0

    :pswitch_47
    const-string v0, "isFotaUpgradeVersionChanged"

    return-object v0

    :pswitch_48
    const-string v0, "setFocusedLauncherId"

    return-object v0

    :pswitch_49
    const-string v0, "registerSystemPersonaObserver"

    return-object v0

    :pswitch_4a
    const-string v0, "getProfiles"

    return-object v0

    :pswitch_4b
    const-string v0, "isFOTAUpgrade"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public greylist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method

.method public greylist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.samsung.android.knox.ISemPersonaManager"

    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v9, v0, :cond_1

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :cond_1
    packed-switch v9, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxForesightService()Lcom/samsung/android/knox/IBasicCommand;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->hasLicensePermission(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendKnoxForesightBroadcast(Landroid/content/Intent;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isContainerService(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->postPwdChangeNotificationForDeviceOwner(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startTermsActivity()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startCountrySelectionActivity(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isContainerCorePackageUID(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->updateProfileActivityTimeFromKnox(IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setAppSeparationDefaultPolicy(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->CMFAUnLock(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->CMFALock(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->logDpmsKA(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isMoveFilesToOwnerAllowed(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isMoveFilesToContainerAllowed(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->appliedPasswordPolicy(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->resetUCMProfile()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getUCMProfile()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_1b
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setUCMProfile(Landroid/os/Bundle;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getDualDARProfile()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_1d
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setDualDARProfile(Landroid/os/Bundle;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isPasswordSufficientAfterKnoxProfileUnification(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKnoxProfileActivePasswordSufficientForParent(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFocusedUser()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getMoveToKnoxMenuList(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendRequestKeyStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_23
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->hideMultiWindows(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->refreshLockTimer(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->clearAttributes(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAttributes(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setAttributes(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFocusedLauncherId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->addAppPackageNameToAllowList(ILjava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFotaVersion()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_33
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->broadcastIntentThroughPersona(Landroid/content/Intent;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_34
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startActivityThroughPersona(Landroid/content/Intent;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isExternalStorageEnabled(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerOrder(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKnoxWindowExist(III)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->notifyApplicationChanged(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_39
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isAppSeparationPresent()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSeparatedAppsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isInSeparatedAppsOnly(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPersonalModeName(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setProfileName(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getECName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_43
    sget-object v0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_46
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_47
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFotaUpgradeVersionChanged()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setFocusedLauncherId(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ISystemPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_0

    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFOTAUpgrade()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
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
        :pswitch_0
    .end packed-switch
.end method
