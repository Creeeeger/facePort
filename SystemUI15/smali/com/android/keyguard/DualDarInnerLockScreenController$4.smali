.class public final Lcom/android/keyguard/DualDarInnerLockScreenController$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    iget-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p1, p1, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p2, v0}, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController$4;II)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p1, p1, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p2, p4}, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController$4;II)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final onCancelClicked()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onCancelClicked()V

    :cond_0
    return-void
.end method

.method public final onUserInput()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    :cond_0
    return-void
.end method

.method public final reportUnlockAttempt(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    :cond_0
    return-void
.end method

.method public final userActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method
