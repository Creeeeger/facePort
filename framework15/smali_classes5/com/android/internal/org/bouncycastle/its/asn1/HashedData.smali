.class public Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "HashedData.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private blacklist hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public blacklist getHashData()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public blacklist setHashData(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
