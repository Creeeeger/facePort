.class public Lcom/android/settings/password/SetNewPasswordActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/password/SetNewPasswordController$Ui;


# instance fields
.field public mCallerAppName:Ljava/lang/String;

.field public mDevicePasswordRequirementOnly:Z

.field public mNewPasswordAction:Ljava/lang/String;

.field public mRequestedMinComplexity:I

.field public mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mRequestedMinComplexity:I

    iput-boolean v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mDevicePasswordRequirementOnly:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mCallerAppName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v7, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    const-string v4, "SetNewPasswordActivity"

    if-nez v1, :cond_0

    iget-object v1, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Unexpected action to launch this activity"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "android.app.extra.PASSWORD_COMPLEXITY"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v15, "android.app.extra.DEVICE_PASSWORD_REQUIREMENT_ONLY"

    invoke-virtual {v6, v15, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_1

    :cond_2
    move v6, v14

    :goto_1
    or-int v12, v1, v6

    iget-object v1, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x66d

    :goto_2
    move v10, v1

    goto :goto_3

    :cond_3
    const/16 v1, 0x66e

    goto :goto_2

    :goto_3
    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v9

    const/16 v11, 0x66c

    invoke-virtual/range {v8 .. v13}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "Do not change locktype in UCMKeyguard"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    const-string v9, "com.android.settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v7, v6}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_5

    :cond_6
    :goto_4
    move-object v6, v8

    :goto_5
    check-cast v6, Ljava/lang/String;

    iput-object v6, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mCallerAppName:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v7, v1}, Lcom/android/settings/password/PasswordUtils;->isCallingAppPermitted(Landroid/content/Context;Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0, v5, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Landroid/app/admin/PasswordMetrics;->sanitizeComplexityLevel(I)I

    move-result v5

    iput v5, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mRequestedMinComplexity:I

    goto :goto_6

    :cond_7
    invoke-static {v1}, Lcom/android/settings/password/PasswordUtils;->crashCallingApplication(Landroid/os/IBinder;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_8
    :goto_6
    iget-object v5, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mDevicePasswordRequirementOnly:Z

    const-string v5, "DEVICE_PASSWORD_REQUIREMENT_ONLY: "

    invoke-static {v5, v4, v3}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v8, v3}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    goto :goto_7

    :cond_a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    const-string v9, "for_fingerprint_only"

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    move-object v4, v0

    goto :goto_8

    :cond_b
    move-object v4, v8

    :goto_8
    new-instance v10, Lcom/android/settings/password/SetNewPasswordController;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v0, "device_policy"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    move-object v0, v10

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/password/SetNewPasswordController;-><init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V

    iput-object v10, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hide_biometrics_menu"

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/settings/password/SetNewPasswordController;->mShowCredentialTypeOnly:Z

    iget-object v0, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_sec_non_biometrics"

    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/password/SetNewPasswordController;->mFromSecNonBiometrics:Z

    iget-object v0, v7, Lcom/android/settings/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;

    iget-boolean v1, v0, Lcom/android/settings/password/SetNewPasswordController;->mShowCredentialTypeOnly:Z

    iget v2, v0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    const/4 v3, 0x1

    if-nez v1, :cond_c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_d

    :cond_c
    iget-object v1, v0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.fingerprint"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iget-object v4, v0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.biometrics.face"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, v0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v8, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_d

    goto :goto_9

    :cond_d
    move v5, v3

    goto :goto_a

    :cond_e
    :goto_9
    move v5, v14

    :goto_a
    iget-object v6, v0, Lcom/android/settings/password/SetNewPasswordController;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/android/settings/password/SetNewPasswordController;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v6, v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v8, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_f

    goto :goto_b

    :cond_f
    move v6, v3

    goto :goto_c

    :cond_10
    :goto_b
    move v6, v14

    :goto_c
    const-string v7, "request_gk_pw_handle"

    const-string v8, "hide_insecure_options"

    if-eqz v4, :cond_11

    if-eqz v6, :cond_11

    if-eqz v1, :cond_11

    if-eqz v5, :cond_11

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v4, v0, Lcom/android/settings/password/SetNewPasswordController;->mFromSecNonBiometrics:Z

    xor-int/2addr v4, v3

    const-string v5, "for_biometrics"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_11
    if-eqz v4, :cond_12

    if-eqz v6, :cond_12

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v4, v0, Lcom/android/settings/password/SetNewPasswordController;->mFromSecNonBiometrics:Z

    xor-int/2addr v4, v3

    const-string v5, "for_face"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_12
    if-eqz v1, :cond_13

    if-eqz v5, :cond_13

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v4, v0, Lcom/android/settings/password/SetNewPasswordController;->mFromSecNonBiometrics:Z

    xor-int/2addr v4, v3

    const-string v5, "for_fingerprint"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_d
    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    check-cast v0, Lcom/android/settings/password/SetNewPasswordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_e

    :cond_14
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_e
    iget-object v4, v0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "choose_lock_setup_screen_title"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "choose_lock_setup_screen_description"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v9, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/settings/password/SetNewPasswordActivity;->mCallerAppName:Ljava/lang/String;

    if-eqz v1, :cond_15

    const-string v4, "caller_app_name"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_15
    iget v1, v0, Lcom/android/settings/password/SetNewPasswordActivity;->mRequestedMinComplexity:I

    if-eqz v1, :cond_16

    const-string v4, "requested_min_complexity"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_16
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_f

    :cond_17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v1, "is_calling_app_admin"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_19
    :goto_f
    const-string v1, "device_password_requirement_only"

    iget-boolean v3, v0, Lcom/android/settings/password/SetNewPasswordActivity;->mDevicePasswordRequirementOnly:Z

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
