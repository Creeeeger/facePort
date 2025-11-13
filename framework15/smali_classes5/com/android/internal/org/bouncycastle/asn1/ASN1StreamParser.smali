.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final blacklist _in:Ljava/io/InputStream;

.field private final blacklist _limit:I

.field private final blacklist tmpBuffers:[[B


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private blacklist set00Check(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method blacklist readImplicit(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSetParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSetParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :cond_2
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_5
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object v0

    :goto_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v1, "implicit tagging not implemented"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method blacklist readIndef(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_3
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/4 v7, 0x4

    if-eq v2, v7, :cond_2

    const/16 v7, 0x10

    if-eq v2, v7, :cond_2

    const/16 v7, 0x11

    if-eq v2, v7, :cond_2

    const/16 v7, 0x8

    if-ne v2, v7, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    invoke-static {v5, v6, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v1

    if-gez v1, :cond_7

    if-eqz v3, :cond_6

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v6, v5, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_4

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v4, v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v4

    :cond_4
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_5

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v4, v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v7

    :cond_5
    invoke-virtual {v6, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    return-object v4

    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "indefinite-length primitive encoding encountered"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v4, v5, v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_8

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DLApplicationSpecific;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v3, v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/DLApplicationSpecific;-><init>(ZI[B)V

    return-object v5

    :cond_8
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_9

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v3, v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    :cond_9
    if-eqz v3, :cond_a

    sparse-switch v2, :sswitch_data_0

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " encountered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_0
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DLSetParser;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/DLSetParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    :sswitch_1
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    :sswitch_2
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    :sswitch_3
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    :cond_a
    packed-switch v2, :pswitch_data_0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :pswitch_0
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v5, v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object v5

    :goto_1
    :try_start_1
    invoke-static {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception v5

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string v7, "corrupted stream detected"

    invoke-direct {v6, v7, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method blacklist readTaggedObject(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {v2, v3, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {v2, v3, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    return-object v2
.end method

.method blacklist readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :cond_1
    instance-of v2, v0, Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_1

    return-object v1
.end method
