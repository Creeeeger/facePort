.class public final Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mProfileChallengeUserId:I

.field public final mUm:Landroid/os/UserManager;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mUserId:I

    iput-object p1, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mUm:Landroid/os/UserManager;

    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProviderImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mProfileChallengeUserId:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getQuietModeDialogIntent()Landroid/content/Intent;
    .locals 2

    const/16 v0, -0x2710

    iget v1, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mProfileChallengeUserId:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mUm:Landroid/os/UserManager;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v1}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSummary(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mProfileChallengeUserId:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f14281b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f14281c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_5

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_4

    const/high16 v0, 0x30000

    if-eq p1, v0, :cond_4

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_4

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_3

    move-object p1, v1

    goto :goto_1

    :cond_3
    const p1, 0x7f14281d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_4
    const p1, 0x7f14281f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_5
    const p1, 0x7f14281e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    return-object v1
.end method
