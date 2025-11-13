.class public final synthetic Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/DualDarKeyguardSecurityCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    return-void
.end method


# virtual methods
.method public final onSecurityModeChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->startLockIconAnimation(Z)V

    :cond_1
    return-void
.end method
