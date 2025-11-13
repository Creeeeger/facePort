.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "RSAPrivateKey.java"


# instance fields
.field private blacklist coefficient:Ljava/math/BigInteger;

.field private blacklist exponent1:Ljava/math/BigInteger;

.field private blacklist exponent2:Ljava/math/BigInteger;

.field private blacklist modulus:Ljava/math/BigInteger;

.field private blacklist otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field private blacklist prime1:Ljava/math/BigInteger;

.field private blacklist prime2:Ljava/math/BigInteger;

.field private blacklist privateExponent:Ljava/math/BigInteger;

.field private blacklist publicExponent:Ljava/math/BigInteger;

.field private blacklist version:Ljava/math/BigInteger;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "wrong version for RSA private key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    .locals 2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCoefficient()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getExponent1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getExponent2()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPrime1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPrime2()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getVersion()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
