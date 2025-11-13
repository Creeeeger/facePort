.class public Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PsidSspRange.java"


# instance fields
.field private blacklist psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v4, 0x2

    if-gt v2, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    :cond_3
    return-object v1

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "expected sequences with one or optionally two items"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist getPsid()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSspRange()Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    return-object v0
.end method

.method public blacklist setPsid(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public blacklist setSspRange(Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    return-void
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->psid:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lcom/android/internal/org/bouncycastle/its/asn1/SspRange;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
