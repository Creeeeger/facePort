.class public Lcom/samsung/android/widget/SemLockPatternUtils;
.super Ljava/lang/Object;
.source "SemLockPatternUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemLockPatternUtils"


# instance fields
.field private blacklist mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private blacklist createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCredential : wrong credential type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemLockPatternUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createSmartcardPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public whitelist clearEncryptionPassword()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    return-void
.end method

.method public blacklist clearLock(Ljava/lang/String;I)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    nop

    return v3

    :catch_0
    move-exception v4

    const-string v5, "SemLockPatternUtils"

    const-string v6, "clearLock : catch exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return v5
.end method

.method public blacklist getBiometricTypeForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    return v0
.end method

.method public blacklist getCredentialTypeForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    return v0
.end method

.method public blacklist getDeviceOwnerInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyguardStoredPasswordQuality(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLockoutAttemptDeadline(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getLockoutAttemptTimeout(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptTimeout(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getOwnerInfo(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStrongAuthForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method public whitelist isCarrierLockEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFmmLockEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isKnoxguardLockEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxguardLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isLockScreenDisabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isRemoteMobileManagerLockEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isSecure(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public blacklist setDeviceOwnerInfo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setDeviceOwnerInfo(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setLockCredential(Ljava/lang/String;ILjava/lang/String;II)Z
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1, v0, p5}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    nop

    return v2

    :catch_0
    move-exception v3

    const-string v4, "SemLockPatternUtils"

    const-string v5, "setLockCredential : catch exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    return v4
.end method

.method public whitelist setLockScreenDisabled(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    return-void
.end method

.method public blacklist setOwnerInfo(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setOwnerInfoEnabled(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    return-void
.end method

.method public blacklist verifyCredential(Ljava/lang/String;I)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemLockPatternUtils;->createCredential(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    const-string v3, "SemLockPatternUtils"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v2, "verifyCredential : credential is none."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1, p2, v4}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyCredential : return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_1
    nop

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    const-string v5, "verifyCredential : catch exception"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method
