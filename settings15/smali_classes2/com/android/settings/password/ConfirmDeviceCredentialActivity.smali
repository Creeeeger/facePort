.class public Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAuthenticationCallback:Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;

.field public mBiometricAllowed:Z

.field public mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

.field public mBiometricsAuthenticators:I

.field public mCheckDevicePolicyManager:Z

.field public mContext:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

.field public mDetails:Ljava/lang/CharSequence;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mExecutor:Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;

.field public mForceVerifyPath:Z

.field public mGoingToBackground:Z

.field public final mHandler:Landroid/os/Handler;

.field public mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mTaskOverlay:Z

.field public mTitle:Ljava/lang/String;

.field public mTrustManager:Landroid/app/trust/TrustManager;

.field public mUnlockRecovery:Z

.field public mUserId:I

.field public mUserManager:Landroid/os/UserManager;

.field public mWaitingForBiometricCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mForceVerifyPath:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricAllowed:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUnlockRecovery:Z

    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mExecutor:Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mAuthenticationCallback:Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->addIntentIfNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final isBiometricAllowed(II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->interceptIsBiometricAllowedIfNeeded()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->isBiometricAllowed(II)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p1

    :goto_1
    xor-int/2addr p1, v0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, v1

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v0

    :goto_4
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricAllowed:Z

    if-eqz p0, :cond_6

    move v1, v0

    :cond_6
    return v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v0, "biometric_prompt_hide_background"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v6, -0x80000000

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTrustManager:Landroid/app/trust/TrustManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v1, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const-string v0, "check_dpm"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCheckDevicePolicyManager:Z

    const-string v0, "android.app.extra.TITLE"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    const-string v0, "android.app.extra.DESCRIPTION"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    const-string v0, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "biometric_prompt_authenticators"

    const v7, 0x80ff

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricsAuthenticators:I

    const-string v0, "biometric_prompt_negative_button_text"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v0, "android.app.action.CONFIRM_REPAIR_MODE_DEVICE_CREDENTIAL"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v0, "android.app.action.CONFIRM_REMOTE_DEVICE_CREDENTIAL"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    instance-of v11, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;

    if-eqz v11, :cond_1

    const-string v0, "android.app.KeyguardManager.FORCE_TASK_OVERLAY"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    iput-boolean v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTaskOverlay:Z

    const-string v0, "android.app.action.PREPARE_REPAIR_MODE_DEVICE_CREDENTIAL"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v0, "biometric_allow"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricAllowed:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    const-string v13, "ConfirmDeviceCredentialActivity"

    if-eqz v11, :cond_2

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v0

    iput v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v14, "Invalid intent extra"

    invoke-static {v13, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget v14, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v14}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    invoke-virtual {v14, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v14

    if-eqz v14, :cond_3

    iget v14, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v14

    if-nez v14, :cond_3

    move v14, v2

    goto :goto_3

    :cond_3
    move v14, v5

    :goto_3
    iget-object v15, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget v3, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v3

    iget-object v15, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    if-nez v15, :cond_6

    if-eqz v14, :cond_6

    iget v15, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v15}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iput-object v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    :cond_6
    const-string v2, "unlock_recovery"

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUnlockRecovery:Z

    new-instance v2, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v2}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    iget-object v15, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v15}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v15, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    invoke-virtual {v2, v15}, Landroid/hardware/biometrics/PromptInfo;->setDescription(Ljava/lang/CharSequence;)V

    iget-boolean v15, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCheckDevicePolicyManager:Z

    invoke-virtual {v2, v15}, Landroid/hardware/biometrics/PromptInfo;->setDisallowBiometricsIfPolicyExists(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/hardware/biometrics/PromptInfo;->setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)V

    iget v15, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricsAuthenticators:I

    invoke-virtual {v2, v15}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    invoke-virtual {v2, v7}, Landroid/hardware/biometrics/PromptInfo;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v7

    const/4 v15, -0x1

    if-eqz v7, :cond_d

    invoke-static {}, Landroid/multiuser/Flags;->usePrivateSpaceIconInBiometricPrompt()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLaunchedFromUid()I

    move-result v5

    move-object/from16 v18, v13

    const-string v13, "android.permission.SET_BIOMETRIC_DIALOG_ADVANCED"

    invoke-virtual {v7, v13, v15, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "custom_logo_res_id"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    iget-object v7, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v7, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_7

    move-object/from16 v19, v3

    move/from16 v21, v12

    const/4 v7, 0x0

    goto :goto_8

    :cond_7
    instance-of v13, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_8

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v19, v3

    move/from16 v21, v12

    goto :goto_8

    :cond_8
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    if-lez v13, :cond_9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    if-gtz v13, :cond_a

    :cond_9
    move-object/from16 v19, v3

    goto :goto_6

    :cond_a
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    move-object/from16 v19, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v15, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_7

    :goto_6
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x1

    invoke-static {v13, v13, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_7
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    move-object/from16 v20, v3

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    move/from16 v21, v12

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v12, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v7, v20

    :goto_8
    invoke-virtual {v2, v5, v7}, Landroid/hardware/biometrics/PromptInfo;->setLogo(ILandroid/graphics/Bitmap;)V

    goto :goto_9

    :cond_b
    move-object/from16 v19, v3

    move/from16 v21, v12

    :goto_9
    const-string v3, "custom_logo_description"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v2, v3}, Landroid/hardware/biometrics/PromptInfo;->setLogoDescription(Ljava/lang/String;)V

    goto :goto_a

    :cond_c
    move-object/from16 v19, v3

    move/from16 v21, v12

    goto :goto_a

    :cond_d
    move-object/from16 v19, v3

    move/from16 v21, v12

    move-object/from16 v18, v13

    :cond_e
    :goto_a
    iget-object v3, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/admin/ManagedSubscriptionsPolicy;->getPolicyType()I

    move-result v3

    if-eqz v14, :cond_f

    const/4 v5, 0x1

    if-ne v3, v5, :cond_f

    invoke-virtual {v2, v5}, Landroid/hardware/biometrics/PromptInfo;->setShowEmergencyCallButton(Z)V

    :cond_f
    iget-object v3, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    sget-object v5, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v3

    iget-object v5, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    if-nez v5, :cond_16

    const/4 v5, 0x1

    if-eq v3, v5, :cond_14

    const/4 v5, 0x3

    if-eq v3, v5, :cond_12

    const/4 v5, 0x4

    if-eq v3, v5, :cond_10

    const/4 v5, 0x0

    goto :goto_b

    :cond_10
    if-eqz v14, :cond_11

    iget-object v5, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v7, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda0;

    const/4 v12, 0x2

    invoke-direct {v7, v1, v12}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;I)V

    const-string v12, "Settings.CONFIRM_WORK_PROFILE_PASSWORD_HEADER"

    invoke-virtual {v5, v12, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_11
    const v5, 0x7f142289

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_12
    if-eqz v14, :cond_13

    iget-object v5, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v7, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda0;

    const/4 v12, 0x0

    invoke-direct {v7, v1, v12}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;I)V

    const-string v12, "Settings.CONFIRM_WORK_PROFILE_PIN_HEADER"

    invoke-virtual {v5, v12, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_13
    const v5, 0x7f142515

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_14
    if-eqz v14, :cond_15

    iget-object v5, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v7, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda0;

    const/4 v12, 0x1

    invoke-direct {v7, v1, v12}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;I)V

    const-string v12, "Settings.CONFIRM_WORK_PROFILE_PATTERN_HEADER"

    invoke-virtual {v5, v12, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_15
    const v5, 0x7f142512

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_b
    invoke-virtual {v2, v5}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialTitle(Ljava/lang/CharSequence;)V

    :cond_16
    iget-object v5, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    if-nez v5, :cond_17

    iget v5, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->getConfirmCredentialStringForUser(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V

    :cond_17
    new-instance v3, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget v5, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput-object v7, v3, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    const-string v12, ", mIsInternal : "

    const-string v13, "Init. mUserId : "

    const-string v14, "activity"

    const-string v15, "persona"

    if-eqz v7, :cond_18

    new-instance v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object/from16 p1, v2

    const/4 v2, 0x0

    iput v2, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFailedBiometricUnlockAttemptsForSecureFolder:I

    iput-object v1, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mContext:Landroid/content/Context;

    iput v5, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserId:I

    iput-object v1, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mActivity:Landroid/app/Activity;

    iput-object v1, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mUserManager:Landroid/os/UserManager;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mActivityManager:Landroid/app/ActivityManager;

    sget-object v2, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    const-string v2, "SECURE_FOLDER_KEYGUARD_STATUS"

    const/4 v14, 0x0

    invoke-virtual {v1, v2, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v15, "pref_failed_biometric_unlock_attempts_for_secure_folder"

    invoke-interface {v2, v15, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFailedBiometricUnlockAttemptsForSecureFolder:I

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    iput-boolean v2, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsKeyguardLocked:Z

    iput-boolean v11, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mIsInternal:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    const-string v2, ", mFailedBiometricUnlockAttemptsForSecureFolder : "

    invoke-static {v5, v13, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v7, Lcom/samsung/android/settings/knox/SecureFolderBiometricLockHelper;->mFailedBiometricUnlockAttemptsForSecureFolder:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "KKG::SecureFolderBiometricLockHelper"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, v3, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    move/from16 v16, v0

    :goto_c
    move-object/from16 v20, v4

    goto/16 :goto_e

    :cond_18
    move-object/from16 p1, v2

    new-instance v2, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mContext:Landroid/content/Context;

    iput v5, v2, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserId:I

    iput-boolean v11, v2, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsInternal:Z

    iput-object v1, v2, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;

    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, v2, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    iput-object v7, v2, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mUserManager:Landroid/os/UserManager;

    move/from16 v16, v0

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    const-string v0, "KNOX_KEYGUARD_STATUS"

    const/4 v14, 0x0

    invoke-virtual {v1, v0, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v15, "pref_failed_biometric_unlock_attempts"

    invoke-interface {v0, v15, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-class v14, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/KeyguardManager;

    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v14

    iput-boolean v14, v2, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mIsKeyguardLocked:Z

    invoke-virtual {v7, v5}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v14

    iput v14, v2, Lcom/samsung/android/settings/knox/WorkProfileBiometricLockHelper;->mEffectiveUserId:I

    const-string v15, ", mFailedBiometricUnlockAttemptsForWorkProfile : "

    move-object/from16 v20, v4

    const-string v4, ", Two-factor enabled : "

    invoke-static {v13, v15, v5, v0, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v5}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    const/4 v4, 0x1

    goto :goto_d

    :cond_19
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mEffectiveUserId : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KKG::WorkProfileBiometricLockHelper"

    invoke-static {v0, v14, v4}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput-object v2, v3, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    goto :goto_e

    :cond_1a
    move/from16 v16, v0

    move-object/from16 p1, v2

    goto/16 :goto_c

    :goto_e
    iput-object v3, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-object v2, v3, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->setFragmentManager(Landroidx/fragment/app/FragmentManagerImpl;)V

    :cond_1b
    iget-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz v8, :cond_1c

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    iget-boolean v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUnlockRecovery:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUnlockRecovery:Z

    iget-object v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    iget-object v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mDescription:Ljava/lang/CharSequence;

    iput-object v6, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mAlternateButton:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mExternal:Z

    const/16 v2, -0x270f

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    :goto_f
    move v5, v0

    :goto_10
    const/16 v17, 0x0

    goto/16 :goto_14

    :cond_1c
    if-eqz v9, :cond_1d

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    iget-object v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    iget-object v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mDescription:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mExternal:Z

    const/16 v2, -0x270e

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    goto :goto_f

    :cond_1d
    if-eqz v10, :cond_1e

    const-string v0, "android.app.extra.REMOTE_LOCKSCREEN_VALIDATION_SESSION"

    const-class v2, Landroid/app/RemoteLockscreenValidationSession;

    move-object/from16 v3, v20

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteLockscreenValidationSession;

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    const-class v4, Landroid/content/ComponentName;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    const-string v4, "android.app.extra.CHECKBOX_LABEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v4, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRemoteLockscreenValidation:Z

    iput-object v0, v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRemoteLockscreenValidationSession:Landroid/app/RemoteLockscreenValidationSession;

    iput-object v2, v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRemoteLockscreenValidationServiceComponent:Landroid/content/ComponentName;

    iput-boolean v5, v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v5, v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    iget-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    iput-object v0, v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mDescription:Ljava/lang/CharSequence;

    iput-object v3, v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mCheckBoxLabel:Ljava/lang/CharSequence;

    iput-object v6, v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mAlternateButton:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mExternal:Z

    invoke-virtual {v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    return-void

    :cond_1e
    if-eqz v21, :cond_1f

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    iget-object v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    iget-object v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mDescription:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mExternal:Z

    iget v3, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    iput v3, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    iget-boolean v3, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTaskOverlay:Z

    iput-boolean v3, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTaskOverlay:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestWriteRepairModePassword:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForceVerifyPath:Z

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    goto/16 :goto_f

    :cond_1f
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz v11, :cond_21

    iget-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mForceVerifyPath:Z

    iget v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    move/from16 v2, v16

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;I)V

    const/4 v5, 0x0

    :goto_11
    const/16 v17, 0x1

    goto :goto_14

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    const/4 v5, 0x1

    goto/16 :goto_10

    :cond_21
    move-object/from16 v3, p1

    move/from16 v2, v16

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz v19, :cond_23

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz v11, :cond_23

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mForceVerifyPath:Z

    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/biometrics/PromptInfo;->setUseParentProfileForDeviceCredential(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/biometrics/PromptInfo;->setConfirmationRequested(Z)V

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;I)V

    :goto_12
    move v5, v4

    goto :goto_11

    :cond_22
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    :goto_13
    move/from16 v17, v4

    const/4 v5, 0x1

    goto :goto_14

    :cond_23
    const/4 v4, 0x0

    iget v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_24

    iget v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;I)V

    goto :goto_12

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    goto :goto_13

    :goto_14
    if-eqz v5, :cond_26

    iget-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz v0, :cond_25

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "Not finish when DexOnPC case."

    move-object/from16 v2, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_15

    :cond_26
    move-object/from16 v2, v18

    if-eqz v17, :cond_27

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    goto :goto_15

    :cond_27
    const-string v0, "No pattern, password or PIN set."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :goto_15
    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    const-string v1, "Authenticating: "

    const-string v2, "ConfirmDeviceCredentialActivity"

    invoke-static {v1, v2, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->setResultIfNeeded()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    instance-of v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->onStart(Landroid/app/Activity;Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    const/16 v0, 0x8

    invoke-interface {p0, v0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_1
    return-void
.end method

.method public final showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;I)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const-string v1, "fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/BiometricFragment;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/password/BiometricFragment;

    invoke-direct {v0}, Lcom/android/settings/password/BiometricFragment;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "prompt_info"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mExecutor:Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;

    iget-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mAuthenticationCallback:Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;

    iput-object v4, v0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iput-object v5, v0, Lcom/android/settings/password/BiometricFragment;->mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iput p2, v0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    iget p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    instance-of v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;

    iput-boolean v0, p2, Lcom/android/settings/password/BiometricFragment;->mIsInternal:Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    invoke-static {p1, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    invoke-virtual {p1, v3, p0, v1, v2}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p1, v3}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :cond_2
    return-void
.end method

.method public final showConfirmCredentials()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->mKnoxBiometricLockHelper:Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;->interceptShowConfirmCredentialsIfNeeded()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mDescription:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mExternal:Z

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    iput v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTaskOverlay:Z

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTaskOverlay:Z

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mForceVerifyPath:Z

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForceVerifyPath:Z

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ConfirmDeviceCredentialActivity"

    const-string v1, "No pin/pattern/pass set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
