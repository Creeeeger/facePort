.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iput-wide p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IIJ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda2;->f$1:J

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->$r8$lambda$lKwpi-3ypsCl1-InpqbXAlPlF5M(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;JIIJ)V

    return-void
.end method
