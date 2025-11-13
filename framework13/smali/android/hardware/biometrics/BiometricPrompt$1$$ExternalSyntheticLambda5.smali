.class public final synthetic Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:[B

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt$1;I[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    iput p2, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;->f$2:[B

    iput p4, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    iget v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;->f$2:[B

    iget v3, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onSemAuthenticationSucceeded$6$android-hardware-biometrics-BiometricPrompt$1(I[BI)V

    return-void
.end method
