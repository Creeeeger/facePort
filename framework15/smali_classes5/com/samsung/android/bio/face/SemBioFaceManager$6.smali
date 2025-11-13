.class Lcom/samsung/android/bio/face/SemBioFaceManager$6;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;->biometricPromptForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 2529
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 2532
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2533
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2800(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 2535
    :cond_0
    return-void
.end method

.method public whitelist onAuthenticationFailed()V
    .locals 1

    .line 2558
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2559
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 2561
    :cond_0
    return-void
.end method

.method public whitelist onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 2539
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2900(I)I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 2542
    :cond_0
    return-void
.end method

.method public whitelist onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 10
    .param p1, "bpResult"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    .line 2546
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->semGetToken()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->access$2500(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;[B)V

    .line 2549
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2550
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$6;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 2551
    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v2

    new-instance v9, Lcom/samsung/android/bio/face/SemBioFace;

    const/4 v5, 0x0

    .line 2552
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getBiometricId()I

    move-result v6

    const-wide/16 v7, 0x0

    const-string v4, ""

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-direct {v1, v2, v9}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/SemBioFace;)V

    .line 2550
    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    .line 2554
    :cond_1
    return-void
.end method
