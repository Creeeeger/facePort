.class public Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private final blacklist mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

.field private final blacklist mFingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method


# virtual methods
.method public whitelist getCryptoObject()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    return-object v0
.end method

.method public blacklist getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method
