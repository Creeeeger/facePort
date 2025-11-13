.class public Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DirectoryString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private blacklist string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DERT61String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;
    .locals 3

    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERT61String;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method


# virtual methods
.method public blacklist getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
