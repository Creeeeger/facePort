.class Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.super Ljava/lang/Object;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;,
        Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist calculateKeyId(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 5

    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    new-array v3, v2, [B

    :try_start_0
    const-string v4, "DER"

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    nop

    array-length v4, v3

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->update([BII)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->doFinal([BI)I

    return-object v1

    :catch_0
    move-exception v4

    new-array v2, v2, [B

    return-object v2
.end method
