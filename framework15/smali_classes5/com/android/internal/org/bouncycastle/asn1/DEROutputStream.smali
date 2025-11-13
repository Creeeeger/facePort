.class public Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
.source "DEROutputStream.java"


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method blacklist getDERSubStream()Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
    .locals 0

    return-object p0
.end method

.method blacklist getDLSubStream()Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .locals 0

    return-object p0
.end method

.method blacklist writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method
