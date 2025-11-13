.class public final Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static singleInstance:Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;


# instance fields
.field public activity:Landroid/app/Activity;

.field public callback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public mClientExecutor:Ljava/util/concurrent/Executor;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mUserId:I


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onAuthenticationError error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KKG::TwoStepAuthenticationCallback"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/knox/TwoStepAuthenticationCallback;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSystemEvent(I)V
    .locals 1

    const-string p0, "SystemEvent: "

    const-string v0, "KKG::TwoStepAuthenticationCallback"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
