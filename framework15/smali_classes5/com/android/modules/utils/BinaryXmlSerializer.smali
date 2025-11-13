.class public Lcom/android/modules/utils/BinaryXmlSerializer;
.super Ljava/lang/Object;
.source "BinaryXmlSerializer.java"

# interfaces
.implements Lcom/android/modules/utils/TypedXmlSerializer;


# static fields
.field static final blacklist ATTRIBUTE:I = 0xf

.field public static final blacklist PROTOCOL_MAGIC_VERSION_0:[B

.field static final blacklist TYPE_BOOLEAN_FALSE:I = 0xd0

.field static final blacklist TYPE_BOOLEAN_TRUE:I = 0xc0

.field static final blacklist TYPE_BYTES_BASE64:I = 0x50

.field static final blacklist TYPE_BYTES_HEX:I = 0x40

.field static final blacklist TYPE_DOUBLE:I = 0xb0

.field static final blacklist TYPE_FLOAT:I = 0xa0

.field static final blacklist TYPE_INT:I = 0x60

.field static final blacklist TYPE_INT_HEX:I = 0x70

.field static final blacklist TYPE_LONG:I = 0x80

.field static final blacklist TYPE_LONG_HEX:I = 0x90

.field static final blacklist TYPE_NULL:I = 0x10

.field static final blacklist TYPE_STRING:I = 0x20

.field static final blacklist TYPE_STRING_INTERNED:I = 0x30


# instance fields
.field private blacklist mOut:Lcom/android/modules/utils/FastDataOutput;

.field private blacklist mTagCount:I

.field private blacklist mTagNames:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/modules/utils/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x58t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    return-void
.end method

.method private static blacklist illegalNamespace()Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Namespaces are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeToken(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    or-int/lit8 v1, p1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    or-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist test-api attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/modules/utils/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public blacklist attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    array-length v0, p3

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeShort(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/modules/utils/FastDataOutput;->write([B)V

    return-object p0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attributeBytesBase64: input size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") exceeds maximum allowed size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist attributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    array-length v0, p3

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeShort(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/modules/utils/FastDataOutput;->write([B)V

    return-object p0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attributeBytesHex: input size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") exceeds maximum allowed size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/modules/utils/FastDataOutput;->writeDouble(D)V

    return-object p0
.end method

.method public blacklist attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/modules/utils/FastDataOutput;->writeFloat(F)V

    return-object p0
.end method

.method public blacklist attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/modules/utils/FastDataOutput;->writeInt(I)V

    return-object p0
.end method

.method public blacklist attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/modules/utils/FastDataOutput;->writeInt(I)V

    return-object p0
.end method

.method public blacklist attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/modules/utils/FastDataOutput;->writeLong(J)V

    return-object p0
.end method

.method public blacklist attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/modules/utils/FastDataOutput;->writeLong(J)V

    return-object p0
.end method

.method public whitelist test-api cdsect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api comment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api docdecl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlSerializer;->flush()V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataOutput;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    return-void
.end method

.method public whitelist test-api endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist test-api entityRef(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataOutput;->flush()V

    :cond_0
    return-void
.end method

.method public whitelist test-api getDepth()I
    .locals 1

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method protected blacklist obtainFastDataOutput(Ljava/io/OutputStream;)Lcom/android/modules/utils/FastDataOutput;
    .locals 1

    invoke-static {p1}, Lcom/android/modules/utils/FastDataOutput;->obtain(Ljava/io/OutputStream;)Lcom/android/modules/utils/FastDataOutput;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->obtainFastDataOutput(Ljava/io/OutputStream;)Lcom/android/modules/utils/FastDataOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    sget-object v1, Lcom/android/modules/utils/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api setOutput(Ljava/io/Writer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    return-void
.end method

.method public whitelist test-api startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    iget v2, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    aput-object p2, v0, v1

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist test-api text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-object p0
.end method

.method public whitelist test-api text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    return-object p0
.end method
