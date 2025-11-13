.class public final Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;
.super Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final contentObserver:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;

.field public mActivity:Landroid/app/Activity;

.field public mAlertDialog:Landroid/app/AlertDialog;

.field public final mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceHasSoftKeys:Z

.field public final mDeviceScreenHeight:I

.field public final mEffectiveUserId:I

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public mIsInMultiWindowMode:Z

.field public final mKnoxEventList:Ljava/util/ArrayList;

.field public final mLockEventReceiver:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;

.field public final mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

.field public final mReturnCredentials:Z

.field public mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public mShouldShowForgetOrUninstallButton:I

.field public final mUserId:I

.field public final mUserManager:Landroid/os/UserManager;

.field public mVisibleLayoutBottomMagin:I

.field public final quality:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->NONE:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mVisibleLayoutBottomMagin:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceHasSoftKeys:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    const/16 v2, 0x8

    iput v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mShouldShowForgetOrUninstallButton:I

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V

    iput-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockEventReceiver:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->contentObserver:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mUserId:I

    iput p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    iput-boolean p4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mReturnCredentials:Z

    iput-object p5, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    const-string p2, "device_policy"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo p4, "user"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserManager;

    iput-object p4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo p4, "persona"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string p4, "input_method"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/inputmethod/InputMethodManager;

    iput-object p4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p5

    const-string v2, "android"

    const-string v3, "config_showNavigationBar"

    const-string v5, "bool"

    invoke-virtual {p5, v3, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceHasSoftKeys:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceScreenHeight:I

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v6, Landroid/content/IntentFilter;

    const-string p4, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {v6, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string p4, "KKG::SecureFolderConfirmLockHelper"

    const-string/jumbo p5, "registerContentObserver - 0"

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    const-string v2, "hide_secure_folder_flag"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p5, v2, v1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->getCurrentLockType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintLockSetForUser(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " + fingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x64

    invoke-static {p3, p1}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addStatus(ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Init. KeyguardStoredPasswordQuality = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string/jumbo p2, "none"

    goto :goto_0

    :cond_1
    const/high16 p3, 0x10000

    if-gt p2, p3, :cond_2

    const-string/jumbo p2, "pattern"

    goto :goto_0

    :cond_2
    const/high16 p3, 0x30000

    if-gt p2, p3, :cond_3

    const-string/jumbo p2, "pin"

    goto :goto_0

    :cond_3
    const-string p2, "Password"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", applySecureFolderBackgroundCase = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final applySecureFolderBackgroundCase()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mReturnCredentials:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getCurrentLockType()Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x10000

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x70000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "password"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "pin"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "pattern"

    :goto_0
    return-object p0
.end method

.method public final getDefaultDetails()I
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v5, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaUserHasBeenShutdownBefore(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v3

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintLockSetForUser(Landroid/content/Context;I)Z

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintLockSetForUser(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v6

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_6

    move v6, v3

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v9, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_5
    const/high16 v1, 0x10000

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    if-eq p0, v1, :cond_14

    const/high16 v1, 0x20000

    if-eq p0, v1, :cond_e

    const/high16 v1, 0x30000

    if-eq p0, v1, :cond_e

    const/high16 v1, 0x40000

    if-eq p0, v1, :cond_8

    const/high16 v1, 0x50000

    if-eq p0, v1, :cond_8

    const/high16 v1, 0x60000

    if-eq p0, v1, :cond_8

    const/high16 v1, 0x70000

    if-eq p0, v1, :cond_e

    const/high16 v1, 0x80000

    if-eq p0, v1, :cond_8

    return v2

    :cond_8
    if-eqz v0, :cond_c

    if-eqz v5, :cond_c

    if-nez v4, :cond_b

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v6, :cond_a

    const p0, 0x7f142361

    goto :goto_7

    :cond_a
    const p0, 0x7f14209d

    goto :goto_7

    :cond_b
    :goto_6
    const p0, 0x7f1424d3

    goto :goto_7

    :cond_c
    if-eqz v7, :cond_d

    const p0, 0x7f142360

    goto :goto_7

    :cond_d
    const p0, 0x7f142288

    :goto_7
    return p0

    :cond_e
    if-eqz v0, :cond_12

    if-eqz v5, :cond_12

    if-nez v4, :cond_11

    if-nez v3, :cond_f

    goto :goto_8

    :cond_f
    if-eqz v6, :cond_10

    const p0, 0x7f142363

    goto :goto_9

    :cond_10
    const p0, 0x7f14209f

    goto :goto_9

    :cond_11
    :goto_8
    const p0, 0x7f1424d5

    goto :goto_9

    :cond_12
    if-eqz v7, :cond_13

    const p0, 0x7f142362

    goto :goto_9

    :cond_13
    const p0, 0x7f14228d

    :goto_9
    return p0

    :cond_14
    if-eqz v0, :cond_18

    if-eqz v5, :cond_18

    if-nez v4, :cond_17

    if-nez v3, :cond_15

    goto :goto_a

    :cond_15
    if-eqz v6, :cond_16

    const p0, 0x7f14232f

    goto :goto_b

    :cond_16
    const p0, 0x7f14209e

    goto :goto_b

    :cond_17
    :goto_a
    const p0, 0x7f1424d4

    goto :goto_b

    :cond_18
    if-eqz v7, :cond_19

    const p0, 0x7f140d76

    goto :goto_b

    :cond_19
    const p0, 0x7f141613

    :goto_b
    return p0
.end method

.method public final getDefaultHeader(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const p1, 0x7f14290b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const p1, 0x7f14290d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getErrorMessage()I
    .locals 1

    const/high16 v0, 0x10000

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_0

    const p0, 0x7f142517

    goto :goto_0

    :cond_0
    const p0, 0x7f140b19

    goto :goto_0

    :cond_1
    const p0, 0x7f140b1b

    goto :goto_0

    :cond_2
    const p0, 0x7f140b1a

    :goto_0
    return p0
.end method

.method public final hideSoftInputIfNeeded(Landroid/widget/ImeAwareEditText;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public final interceptAuthenticationSucceededIfNeeded(ZZ)Z
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final interceptUpdateErrorMessageIfNeeded(I)V
    .locals 1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->showSFLockedView(ZZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isInLandscapeMode()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final needToUpdateErrorMessage(ILandroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    if-lt p1, v0, :cond_3

    rsub-int/lit8 p1, p1, 0xf

    const/high16 v0, 0x10000

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    if-eq v1, v0, :cond_2

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

    const/high16 v0, 0x70000

    if-eq v1, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120044

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120046

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120045

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "show_forget_or_uninstall_button"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mShouldShowForgetOrUninstallButton:I

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->semSetRoundedCorners(I)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockEventReceiver:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->contentObserver:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->contentObserver:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->stopListener()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onSavedInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    :goto_0
    const-string/jumbo v1, "show_forget_or_uninstall_button"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->onSaveInstanceStateCallback()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public final removeGlobalLayoutListenerIfRequired()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;->stopListener()V

    :cond_0
    return-void
.end method

.method public final reportFailedAttempt(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;)Z
    .locals 0

    const-string p1, "KKG::SecureFolderConfirmLockHelper"

    const-string/jumbo p2, "reportFailedAttempt"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final reportSuccessfulAttempt()V
    .locals 3

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    const-string/jumbo v1, "reportSuccessfulAttempt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->getCurrentLockType()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x64

    const/16 v2, 0x3e8

    invoke-static {v1, v2, p0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setBiometricLockoutDeadline(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    return-void
.end method

.method public final setCredentialCheckResultTrackerIfNeeded(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setKnoxLogo(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0845

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const v0, 0x7f0a0842

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSecureFolderLogo(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenHeight(Landroid/content/Context;)I

    move-result v0

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0843

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceScreenHeight:I

    if-nez v0, :cond_2

    int-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    double-to-int p0, v0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    int-to-double v0, p0

    const-wide v2, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v0, v2

    double-to-int p0, v0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenHeight(Landroid/content/Context;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3fb70a3d70a3d70aL    # 0.09

    mul-double/2addr v0, v2

    double-to-int p0, v0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_5
    :goto_0
    return-void
.end method

.method public final setPasswordEntry(Landroid/widget/ImeAwareEditText;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x800013

    invoke-virtual {p1, v0}, Landroid/widget/ImeAwareEditText;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/widget/ImeAwareEditText;->setPadding(IIII)V

    return-void
.end method

.method public final setPatternColor(Lcom/android/internal/widget/LockPatternView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060b84

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060a6f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/high16 v1, -0x10000

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    return-void
.end method

.method public final setShowPwdImgColor(Landroid/widget/ImageButton;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0809e6

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0809e5

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060b84

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    const/4 p2, 0x3

    invoke-static {p0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/ImageButton;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    goto :goto_1

    :cond_2
    const-string p0, "KKG::SecureFolderConfirmLockHelper"

    const-string p1, "Password show drawable is null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public final setWorkChallengeBackgroundIfNeeded(Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0a0102

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    const v1, 0x7f0a0849

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v0, 0x7f0a084c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result v0

    iget-boolean v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceHasSoftKeys:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFoldableProduct()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_8
    :goto_4
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    if-eqz p2, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-nez v1, :cond_9

    invoke-virtual {p2, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p2, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p2, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x300

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_9
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-boolean v1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "Debug mode enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2000

    invoke-virtual {p2, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_a
    const p2, 0x7f0a0170

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result p2

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_b

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0809df

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_5

    :cond_b
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0809e0

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Display rotation : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "actvity width : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "activity height : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenHeight(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Device screen width : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Device screen height : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "samsungaccount"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Samsung account : "

    invoke-static {v1, p1, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p1

    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->hasSamsungAccount(Landroid/content/Context;)Z

    move-result v3

    sget-object v4, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result v3

    sget-object v5, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-eqz v3, :cond_e

    const/16 v3, 0xf

    if-lt p1, v3, :cond_e

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSAccountLock(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_d
    move-object v5, v4

    goto :goto_6

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSAccountLock(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_6

    :cond_f
    sget-object v5, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    goto :goto_6

    :cond_10
    move-object v5, v1

    :goto_6
    iput-object v5, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "initLockState : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-eq p1, v1, :cond_11

    if-ne p1, v4, :cond_12

    :cond_11
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->showSFLockedView(ZZ)V

    :cond_12
    return-void
.end method

.method public final showSFLockedView(ZZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.knox.SecureFolderLockedView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "fromResetBtn"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "wasLastAttempt"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "userId"

    iget p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception24 : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->applySecureFolderBackgroundCase()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "mIsInMultiWindowMode : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {p2, p3, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/high16 p2, 0x10000

    const/4 p3, 0x0

    const v1, 0x7f0a106f

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->quality:I

    if-eq v3, p2, :cond_7

    const/high16 p2, 0x20000

    if-eq v3, p2, :cond_1

    const/high16 p2, 0x30000

    if-eq v3, p2, :cond_1

    const/high16 p2, 0x40000

    if-eq v3, p2, :cond_1

    const/high16 p2, 0x50000

    if-eq v3, p2, :cond_1

    const/high16 p2, 0x60000

    if-eq v3, p2, :cond_1

    const/high16 p2, 0x70000

    if-eq v3, p2, :cond_1

    const/high16 p2, 0x80000

    if-eq v3, p2, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz p2, :cond_2

    const p2, 0x7f0d0869

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_2
    const p2, 0x7f0d0868

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->setKnoxLogo(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, p2, p3, v1, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFoldableProduct()Z

    move-result p1

    const p2, 0x7f0a0b23

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez p1, :cond_4

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result p2

    int-to-double p2, p2

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr p2, v3

    double-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result p2

    int-to-double p2, p2

    const-wide v3, 0x3fd999999999999aL    # 0.4

    mul-double/2addr p2, v3

    double-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_5
    :goto_2
    const p1, 0x7f0a0b2d

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f071218

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_6
    new-instance p1, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;

    invoke-direct {p1, p0, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mPasswordViewLayoutListener:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$PasswordViewLayoutListener;

    const-string p2, "Start layout listener"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_6

    :cond_7
    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz p2, :cond_8

    const p2, 0x7f0d086f

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_3
    move-object v2, p1

    goto :goto_4

    :cond_8
    const p2, 0x7f0d086e

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :goto_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->setKnoxLogo(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->isInLandscapeMode()Z

    move-result p1

    if-eqz p1, :cond_c

    const p1, 0x7f0a0b33

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704b1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mDeviceHasSoftKeys:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v0

    goto :goto_5

    :cond_a
    move v0, p3

    :goto_5
    add-int/2addr p2, v0

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_6

    :cond_b
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_6

    :cond_c
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_d
    :goto_6
    if-nez v2, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mEffectiveUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_13

    const p1, 0x7f0a0280

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p3, Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p2, p1}, Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    iget-object p1, p3, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    if-nez p1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget-object p1, p3, Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p3, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    const/high16 p2, 0x10000

    if-eq p1, p2, :cond_12

    const/high16 p2, 0x20000

    if-eq p1, p2, :cond_11

    const/high16 p2, 0x30000

    if-eq p1, p2, :cond_11

    const/high16 p2, 0x40000

    if-eq p1, p2, :cond_10

    const/high16 p2, 0x50000

    if-eq p1, p2, :cond_10

    const/high16 p2, 0x60000

    if-eq p1, p2, :cond_10

    const/high16 p2, 0x70000

    if-eq p1, p2, :cond_11

    const/high16 p2, 0x80000

    if-eq p1, p2, :cond_10

    goto :goto_7

    :cond_10
    iget-object p1, p3, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    iget-object p2, p3, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f141012

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_11
    iget-object p1, p3, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    iget-object p2, p3, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f141018

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_12
    iget-object p1, p3, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    iget-object p2, p3, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f141016

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    iget p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mShouldShowForgetOrUninstallButton:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    new-instance p2, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;I)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_13
    const p1, 0x7f0a0e27

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p3, Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p2, p1}, Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object p3, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    iget p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mShouldShowForgetOrUninstallButton:I

    invoke-virtual {p3, p1}, Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->mResetOrUninstallButton:Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;

    new-instance p2, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;I)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8
    return-object v2
.end method

.method public final updateStageNeedToUnlock(Landroid/widget/TextView;)V
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f14290c

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
