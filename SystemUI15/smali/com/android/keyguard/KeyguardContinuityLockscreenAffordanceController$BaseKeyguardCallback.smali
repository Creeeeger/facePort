.class public Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;->this$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForceIsDismissibleChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;->this$0:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mForceIsDismissible:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onForceIsDismissibleChanged : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mForceIsDismissible:Z

    const-string v1, "KeyguardContinuityLockscreenAffordanceController"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mForceIsDismissible:Z

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->access$100(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->updateLayout$2()V

    :goto_0
    return-void
.end method
