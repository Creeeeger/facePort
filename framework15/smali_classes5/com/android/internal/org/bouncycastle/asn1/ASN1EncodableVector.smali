.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
.super Ljava/lang/Object;
.source "ASN1EncodableVector.java"


# static fields
.field private static final blacklist DEFAULT_CAPACITY:I = 0xa

.field static final blacklist EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private blacklist copyOnWrite:Z

.field private blacklist elementCount:I

.field private blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    new-array v0, p1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'initialCapacity\' must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    return-object v0
.end method

.method private blacklist reallocate(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-boolean v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    aput-object p1, v2, v3

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v3, v0

    if-le v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v1, v4

    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    :cond_2
    const/4 v1, 0x0

    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v6, v1

    aput-object v4, v5, v6

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_3

    iput v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return-void

    :cond_4
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "\'other\' elements cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'other\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist copyElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public blacklist get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist size()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return v0
.end method

.method blacklist takeElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    :cond_1
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
