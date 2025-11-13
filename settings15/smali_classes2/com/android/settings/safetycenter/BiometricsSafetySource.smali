.class public abstract Lcom/android/settings/safetycenter/BiometricsSafetySource;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static onBiometricsChanged(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/safetycenter/SafetyEvent$Builder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/safetycenter/SafetyEvent$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/safetycenter/SafetyEvent$Builder;->build()Landroid/safetycenter/SafetyEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->setSafetySourceData(Landroid/content/Context;Landroid/safetycenter/SafetyEvent;)V

    return-void
.end method

.method public static setBiometricSafetySourceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZZLandroid/safetycenter/SafetyEvent;)V
    .locals 1

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    const/16 p5, 0xc8

    goto :goto_0

    :cond_0
    const/16 p5, 0x64

    :goto_0
    new-instance v0, Landroid/safetycenter/SafetySourceStatus$Builder;

    invoke-direct {v0, p1, p2, p5}, Landroid/safetycenter/SafetySourceStatus$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, p3}, Landroid/safetycenter/SafetySourceStatus$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/safetycenter/SafetySourceStatus$Builder;->setEnabled(Z)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/safetycenter/SafetySourceStatus$Builder;->build()Landroid/safetycenter/SafetySourceStatus;

    move-result-object p1

    new-instance p2, Landroid/safetycenter/SafetySourceData$Builder;

    invoke-direct {p2}, Landroid/safetycenter/SafetySourceData$Builder;-><init>()V

    invoke-virtual {p2, p1}, Landroid/safetycenter/SafetySourceData$Builder;->setStatus(Landroid/safetycenter/SafetySourceStatus;)Landroid/safetycenter/SafetySourceData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/safetycenter/SafetySourceData$Builder;->build()Landroid/safetycenter/SafetySourceData;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "AndroidBiometrics"

    invoke-static {p0, p2, p1, p6}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->setSafetySourceData(Landroid/content/Context;Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void
.end method

.method public static setSafetySourceData(Landroid/content/Context;Landroid/safetycenter/SafetyEvent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v5

    const/4 v7, 0x0

    const-string v8, "AndroidBiometrics"

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/os/UserManager;->isPrivateProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v8, v7, v6}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->setSafetySourceData(Landroid/content/Context;Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void

    :cond_2
    new-instance v5, Lcom/android/settings/biometrics/BiometricNavigationUtils;

    invoke-direct {v5, v2}, Lcom/android/settings/biometrics/BiometricNavigationUtils;-><init>(I)V

    new-instance v9, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;

    invoke-direct {v9, v0, v2}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;-><init>(Landroid/content/Context;I)V

    new-instance v10, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;

    invoke-direct {v10, v0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/os/UserManager;->isProfile()Z

    move-result v3

    const/4 v11, 0x1

    iget v12, v9, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mUserId:I

    const/16 v13, 0xa

    const-class v14, Lcom/android/settings/Settings$CombinedBiometricSettingsActivity;

    const/high16 v15, 0x4000000

    if-nez v3, :cond_6

    invoke-virtual {v10}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v9}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->getDisablingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->getTitleForActiveUnlock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v5, v0, v7, v1, v8}, Lcom/android/settings/biometrics/BiometricNavigationUtils;->getBiometricSettingsIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v0, v13, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    if-nez v1, :cond_3

    move v7, v11

    goto :goto_1

    :cond_3
    move v7, v4

    :goto_1
    iget-object v1, v9, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v12}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v9, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v12}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v11, v4

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move v4, v7

    move v5, v11

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->setBiometricSafetySourceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZZLandroid/safetycenter/SafetyEvent;)V

    return-void

    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v9}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->getDisablingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/os/UserManager;->isProfile()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->isPrivateProfile(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_7

    const v7, 0x7f141d33

    goto :goto_3

    :cond_7
    const v7, 0x7f142a68

    :goto_3
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_8
    const v7, 0x7f142996

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v9}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->getSummary()Ljava/lang/String;

    move-result-object v8

    const-class v10, Landroid/os/UserManager;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/os/UserManager;->isProfile()Z

    move-result v10

    if-eqz v10, :cond_9

    const-class v10, Lcom/android/settings/Settings$CombinedBiometricProfileSettingsActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_9
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    :goto_5
    sget-object v14, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v5, v0, v10, v3, v14}, Lcom/android/settings/biometrics/BiometricNavigationUtils;->getBiometricSettingsIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v13, v2, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    if-nez v3, :cond_a

    move v10, v11

    goto :goto_6

    :cond_a
    move v10, v4

    :goto_6
    iget-object v1, v9, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v12}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    iget-object v1, v9, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v12}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    move v11, v4

    :goto_7
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v5

    move v4, v10

    move v5, v11

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->setBiometricSafetySourceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZZLandroid/safetycenter/SafetyEvent;)V

    return-void

    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result v9

    const v10, 0x7f140d0c

    if-eqz v9, :cond_14

    const/16 v7, 0x8

    invoke-static {v0, v7}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/os/UserManager;->isProfile()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isPrivateProfile(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_e

    const v8, 0x7f141d4f

    goto :goto_8

    :cond_e
    const v8, 0x7f1429d5

    :goto_8
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_f
    const v8, 0x7f1429d3

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_9
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_10

    const v9, 0x7f1429d4

    goto :goto_a

    :cond_10
    const v9, 0x7f1429d2

    :goto_a
    const/16 v12, 0x80

    invoke-static {v0, v12, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v3, v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v12

    if-eqz v12, :cond_12

    const v9, 0x7f1429d1

    :cond_12
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_b
    const-class v10, Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v5, v0, v10, v7, v12}, Lcom/android/settings/biometrics/BiometricNavigationUtils;->getBiometricSettingsIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/16 v10, 0x14

    invoke-static {v1, v10, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    if-nez v7, :cond_13

    move v4, v11

    :cond_13
    invoke-virtual {v3, v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v5

    move v5, v7

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->setBiometricSafetySourceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZZLandroid/safetycenter/SafetyEvent;)V

    return-void

    :cond_14
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const/4 v7, 0x2

    invoke-static {v0, v7}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroid/os/UserManager;->isProfile()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isPrivateProfile(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_15

    const v8, 0x7f141d56

    goto :goto_c

    :cond_15
    const v8, 0x7f142a69

    :goto_c
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_16
    const v8, 0x7f142a19

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_d
    const/16 v9, 0x20

    invoke-static {v0, v9, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v9

    if-eqz v9, :cond_17

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_17
    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const v10, 0x7f142a17

    invoke-static {v0, v9, v10}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_18
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_19

    const v9, 0x7f142a1a

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_19
    const v9, 0x7f142a18

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_e
    const-class v10, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v5, v0, v10, v7, v12}, Lcom/android/settings/biometrics/BiometricNavigationUtils;->getBiometricSettingsIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/16 v10, 0x1e

    invoke-static {v1, v10, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    if-nez v7, :cond_1a

    move v4, v11

    :cond_1a
    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v5

    move v5, v7

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->setBiometricSafetySourceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZZLandroid/safetycenter/SafetyEvent;)V

    return-void

    :cond_1b
    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v8, v7, v6}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->setSafetySourceData(Landroid/content/Context;Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void
.end method
