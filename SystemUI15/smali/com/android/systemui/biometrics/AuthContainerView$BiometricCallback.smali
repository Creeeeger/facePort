.class final Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthContainerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticated()V
    .locals 2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    return-void
.end method

.method public final onAuthenticatedAndConfirmed()V
    .locals 2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    return-void
.end method

.method public final onButtonNegative()V
    .locals 2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    return-void
.end method

.method public final onButtonTryAgain()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFailedModalities:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    iget-wide v1, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/biometrics/AuthController;->getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object p0

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    const-string p0, "Skip onTryAgainPressed"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onTryAgainPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when handling try again"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onContentViewMoreOptionsButtonPressed()V
    .locals 2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    return-void
.end method

.method public final onError()V
    .locals 2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    return-void
.end method

.method public final onStartDelayedFingerprintSensor()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    iget-wide v1, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/biometrics/AuthController;->getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object p0

    const-string v0, "AuthController"

    if-nez p0, :cond_0

    const-string p0, "onStartUdfpsNow: Receiver is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onStartFingerprintNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when sending onDialogAnimatedIn"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onUseDeviceCredential()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    iget-wide v2, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/biometrics/AuthController;->getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v0

    const-string v1, "AuthController"

    if-nez v0, :cond_0

    const-string v0, "Skip onDeviceCredentialPressed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDeviceCredentialPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "RemoteException when handling credential button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->addCredentialView(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const v0, 0x8000

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    return-void
.end method

.method public final onUserCanceled()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->sendEarlyUserCanceled()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    return-void
.end method
