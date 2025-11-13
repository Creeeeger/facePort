.class public final Lcom/android/settings/security/SecurityFeatureProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;


# virtual methods
.method public final getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public final getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/security/trustagent/TrustAgentManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    return-object p0
.end method
