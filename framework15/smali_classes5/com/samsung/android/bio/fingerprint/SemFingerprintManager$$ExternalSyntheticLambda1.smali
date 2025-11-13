.class public final synthetic Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iput-wide p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget-wide v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->$r8$lambda$T9cuL_oSTC9K0-Epq5iU7X7-UG4(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;J)V

    return-void
.end method
