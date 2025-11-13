.class public final Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$1;->this$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUnlockedChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$1;->this$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->access$000(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;->setVisibility(I)V

    :cond_0
    return-void
.end method
