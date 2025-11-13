.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IIJ)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->$r8$lambda$re2OIhZhT3WcBVFe7zg-ww4Tc04(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;Landroid/content/Intent;IIJ)V

    return-void
.end method
