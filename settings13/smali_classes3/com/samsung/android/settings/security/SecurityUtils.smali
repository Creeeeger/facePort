.class public Lcom/samsung/android/settings/security/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static mFeatureChecked:Z = false

.field private static mFeatureEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static ConnectedMobileKeypad(Landroid/content/Context;)Z
    .locals 1

    .line 649
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 650
    iget p0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static checkReactiveService(Landroid/content/Context;)I
    .locals 2

    .line 85
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result p0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkReactiveService : rsm.getServiceSupport() is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0
.end method

.method public static checkSAMenuChanged(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "SecurityUtils"

    const-string v1, "checkSAMenuChanged."

    .line 620
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 623
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.samsungpass"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v3, "com.osp.app.signin"

    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 630
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const v3, 0x7d38338

    if-lt v2, v3, :cond_0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0xd22e720

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v2, "cannot get packageinfo"

    .line 638
    invoke-static {v0, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, "Getting VersionCode: NameNotFoundException"

    .line 636
    invoke-static {v0, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v1
.end method

.method public static getCurrentSecurityTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 844
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 846
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 845
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const/high16 v0, 0x20000

    if-eq v1, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq v1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq v1, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq v1, v0, :cond_0

    const/high16 v0, 0x60000

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 856
    :cond_0
    sget v0, Lcom/android/settings/R$string;->screen_pinning_unlock:I

    new-array v1, v4, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    .line 857
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 856
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 851
    :cond_1
    sget v0, Lcom/android/settings/R$string;->screen_pinning_unlock:I

    new-array v1, v4, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    .line 852
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 851
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 859
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 860
    sget v0, Lcom/android/settings/R$string;->screen_pinning_unlock:I

    new-array v1, v4, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_pattern_title:I

    .line 861
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 860
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 864
    :cond_3
    :goto_0
    sget v0, Lcom/android/settings/R$string;->screen_pinning_unlock_none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 284
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ","

    .line 288
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    .line 291
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static hasFMMDMClient(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.android.fmm"

    .line 114
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized hasFingerprintFeature(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Lcom/samsung/android/settings/security/SecurityUtils;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/settings/security/SecurityUtils;->mFeatureChecked:Z

    if-eqz v1, :cond_0

    .line 119
    sget-boolean p0, Lcom/samsung/android/settings/security/SecurityUtils;->mFeatureEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 122
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/samsung/android/settings/security/SecurityUtils;->mFeatureEnabled:Z

    .line 125
    sput-boolean v1, Lcom/samsung/android/settings/security/SecurityUtils;->mFeatureChecked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static hasSamsungPassApplication(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.android.samsungpass"

    .line 148
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.android.authfw"

    .line 144
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBiometricsLockEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 240
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCarmeraDisabledByDPM(Landroid/content/Context;I)Z
    .locals 2

    const/4 p1, 0x0

    const-string v0, "SecurityUtils"

    if-nez p0, :cond_0

    const-string p0, "isCarmeraDisabledByDPM : context is NULL"

    .line 463
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    const-string v1, "device_policy"

    .line 469
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_1

    const-string p0, "isCarmeraDisabledByDPM :  dpm is NULL"

    .line 472
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 474
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result p1

    .line 476
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarmeraDisabledByDPM : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static isDisableScreenForDisplayFingerprint(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "display"

    .line 785
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEnabledSamsungPass(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SecurityUtils"

    const-string v1, "isEnabledSamsungPass : context is NULL"

    .line 606
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 609
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    invoke-static {p0}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isEnrolledFace(Landroid/content/Context;I)Z
    .locals 0

    .line 676
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 677
    invoke-virtual {p0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnrolledFingerprint(Landroid/content/Context;)Z
    .locals 0

    .line 671
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 672
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFaceDisabled(Landroid/content/Context;I)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "SecurityUtils"

    if-nez p0, :cond_0

    const-string p0, "isFaceDisabled : context is NULL"

    .line 437
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 441
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v2

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFaceDisabled by DPM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {p0, p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabledByEDM(Landroid/content/Context;I)Z

    move-result v3

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFaceDisabled by EDM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {p0, p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isCarmeraDisabledByDPM(Landroid/content/Context;I)Z

    move-result p0

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFaceDisabled by Camera : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result p1

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFaceDisabled by UCM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isFaceDisabledByDPM(Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SecurityUtils"

    if-nez p0, :cond_0

    const-string p0, "isFaceDisabledByDPM : context is NULL"

    .line 483
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v2, "device_policy"

    .line 489
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_1

    const-string p0, "isFaceDisabled :  dpm is NULL"

    .line 492
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 494
    invoke-virtual {p0, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    move v0, p0

    .line 497
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isFaceDisabled : disableByFaceFlag : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isFaceDisabled by DPM : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isFaceDisabledByEDM(Landroid/content/Context;I)Z
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 510
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x4

    .line 511
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string p1, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v3, "isBiometricAuthenticationEnabledAsUser"

    .line 512
    invoke-static {p0, p1, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "SecurityUtils"

    const-string p1, "isBiometricAuthenticationEnabled(FACE) == Utils.EDM_FALSE"

    .line 517
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isFingerprintDisabled(Landroid/content/Context;I)Z
    .locals 4

    .line 526
    invoke-static {p0, p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v0

    .line 531
    invoke-static {p0, p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabledByEDM(Landroid/content/Context;I)Z

    move-result p0

    .line 534
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFingerprintDisabled by EDM : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SecurityUtils"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result p1

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFingerprintDisabled by UCM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

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

.method public static isFingerprintDisabledByDPM(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "SecurityUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "isFingerprintDisabled : context is NULL"

    .line 549
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v2, "device_policy"

    .line 555
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_1

    const-string p0, "isFingerprintDisabled : dpm is NULL"

    .line 558
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 560
    invoke-virtual {p0, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    move v1, p0

    .line 563
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isFingerprintDisabled by DPM : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isFingerprintDisabledByEDM(Landroid/content/Context;I)Z
    .locals 5

    const-string v0, "SecurityUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "isFingerprintDisabledByEDM : context is NULL"

    .line 571
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 576
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    const-string v3, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v4, "isBiometricAuthenticationEnabledAsUser"

    .line 578
    invoke-static {p0, v3, v4, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isBiometricAuthenticationEnabled(FINGERPRINT) == Utils.EDM_FALSE"

    .line 583
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p1

    :cond_1
    return v1
.end method

.method public static isLockToAppEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 817
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_to_app_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z
    .locals 3

    .line 298
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 303
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "isNotAvailableBiometricsWithDexAndMultiWindow : isSamsungDexMode is TRUE."

    .line 304
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget p2, Lcom/android/settings/R$string;->biometircs_dex_cant_use_toast:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    .line 310
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isNotAvailableBiometricsWithDexAndMultiWindow : isInMultiWindowMode is TRUE."

    .line 311
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_2
    return v1
.end method

.method public static isSupportBioFace()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportBiometricsFeature(Landroid/content/Context;)Z
    .locals 2

    .line 836
    invoke-static {p0}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public static isSupportFindMyMobileFeature(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "content://com.samsung.android.fmm/fmmsupport"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    const-string v1, "fmmsupport"

    .line 225
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 226
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "SecurityUtils"

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Support FMM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 233
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 234
    throw v0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isSupportLMM(Landroid/content/Context;)Z
    .locals 2

    .line 75
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->checkReactiveService(Landroid/content/Context;)I

    move-result p0

    const-string v0, "Utils"

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const-string p0, "isSupportLMM : TRUE"

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "isSupportLMM : FALSE"

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportLinkingInfo(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 728
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const v0, 0x202fbf00

    const/4 v2, 0x0

    .line 736
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v3, "com.sec.android.diagmonagent"

    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 738
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-nez v2, :cond_1

    return v1

    .line 745
    :cond_1
    iget p0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isSupportSecurityPatchVersionInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isVzwDemoMode(Landroid/content/Context;)Z
    .locals 3

    .line 69
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "verizonwireless_store_demo_mode"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isWinnerProduct()Z
    .locals 2

    const-string v0, "ro.product.device"

    const-string v1, "NONE"

    .line 822
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "winner"

    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeBiometricLock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "lpu is null!"

    .line 355
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 359
    invoke-virtual {p1, p2, v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 360
    invoke-static {p0, p2, p3}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricsLockDBValue(Landroid/content/Context;II)V

    return-void
.end method

.method public static removeBiometricsLockDBValue(Landroid/content/Context;II)V
    .locals 3

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeBiometricsLockDBValue - LockType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "fingerprint_screen_lock"

    invoke-static {v0, v2, v1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_2

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "face_screen_lock"

    invoke-static {p0, p1, v1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    const-string p0, "context is null!"

    .line 419
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBiometricsLock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "lpu is null!"

    .line 333
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 337
    invoke-virtual {p1, p2, v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 338
    invoke-static {p0, p2, p3}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricsLockDBValue(Landroid/content/Context;II)V

    return-void
.end method

.method public static setBiometricsLockDBValue(Landroid/content/Context;II)V
    .locals 3

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBiometricsLockDBValue - LockType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "fingerprint_screen_lock"

    invoke-static {v0, v2, v1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_2

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "face_screen_lock"

    invoke-static {p0, p1, v1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    const-string p0, "context is null!"

    .line 389
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static setDiagnostic(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 681
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->setDiagnostic(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static setDiagnostic(Landroid/content/Context;ZZ)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "SecurityUtils"

    const-string p1, "Cannot proceed setDiagnostic api, context is null"

    .line 686
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 693
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 694
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 695
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 697
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "samsung_errorlog_agree"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "diagnostic_info_changed"

    .line 698
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 700
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLinkingInfo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 701
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "samsung_other_info_agree"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "diagnostic_other_info_changed"

    .line 702
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setLockToAppEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 806
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_to_app_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSplitViewFullScScreen(Landroid/app/Activity;)Z
    .locals 3

    .line 830
    invoke-virtual {p0}, Landroid/app/Activity;->semExitMultiWindowMode()Z

    move-result v0

    .line 831
    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_not_use_multi_window_view:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0
.end method
