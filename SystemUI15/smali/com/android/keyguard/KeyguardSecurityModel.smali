.class public final Lcom/android/keyguard/KeyguardSecurityModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIsPukScreenAvailable:Z

.field public mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1110192

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mIsPukScreenAvailable:Z

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 8

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAdminLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->AdminLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isActiveDismissAction()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mIsPukScreenAvailable:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_1
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    if-eqz v2, :cond_6

    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v5, v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "telephony_subscription_service"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v1, v6

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_7
    :goto_2
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFMMLock()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_8
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemoteLockType()I

    move-result v1

    if-eq v1, v4, :cond_a

    if-eq v1, v3, :cond_9

    goto :goto_3

    :cond_9
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_a
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_b
    :goto_3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCarrierLock()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_c
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isPermanentLock()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Permanent:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_d
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isShownSwipeBouncer()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_e
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecurityModel;I)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_14

    const/high16 p1, 0x10000

    if-eq p0, p1, :cond_13

    const/high16 p1, 0x20000

    if-eq p0, p1, :cond_12

    const/high16 p1, 0x30000

    if-eq p0, p1, :cond_12

    const/high16 p1, 0x40000

    if-eq p0, p1, :cond_11

    const/high16 p1, 0x50000

    if-eq p0, p1, :cond_11

    const/high16 p1, 0x60000

    if-eq p0, p1, :cond_11

    const/high16 p1, 0x70000

    if-eq p0, p1, :cond_10

    const/high16 p1, 0x80000

    if-ne p0, p1, :cond_f

    goto :goto_4

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown security quality:"

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_11
    :goto_4
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_12
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_13
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_14
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method
