.class public Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ConfirmDeviceCredentialActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ConfirmDeviceCredentialActivity"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mBiometricAllowed:Z

.field private mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

.field private mCheckDevicePolicyManager:Z

.field private mContext:Landroid/content/Context;

.field private mCredentialMode:I

.field private mDetails:Ljava/lang/String;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mGoingToBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTitle:Ljava/lang/String;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUnlockRecovery:Z

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mWaitingForBiometricCallback:Z


# direct methods
.method public static synthetic $r8$lambda$3V-4hQuacFhnzFwKkZEpzl7GDfU(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getDetailsFromCredentialType$5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jy_iXGs43b1YKZ4PclJstZE2Ue4(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getDetailsFromCredentialType$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OlEUedJN06AubNIwYwU0OCWNNtA(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getDetailsFromCredentialType$4()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QHEZDoj6DST2ibImPw9rtFjkS3k(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getTitleFromCredentialType$3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZNd_2fMeSe-cUAiatMbcV9Xgsa8(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getTitleFromCredentialType$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hKqLKW9gAZtqNsmTlzn5DM8hTwc(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$getTitleFromCredentialType$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vqWjji12vU8obsewHeXLRaLb9pg(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePolicyManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoingToBackground(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKnoxBiometricsUiHelper(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/trust/TrustManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTrustManager:Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingForBiometricCallback(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmWaitingForBiometricCallback(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowConfirmCredentials(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricAllowed:Z

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUnlockRecovery:Z

    .line 129
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mExecutor:Ljava/util/concurrent/Executor;

    .line 133
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method private getDetailsFromCredentialType(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 398
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.WORK_PROFILE_CONFIRM_PASSWORD"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 403
    :cond_1
    sget p1, Lcom/android/settings/R$string;->confirm_lockpassword_your_password_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    .line 383
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.WORK_PROFILE_CONFIRM_PIN"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 387
    :cond_3
    sget p1, Lcom/android/settings/R$string;->confirm_lockpassword_your_pin_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    .line 390
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.WORK_PROFILE_CONFIRM_PATTERN"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 395
    :cond_5
    sget p1, Lcom/android/settings/R$string;->lockpattern_need_to_unlock:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitleFromCredentialType(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 367
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.CONFIRM_WORK_PROFILE_PASSWORD_HEADER"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 373
    :cond_1
    sget p1, Lcom/android/settings/R$string;->sec_lockpassword_confirm_your_password_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    .line 350
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.CONFIRM_WORK_PROFILE_PIN_HEADER"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 355
    :cond_3
    sget p1, Lcom/android/settings/R$string;->sec_lockpassword_confirm_your_pin_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    .line 358
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    const-string p0, "Settings.CONFIRM_WORK_PROFILE_PATTERN_HEADER"

    invoke-virtual {p1, p0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 364
    :cond_5
    sget p1, Lcom/android/settings/R$string;->sec_lockpassword_confirm_your_pattern_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "device_policy"

    .line 540
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 543
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 544
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isBiometricAllowed(II)Z
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->interceptIsBiometricAllowedIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->isBiometricAllowed(II)Z

    move-result p0

    return p0

    .line 456
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isStrongAuthRequired(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 457
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricAllowed:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInternalActivity()Z
    .locals 0

    .line 536
    instance-of p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;

    return p0
.end method

.method private isStrongAuthRequired(I)Z
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 447
    invoke-virtual {p1, p0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$getDetailsFromCredentialType$4()Ljava/lang/String;
    .locals 1

    .line 384
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_generic_profile:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDetailsFromCredentialType$5()Ljava/lang/String;
    .locals 1

    .line 392
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_generic_profile:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDetailsFromCredentialType$6()Ljava/lang/String;
    .locals 1

    .line 400
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic_profile:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTitleFromCredentialType$1()Ljava/lang/String;
    .locals 1

    .line 352
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_pin_header:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTitleFromCredentialType$2()Ljava/lang/String;
    .locals 1

    .line 360
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_pattern_header:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTitleFromCredentialType$3()Ljava/lang/String;
    .locals 1

    .line 369
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_password_header:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;)V
    .locals 4

    .line 461
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment"

    .line 462
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/BiometricFragment;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    if-nez v0, :cond_0

    .line 466
    invoke-static {p1}, Lcom/android/settings/password/BiometricFragment;->newInstance(Landroid/hardware/biometrics/PromptInfo;)Lcom/android/settings/password/BiometricFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/password/BiometricFragment;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/settings/password/BiometricFragment;->setUser(I)V

    .line 473
    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/password/BiometricFragment;->setIsInternal(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    .line 479
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method private showConfirmCredentials()V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->interceptShowConfirmCredentialsIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 504
    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 505
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 508
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUnlockRecovery:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUnlockRecovery(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 510
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setHeader(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    .line 511
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 512
    invoke-virtual {v0, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setExternal(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 513
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForceVerifyPath(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    .line 517
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 520
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUnlockRecovery:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUnlockRecovery(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 522
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setHeader(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    .line 523
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 524
    invoke-virtual {v0, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setExternal(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 525
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 529
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v1, "No pin/pattern/pass set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 530
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 532
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public finishForWorkProfile()V
    .locals 0

    .line 560
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    if-eqz v0, :cond_0

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->addIntentIfNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 207
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 212
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 213
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    .line 214
    const-class p1, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 215
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 218
    iput-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Landroid/content/Context;

    const-string v1, "check_dpm"

    .line 220
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCheckDevicePolicyManager:Z

    const-string v1, "android.app.extra.TITLE"

    .line 221
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    const-string v1, "android.app.extra.DESCRIPTION"

    .line 222
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    .line 223
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "biometric_allow"

    const/4 v4, 0x1

    .line 228
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricAllowed:Z

    .line 231
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 232
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 236
    sget-object v5, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v6, "Invalid intent extra"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v3

    .line 241
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 242
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v0

    .line 245
    :goto_1
    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    .line 246
    iget v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, v6}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    :cond_2
    const-string/jumbo v6, "unlock_recovery"

    .line 250
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUnlockRecovery:Z

    .line 253
    new-instance p1, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {p1}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    .line 254
    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/biometrics/PromptInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 256
    iget-boolean v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCheckDevicePolicyManager:Z

    invoke-virtual {p1, v6}, Landroid/hardware/biometrics/PromptInfo;->setDisallowBiometricsIfPolicyExists(Z)V

    .line 258
    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/settings/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v6

    .line 260
    iget-object v7, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 262
    invoke-direct {p0, v6, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getTitleFromCredentialType(IZ)Ljava/lang/String;

    move-result-object v7

    .line 261
    invoke-virtual {p1, v7}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialTitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_3
    iget-object v7, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 267
    invoke-direct {p0, v6, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getDetailsFromCredentialType(IZ)Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-virtual {p1, v5}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V

    .line 274
    :cond_4
    new-instance v5, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    iget v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v11

    move-object v6, v5

    move-object v7, p0

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;-><init>(Landroid/content/Context;ILcom/samsung/android/settings/knox/KnoxBiometricsUiHelper$Callback;Landroid/app/Activity;Z)V

    iput-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    .line 276
    iget-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    invoke-virtual {v5, p1}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->setPromptInfo(Landroid/hardware/biometrics/PromptInfo;)V

    if-eqz v2, :cond_5

    .line 285
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {p1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 288
    iget-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUnlockRecovery:Z

    invoke-virtual {p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUnlockRecovery(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 290
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setHeader(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    .line 291
    invoke-virtual {p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 292
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setAlternateButton(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 293
    invoke-virtual {p1, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setExternal(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    const/16 v1, -0x270f

    .line 294
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    move v12, v0

    move v0, p1

    move p1, v12

    goto :goto_4

    .line 297
    :cond_5
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    .line 298
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x2

    .line 302
    iput v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    .line 303
    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, v3, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 304
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;)V

    goto :goto_2

    .line 307
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    goto :goto_3

    .line 311
    :cond_7
    iput v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    .line 312
    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, v3, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 315
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/hardware/biometrics/PromptInfo;)V

    :goto_2
    move p1, v4

    goto :goto_4

    .line 318
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    :goto_3
    move p1, v0

    move v0, v4

    :goto_4
    if-eqz v0, :cond_a

    .line 325
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->interceptIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 326
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 327
    sget-object p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string p1, "Not finish when DexOnPC case."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_a
    if-eqz p1, :cond_b

    .line 335
    iput-boolean v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    goto :goto_5

    .line 337
    :cond_b
    sget-object p1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v0, "No pattern, password or PIN set."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 338
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_5
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 421
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 422
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    .line 425
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Lcom/android/settings/password/BiometricFragment;->isAuthenticating()Z

    move-result v0

    .line 427
    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authenticating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->setResultIfNeeded(Landroid/app/Activity;)V

    .line 433
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    if-nez v0, :cond_2

    .line 434
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 410
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mKnoxBiometricsUiHelper:Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/knox/KnoxBiometricsUiHelper;->onStart(Landroid/app/Activity;Z)V

    return-void
.end method

.method public showConfirmCredentialsForWorkProfile()V
    .locals 0

    .line 555
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    return-void
.end method
