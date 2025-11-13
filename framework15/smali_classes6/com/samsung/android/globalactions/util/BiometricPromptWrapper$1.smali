.class Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "BiometricPromptWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$RjuCl4rDhLWOPhl2IDfVncTB19c(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;->lambda$onAuthenticationError$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vLHRKE4GT1Aj-vBLXChbrcAxNM8(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;->lambda$onAuthenticationSucceeded$1()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;->this$0:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationError$0()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;->this$0:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-static {v0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->-$$Nest$fgetmFailRunnable(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationSucceeded$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;->this$0:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-static {v0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->-$$Nest$fgetmSuccessRunnable(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public whitelist onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;->this$0:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-static {v0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->-$$Nest$fgetmLogWrapper(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Lcom/samsung/android/globalactions/util/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError() code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricPromptWrapper"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;->this$0:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-static {v0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->-$$Nest$fgetmFailRunnable(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;->this$0:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-static {v0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->-$$Nest$fgetmHandler(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public whitelist onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;->this$0:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-static {v0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->-$$Nest$fgetmSuccessRunnable(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;->this$0:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-static {v0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->-$$Nest$fgetmHandler(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
