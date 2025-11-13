.class public final Lcom/android/settings/password/BiometricFragment$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/password/BiometricFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    iget-object v0, v0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/password/BiometricFragment$1;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->cleanup()V

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    iget-object v0, v0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/BiometricFragment$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    iget-object v0, v0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/password/BiometricFragment$1;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->cleanup()V

    return-void
.end method

.method public final onSystemEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    iget-object v0, v0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/BiometricFragment$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
