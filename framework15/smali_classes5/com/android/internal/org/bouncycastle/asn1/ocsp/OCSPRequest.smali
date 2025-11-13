.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "OCSPRequest.java"


# instance fields
.field blacklist optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

.field blacklist tbsRequest:Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    nop

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;
    .locals 2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getOptionalSignature()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    return-object v0
.end method

.method public blacklist getTbsRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
