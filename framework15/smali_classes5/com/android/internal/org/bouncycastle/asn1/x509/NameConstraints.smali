.class public Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "NameConstraints.java"


# instance fields
.field private blacklist excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

.field private blacklist permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->createArray(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    goto :goto_1

    :pswitch_1
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->createArray(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    nop

    :goto_1
    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    return-void
.end method

.method private static blacklist cloneSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist createArray(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;
    .locals 2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getExcludedSubtrees()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPermittedSubtrees()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
