.class public Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Holder.java"


# static fields
.field public static final blacklist V1_CERTIFICATE_HOLDER:I = 0x0

.field public static final blacklist V2_CERTIFICATE_HOLDER:I = 0x1


# instance fields
.field blacklist baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

.field blacklist entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

.field blacklist objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

.field private blacklist version:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    nop

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown tag in Holder"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    goto :goto_1

    :pswitch_1
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_1

    :pswitch_2
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    nop

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;
    .locals 2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public blacklist getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public blacklist getVersion()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->version:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v3, v1, v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v3, v1, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, v2, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
