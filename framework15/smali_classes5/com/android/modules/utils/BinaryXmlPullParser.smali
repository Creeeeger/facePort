.class public Lcom/android/modules/utils/BinaryXmlPullParser;
.super Ljava/lang/Object;
.source "BinaryXmlPullParser.java"

# interfaces
.implements Lcom/android/modules/utils/TypedXmlPullParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;
    }
.end annotation


# static fields
.field private static final blacklist HEX_DIGITS:[C


# instance fields
.field private blacklist mAttributeCount:I

.field private blacklist mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

.field private blacklist mCurrentDepth:I

.field private blacklist mCurrentName:Ljava/lang/String;

.field private blacklist mCurrentText:Ljava/lang/String;

.field private blacklist mCurrentToken:I

.field private blacklist mIn:Lcom/android/modules/utils/FastDataInput;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/modules/utils/BinaryXmlPullParser;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    return-void
.end method

.method static blacklist bytesToHexString([B)Ljava/lang/String;
    .locals 8

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p0, v3

    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/android/modules/utils/BinaryXmlPullParser;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/android/modules/utils/BinaryXmlPullParser;->HEX_DIGITS:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private blacklist consumeAdditionalText()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_1
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist consumeToken()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    and-int/lit16 v2, v0, 0xf0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->obtainAttribute()Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    move-result-object v3

    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    iput v2, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v2, :sswitch_data_0

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected data type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_0
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueDouble:D

    goto/16 :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readFloat()F

    move-result v4

    iput v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueFloat:F

    goto/16 :goto_0

    :sswitch_2
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueLong:J

    goto/16 :goto_0

    :sswitch_3
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueInt:I

    goto/16 :goto_0

    :sswitch_4
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readUnsignedShort()I

    move-result v4

    new-array v5, v4, [B

    iget-object v6, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v6, v5}, Lcom/android/modules/utils/FastDataInput;->readFully([B)V

    iput-object v5, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueBytes:[B

    goto/16 :goto_0

    :sswitch_5
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v3}, Lcom/android/modules/utils/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/modules/utils/BinaryXmlPullParser;->resolveEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_0

    :pswitch_3
    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v3}, Lcom/android/modules/utils/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_0

    :pswitch_5
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_0

    :pswitch_6
    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_0

    :pswitch_7
    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_7
        0x20 -> :sswitch_6
        0x30 -> :sswitch_5
        0x40 -> :sswitch_4
        0x50 -> :sswitch_4
        0x60 -> :sswitch_3
        0x70 -> :sswitch_3
        0x80 -> :sswitch_2
        0x90 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xb0 -> :sswitch_0
        0xc0 -> :sswitch_7
        0xd0 -> :sswitch_7
    .end sparse-switch
.end method

.method static blacklist hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/modules/utils/BinaryXmlPullParser;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hex length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist illegalNamespace()Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Namespaces are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist obtainAttribute()Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;
    .locals 6

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    array-length v0, v0

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    new-instance v4, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;-><init>(Lcom/android/modules/utils/BinaryXmlPullParser$Attribute-IA;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private blacklist peekNextExternalToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    nop

    :goto_0
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextToken()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist peekNextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->peekByte()B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private blacklist resetAttributes()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    return-void
.end method

.method static blacklist resolveEntity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "quot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "apos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    new-instance v3, Ljava/lang/String;

    new-array v2, v2, [C

    aput-char v0, v2, v1

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    :pswitch_0
    const-string v0, "\""

    return-object v0

    :pswitch_1
    const-string v0, "\'"

    return-object v0

    :pswitch_2
    const-string v0, "&"

    return-object v0

    :pswitch_3
    const-string v0, ">"

    return-object v0

    :pswitch_4
    const-string v0, "<"

    return-object v0

    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_4
        0xd88 -> :sswitch_3
        0x179c4 -> :sswitch_2
        0x2dca53 -> :sswitch_1
        0x352309 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist toByte(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getAttributeBoolean(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueBoolean()Z

    move-result v0

    return v0
.end method

.method public blacklist getAttributeBytesBase64(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueBytesBase64()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAttributeBytesHex(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueBytesHex()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeCount()I
    .locals 1

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    return v0
.end method

.method public blacklist getAttributeDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeFloat(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueFloat()F

    move-result v0

    return v0
.end method

.method public blacklist getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlPullParser;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAttributeInt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueInt()I

    move-result v0

    return v0
.end method

.method public blacklist getAttributeIntHex(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueIntHex()I

    move-result v0

    return v0
.end method

.method public blacklist getAttributeLong(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeLongHex(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueLongHex()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getAttributeName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getAttributeNamespace(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api getAttributePrefix(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getAttributeType(I)Ljava/lang/String;
    .locals 1

    const-string v0, "CDATA"

    return-object v0
.end method

.method public whitelist test-api getAttributeValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getColumnNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getDepth()I
    .locals 1

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    return v0
.end method

.method public whitelist test-api getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, ""

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNamespaceCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getNamespacePrefix(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNamespaceUri(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getPositionDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at depth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getTextCharacters([I)[C
    .locals 3

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aput v1, p1, v1

    const/4 v1, 0x1

    array-length v2, v0

    aput v2, p1, v1

    return-object v0
.end method

.method public whitelist test-api isAttributeDefault(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Not at START_TAG"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api isWhitespace()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not applicable for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist test-api next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->nextToken()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeAdditionalText()V

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    return v1

    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist test-api nextText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-ne v0, v2, :cond_2

    const-string v1, ""

    return-object v1

    :cond_2
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api nextToken()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v0

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    :goto_1
    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist obtainFastDataInput(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;
    .locals 1

    invoke-static {p1}, Lcom/android/modules/utils/FastDataInput;->obtain(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlPullParser;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
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
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->release()V

    iput-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->obtainFastDataInput(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    iput-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    new-instance v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    invoke-direct {v3, v1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;-><init>(Lcom/android/modules/utils/BinaryXmlPullParser$Attribute-IA;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v1, v0}, Lcom/android/modules/utils/FastDataInput;->readFully([B)V

    sget-object v1, Lcom/android/modules/utils/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    :cond_4
    nop

    return-void

    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected magic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setInput(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
