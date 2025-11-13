.class public final synthetic Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IIJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;->onChallengeGenerated(IJ)V

    return-void
.end method
