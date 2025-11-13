.class public final synthetic Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

.field public final synthetic blacklist f$1:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->lambda$handleDefaultError$1$com-samsung-android-bio-fingerprint-SemFingerprintManager(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    return-void
.end method
