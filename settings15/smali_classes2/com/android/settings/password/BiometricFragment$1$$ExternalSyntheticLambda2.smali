.class public final synthetic Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/BiometricFragment$1;

.field public final synthetic f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/BiometricFragment$1;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    iput-object p2, p0, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    iget-object v0, v0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    iget-object v0, v0, Lcom/android/settings/password/BiometricFragment;->mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
