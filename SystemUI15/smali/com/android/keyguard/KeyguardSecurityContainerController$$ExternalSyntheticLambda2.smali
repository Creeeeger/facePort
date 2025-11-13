.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field public final synthetic f$1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    return-void
.end method


# virtual methods
.method public final onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardInputViewController;->onResume(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->show(Lcom/android/keyguard/KeyguardInputViewController;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->configureMode()V

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->onSecurityModeChanged(Z)V

    return-void
.end method
