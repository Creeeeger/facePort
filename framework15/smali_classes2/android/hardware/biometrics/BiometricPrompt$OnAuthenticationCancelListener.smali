.class Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field private final blacklist mAuthRequestId:J

.field final synthetic blacklist this$0:Landroid/hardware/biometrics/BiometricPrompt;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->mAuthRequestId:J

    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;)Z

    move-result v0

    const-string v1, "BiometricPrompt"

    if-nez v0, :cond_0

    const-string v0, "BP is not showing"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel BP authentication requested for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->mAuthRequestId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    iget-wide v1, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->mAuthRequestId:J

    invoke-static {v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$mcancelAuthentication(Landroid/hardware/biometrics/BiometricPrompt;J)V

    return-void
.end method
