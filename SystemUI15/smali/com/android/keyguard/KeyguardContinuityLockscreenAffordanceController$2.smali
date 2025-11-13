.class public final Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;->this$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;->this$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, v1, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mForceIsDismissible:Z

    if-eqz p1, :cond_0

    iget-object p1, v1, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v1, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->access$200(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;->setVisibility(I)V

    invoke-static {v1}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->access$300(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    new-instance v0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->access$400(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;->setVisibility(I)V

    :goto_0
    return-void
.end method
