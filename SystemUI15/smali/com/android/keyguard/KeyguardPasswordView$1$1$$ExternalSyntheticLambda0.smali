.class public final synthetic Lcom/android/keyguard/KeyguardPasswordView$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPasswordView$1$1;

.field public final synthetic f$1:Landroid/view/WindowInsetsAnimationController;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPasswordView$1$1;Landroid/view/WindowInsetsAnimationController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardPasswordView$1$1;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$1$1$$ExternalSyntheticLambda0;->f$1:Landroid/view/WindowInsetsAnimationController;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardPasswordView$1$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardPasswordView$1$1;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$1$1$$ExternalSyntheticLambda0;->f$1:Landroid/view/WindowInsetsAnimationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView$1$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "KeyguardPasswordView#onAnimationEnd"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardPasswordView$1$1;->this$1:Lcom/android/keyguard/KeyguardPasswordView$1;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputView;->mOnFinishImeAnimationRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iput-object v3, v1, Lcom/android/keyguard/KeyguardInputView;->mOnFinishImeAnimationRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardPasswordView$1$1;->this$1:Lcom/android/keyguard/KeyguardPasswordView$1;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iput-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearAnimationListener:Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
