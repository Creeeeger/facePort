.class public Lcom/android/internal/org/bouncycastle/asn1/DERInteger;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
.source "DERInteger.java"


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-void
.end method
