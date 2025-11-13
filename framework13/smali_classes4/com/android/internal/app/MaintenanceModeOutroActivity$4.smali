.class Lcom/android/internal/app/MaintenanceModeOutroActivity$4;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "MaintenanceModeOutroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MaintenanceModeOutroActivity;->confirmSecureLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/MaintenanceModeOutroActivity;

    .line 189
    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onAuthenticationSucceeded$0$com-android-internal-app-MaintenanceModeOutroActivity$4()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$mexitMaintenanceMode(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    .line 202
    return-void
.end method

.method public whitelist onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 192
    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 193
    return-void
.end method

.method public whitelist onAuthenticationFailed()V
    .locals 0

    .line 207
    invoke-super {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    .line 208
    return-void
.end method

.method public whitelist onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    .line 198
    invoke-super {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$fgetmExitButton(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 200
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/app/MaintenanceModeOutroActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    return-void
.end method
