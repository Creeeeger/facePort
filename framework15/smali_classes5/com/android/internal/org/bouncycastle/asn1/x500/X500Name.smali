.class public Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X500Name.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field private static blacklist defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# instance fields
.field private blacklist hashCodeValue:I

.field private blacklist isHashCodeCalculated:Z

.field private blacklist rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

.field private blacklist rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

.field private blacklist style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    if-ne v4, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    and-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    move v1, v6

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->convert(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    :goto_2
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>([Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {p2}, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V

    return-void
.end method

.method public static blacklist getDefaultStyle()Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 2

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist setDefaultStyle(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)V
    .locals 2

    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set style to null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-object v4, p1

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-interface {v0, p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v2
.end method

.method public blacklist getAttributeTypes()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->collectAttributeTypes([Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public blacklist getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-virtual {v0}, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    return-object v0
.end method

.method public blacklist getRDNs(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->containsAttributeType(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    aput-object v3, v0, v1

    move v1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    new-array v2, v1, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    :cond_2
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
