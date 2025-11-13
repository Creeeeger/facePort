.class public final Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mAvailableBiometric:I

.field public mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

.field public final mCredentialType:I

.field public final mExtraInfo:Landroid/os/Bundle;

.field public final mIsKnoxManagedProfile:Z

.field public final mIsManagedProfile:Z

.field public final mIsSecureFolder:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mNumberOfAvailableBiometrics:I

.field public final mOperationId:J

.field public final mOrganizationColor:I

.field public final mPackageName:Ljava/lang/String;

.field public final mPrimaryBiometric:I

.field public final mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mSavedInstanceState:Landroid/os/Bundle;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/os/Bundle;IIJLjava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    move-object v1, p1

    invoke-direct {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/os/Bundle;IIJLjava/lang/String;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/os/Bundle;IIJLjava/lang/String;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mExtraInfo:Landroid/os/Bundle;

    .line 5
    iput-object p9, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6
    iput p5, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 7
    iput-wide p6, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mOperationId:J

    .line 8
    invoke-virtual {p9, p5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    const/high16 p2, 0x10000

    const/4 p5, 0x1

    if-eq p1, p2, :cond_3

    const/high16 p2, 0x20000

    if-eq p1, p2, :cond_2

    const/high16 p2, 0x30000

    if-eq p1, p2, :cond_2

    const/high16 p2, 0x70000

    if-eq p1, p2, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    move p1, p5

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    .line 9
    :goto_0
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 10
    const-string p1, "KEY_AVAILABILITY_BIOMETRIC"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p6

    .line 11
    iput p6, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mAvailableBiometric:I

    .line 12
    iput-object p8, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPackageName:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->canUseFingerprint()Z

    move-result p6

    const/16 p7, 0x8

    if-eqz p6, :cond_4

    if-eq p4, p7, :cond_4

    .line 14
    iput p7, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPrimaryBiometric:I

    goto :goto_1

    .line 15
    :cond_4
    iput p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPrimaryBiometric:I

    .line 16
    :goto_1
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    and-int/lit8 p4, p1, 0x2

    if-eqz p4, :cond_5

    goto :goto_2

    :cond_5
    move p5, p2

    :goto_2
    and-int/2addr p1, p7

    if-eqz p1, :cond_6

    add-int/lit8 p5, p5, 0x1

    .line 17
    :cond_6
    iput p5, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mNumberOfAvailableBiometrics:I

    .line 18
    const-string p1, "DISPLAY_TYPE"

    const/4 p4, -0x1

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 19
    const-string p1, "MANAGED_PROFILE"

    .line 20
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsManagedProfile:Z

    .line 21
    const-string p1, "MANAGED_PROFILE_COLOR"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mOrganizationColor:I

    .line 22
    const-string p1, "MANAGED_PROFILE_KNOX"

    .line 23
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsKnoxManagedProfile:Z

    .line 24
    const-string p1, "SECURE_FOLDER"

    .line 25
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsSecureFolder:Z

    return-void
.end method


# virtual methods
.method public final canUseFingerprint()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mAvailableBiometric:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x2

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final getApplicationInfoForLogo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    sget-boolean p0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 20
    .line 21
    const-string p0, "android"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object p0, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    move-object p0, v0

    .line 33
    :goto_1
    const-string p2, "Cannot find application info for "

    .line 34
    .line 35
    const-string v2, "BSS_PromptConfig"

    .line 36
    .line 37
    if-nez p0, :cond_3

    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const v3, 0x400200

    .line 60
    .line 61
    .line 62
    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :goto_2
    return-object v1
.end method

.method public final getComponentNameForLogo()Landroid/content/ComponentName;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getRealCallerForConfirmDeviceCredentialActivity()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getRealCallerForConfirmDeviceCredentialActivity()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "getComponentNameForLogo: topActivity is "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "BSS_PromptConfig"

    .line 53
    .line 54
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPackageName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_1

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_1
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public final getPrimaryBiometricAuthenticator()I
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPrimaryBiometric:I

    .line 4
    .line 5
    if-eq p0, v0, :cond_4

    .line 6
    .line 7
    const/16 v1, 0x1000

    .line 8
    .line 9
    if-eq p0, v1, :cond_3

    .line 10
    .line 11
    const/16 v0, 0x2000

    .line 12
    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x4000

    .line 16
    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const v0, 0x8000

    .line 20
    .line 21
    .line 22
    if-eq p0, v0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    const/16 p0, 0x100

    .line 29
    .line 30
    return p0

    .line 31
    :cond_2
    const/4 p0, 0x4

    .line 32
    return p0

    .line 33
    :cond_3
    return v0

    .line 34
    :cond_4
    const/4 p0, 0x2

    .line 35
    return p0
.end method

.method public final isCheckToEnrollMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    and-int/2addr p0, v0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final isContentViewListBoxUsed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of p0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;

    .line 8
    .line 9
    return p0
.end method

.method public final isDeviceCredentialAllowed()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const v0, 0x8000

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, v0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isKnoxProfile()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsKnoxManagedProfile:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsSecureFolder:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PromptInfo[Authenticators="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", PrivilegedFlag="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "] , PrimaryBiometric="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPrimaryBiometric:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", Available="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mAvailableBiometric:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", UserId="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", OperationId="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mOperationId:J

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", CredentialType="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", ManagedProfile="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsManagedProfile:Z

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ", KnoxManagedProfile="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsKnoxManagedProfile:Z

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", SecureFolder="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsSecureFolder:Z

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, "\n   extra=["

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mExtraInfo:Landroid/os/Bundle;

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p0, "]"

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0
.end method
