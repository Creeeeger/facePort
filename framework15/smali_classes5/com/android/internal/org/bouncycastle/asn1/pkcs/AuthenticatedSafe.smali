.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "AuthenticatedSafe.java"


# instance fields
.field private blacklist info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private blacklist isBer:Z


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-void
.end method

.method private blacklist copy([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .locals 2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getContentInfo()[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
