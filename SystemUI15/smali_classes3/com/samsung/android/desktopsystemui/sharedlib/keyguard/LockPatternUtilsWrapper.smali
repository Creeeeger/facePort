.class public Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BIOMETRIC_TYPE_ALL:I = 0x101

.field public static final BIOMETRIC_TYPE_FACE:I = 0x100

.field public static final BIOMETRIC_TYPE_FINGERPRINT:I = 0x1

.field public static final BIOMETRIC_TYPE_NONE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public getBiometricType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result p0

    return p0
.end method

.method public getPasswordHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPinLength()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getPinLength(I)I

    move-result p0

    return p0
.end method

.method public getPowerButtonInstantlyLocks()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result p0

    return p0
.end method

.method public isAutoPinConfirmEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isLockScreenDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    return p0
.end method

.method public isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isVisiblePatternEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/keyguard/LockPatternUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result p0

    return p0
.end method
