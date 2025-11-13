.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist END_STRING_FLAG:I = 0x0

.field private static final blacklist LENGTH_QUOTE:I = 0x1f

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final blacklist LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final blacklist QUOTE:I = 0x7f

.field private static final blacklist QUOTED_STRING_FLAG:I = 0x22

.field private static final blacklist SHORT_INTEGER_MAX:I = 0x7f

.field private static final blacklist SHORT_LENGTH_MAX:I = 0x1e

.field private static final blacklist TEXT_MAX:I = 0x7f

.field private static final blacklist TEXT_MIN:I = 0x20

.field private static final blacklist THE_FIRST_PART:I = 0x0

.field private static final blacklist THE_LAST_PART:I = 0x1

.field private static final blacklist TYPE_QUOTED_STRING:I = 0x1

.field private static final blacklist TYPE_TEXT_STRING:I = 0x0

.field private static final blacklist TYPE_TOKEN_STRING:I = 0x2

.field private static blacklist mStartParam:[B

.field private static blacklist mTypeParam:[B


# instance fields
.field private blacklist mBody:Lcom/google/android/mms/pdu/PduBody;

.field private blacklist mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final blacklist mParseContentDisposition:Z

.field private blacklist mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    nop

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    return-void
.end method

.method public constructor greylist <init>([BZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    return-void
.end method

.method protected static blacklist checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/16 v3, 0x9b

    const/16 v4, 0x95

    const/16 v5, 0x84

    const/16 v6, 0x97

    const/16 v7, 0x8b

    const/16 v8, 0x89

    const/16 v9, 0x85

    const-wide/16 v10, -0x1

    const/16 v12, 0x98

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    cmp-long v9, v10, v4

    if-nez v9, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    if-nez v8, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v7

    if-nez v7, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-nez v3, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-nez v6, :cond_15

    return v0

    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-nez v4, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    if-nez v5, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-nez v3, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-nez v6, :cond_15

    return v0

    :pswitch_2
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    cmp-long v3, v10, v8

    if-nez v3, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    if-nez v4, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-nez v5, :cond_15

    return v0

    :pswitch_3
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_15

    return v0

    :pswitch_4
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    cmp-long v6, v10, v4

    if-nez v6, :cond_15

    return v0

    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-nez v3, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    if-nez v4, :cond_15

    return v0

    :pswitch_6
    const/16 v3, 0x83

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_e

    return v0

    :cond_e
    const/16 v4, 0x88

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    cmp-long v6, v10, v4

    if-nez v6, :cond_f

    return v0

    :cond_f
    const/16 v6, 0x8a

    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v6

    if-nez v6, :cond_10

    return v0

    :cond_10
    const/16 v7, 0x8e

    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    cmp-long v9, v10, v7

    if-nez v9, :cond_11

    return v0

    :cond_11
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v9

    if-nez v9, :cond_15

    return v0

    :pswitch_7
    const/16 v3, 0x92

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-nez v3, :cond_12

    return v0

    :cond_12
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    if-nez v4, :cond_15

    return v0

    :pswitch_8
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-nez v4, :cond_14

    return v0

    :cond_14
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    if-nez v5, :cond_15

    return v0

    :cond_15
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 4

    nop

    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v3, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-ne v1, v3, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method protected static blacklist extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static blacklist getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3

    nop

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    nop

    :goto_0
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method protected static blacklist isText(I)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-lt p0, v0, :cond_2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_2

    :cond_1
    return v1

    :cond_2
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static blacklist isTokenCharacter(I)Z
    .locals 2

    const/16 v0, 0x21

    const/4 v1, 0x0

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    return v0

    :sswitch_0
    return v1

    :cond_1
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static greylist log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected static greylist parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    nop

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v3, v2, 0xff

    const/16 v4, 0x20

    const/16 v5, 0x7f

    const/4 v6, 0x0

    if-ge v3, v4, :cond_6

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    const-string v9, "PduParser"

    if-le v7, v8, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseContentType: Invalid length "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " when available bytes are "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v1, v2, 0xff

    if-lt v1, v4, :cond_1

    if-gt v1, v5, :cond_1

    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    if-le v1, v5, :cond_5

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :goto_0
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    sub-int v5, v8, v4

    sub-int v5, v7, v5

    if-lez v5, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {p0, p1, v10}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    :cond_3
    if-gez v5, :cond_4

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v6, v9, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6

    :cond_4
    goto :goto_2

    :cond_5
    const-string v4, "Corrupt content-type"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "parseValueLength Exception!"

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    return-object v4

    :cond_6
    if-gt v3, v5, :cond_7

    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method protected static blacklist parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    nop

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    const-string v3, "Corrupt Content-Type"

    const-string v4, "PduParser"

    if-lez v2, :cond_a

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    nop

    add-int/lit8 v2, v2, -0x1

    const/16 v6, 0x7f

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v5, :sswitch_data_0

    invoke-static {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v7, v6, :cond_9

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :sswitch_0
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    const/16 v4, 0x99

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    move v2, v4

    goto/16 :goto_4

    :sswitch_1
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    move v2, v4

    goto/16 :goto_4

    :sswitch_2
    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v4, 0x83

    if-le v3, v6, :cond_3

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_2

    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    goto :goto_1

    :cond_3
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    if-eqz v6, :cond_4

    if-eqz p1, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    move v2, v4

    goto :goto_4

    :sswitch_3
    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v7, 0x20

    const/16 v9, 0x81

    if-le v3, v7, :cond_5

    if-lt v3, v6, :cond_6

    :cond_5
    if-nez v3, :cond_7

    :cond_6
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    goto :goto_3

    :cond_7
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    long-to-int v4, v6

    if-eqz p1, :cond_8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    move v2, v4

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    goto/16 :goto_0

    :cond_a
    if-eqz v2, :cond_b

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_3
        0x83 -> :sswitch_2
        0x85 -> :sswitch_1
        0x89 -> :sswitch_2
        0x8a -> :sswitch_0
        0x97 -> :sswitch_1
        0x99 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static blacklist parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 7

    nop

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    nop

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    and-int/lit16 v4, v2, 0xff

    if-nez v4, :cond_1

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v5, ""

    invoke-direct {v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v5, 0x20

    if-ge v4, v5, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v6, "parseValueLength Exception!"

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v3

    :cond_2
    :goto_0
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    if-eqz v1, :cond_3

    :try_start_1
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    move-object v0, v6

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    :goto_1
    nop

    return-object v0

    :catch_1
    move-exception v6

    return-object v3
.end method

.method protected static blacklist parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 7

    nop

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    nop

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    and-int/lit16 v4, v2, 0xff

    if-lez v4, :cond_3

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v5, 0x20

    if-ge v4, v5, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v6, "parseValueLength Exception!"

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v3

    :cond_1
    :goto_0
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    if-eqz v1, :cond_2

    :try_start_1
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    move-object v0, v6

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v6

    return-object v3

    :cond_3
    :goto_2
    return-object v0
.end method

.method protected static blacklist parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3

    nop

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    :cond_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static blacklist parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 8

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    shl-long/2addr v3, v2

    and-int/lit16 v6, v0, 0xff

    int-to-long v6, v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-wide v3

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static greylist parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static greylist parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4

    nop

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v3, v1, 0x7f

    or-int/2addr v0, v3

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v1, v2, :cond_0

    return v1

    :cond_1
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    return v0
.end method

.method protected static greylist parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    return v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static greylist parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3

    nop

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    nop

    if-ne v0, p1, :cond_0

    const/16 v2, 0x22

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/16 v2, 0x7f

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3

    nop

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    if-ge v1, p1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public greylist parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 9

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v2, 0x8c

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v3, "check mandatory headers failed!"

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const/16 v4, 0x80

    const-string v5, "application/vnd.wap.multipart.mixed"

    const-string/jumbo v6, "text/plain"

    if-eq v4, v0, :cond_3

    if-ne v3, v0, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v4, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v4, :cond_4

    return-object v1

    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    :cond_5
    packed-switch v0, :pswitch_data_0

    const-string v3, "Parser doesn\'t support this message type in this version!"

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    :pswitch_0
    new-instance v1, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_2
    new-instance v1, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_3
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_4
    new-instance v3, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v7, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v3, v4, v7}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v4

    if-nez v4, :cond_6

    return-object v1

    :cond_6
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "application/vnd.wap.multipart.related"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6, v5, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    return-object v3

    :cond_8
    return-object v1

    :cond_9
    :goto_0
    return-object v3

    :pswitch_5
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_6
    new-instance v1, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_7
    new-instance v1, Lcom/google/android/mms/pdu/SendConf;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_8
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v1, v3, v4}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 18

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x1

    new-instance v3, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    move v4, v0

    :goto_0
    if-eqz v4, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-lt v5, v6, :cond_1

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {v1, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v6, 0x81

    const-string v8, "/"

    const-string v10, " is not Integer-Value"

    const-string/jumbo v11, "is not Octet header field!"

    const-string v12, " into the header filed: "

    const-string v13, "Set invalid Octet value: "

    const/16 v14, 0x80

    const-string/jumbo v15, "is not Text-String header field!"

    const-string/jumbo v7, "is not Long-Integer header field!"

    const-string/jumbo v9, "is not Encoded-String-Value header field!"

    const-string/jumbo v16, "parseValueLength Exception!"

    const-string/jumbo v17, "null pointer error!"

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown header"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_1
    invoke-static {v1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_15

    :pswitch_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_3
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    nop

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_4
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    nop

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_15

    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_5
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6

    nop

    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    nop

    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v8

    const/16 v0, 0xa1

    invoke-virtual {v3, v8, v9, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_15

    :catch_4
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_5
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_6
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_6
    :try_start_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_a

    nop

    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_9

    nop

    nop

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_11

    const/16 v0, 0xa0

    :try_start_9
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7

    :goto_1
    goto/16 :goto_15

    :catch_7
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_8
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_9
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_a
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_a
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_b

    :goto_2
    goto/16 :goto_15

    :catch_b
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_c
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "Subject is null!"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_8
    nop

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_11

    :try_start_b
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_d

    :goto_3
    goto/16 :goto_15

    :catch_d
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_e
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    const/16 v0, 0x8d

    :try_start_c
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_c
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_f

    goto/16 :goto_15

    :catch_f
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_10
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :try_start_d
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_d
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_4

    :pswitch_b
    return-object v2

    :goto_4
    goto/16 :goto_15

    :catch_11
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_12
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_c
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    const/16 v0, 0x8a

    if-lt v7, v14, :cond_7

    if-ne v14, v7, :cond_3

    :try_start_e
    const-string/jumbo v6, "personal"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_7

    :catch_13
    move-exception v0

    goto :goto_5

    :catch_14
    move-exception v0

    goto :goto_6

    :cond_3
    if-ne v6, v7, :cond_4

    const-string v6, "advertisement"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_7

    :cond_4
    const/16 v6, 0x82

    if-ne v6, v7, :cond_5

    const-string/jumbo v6, "informational"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_7

    :cond_5
    const/16 v6, 0x83

    if-ne v6, v7, :cond_6

    const-string v6, "auto"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_13

    goto :goto_7

    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :goto_6
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    :cond_6
    :goto_7
    goto/16 :goto_15

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    if-eqz v6, :cond_8

    :try_start_f
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_15

    :goto_8
    goto :goto_9

    :catch_15
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_16
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    :goto_9
    goto/16 :goto_15

    :pswitch_d
    const/4 v6, 0x0

    :try_start_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_1b

    nop

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    if-ne v14, v7, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    if-eqz v10, :cond_a

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_9

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_a

    :cond_9
    move-object v11, v0

    :goto_a
    :try_start_11
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_17

    goto :goto_b

    :catch_17
    move-exception v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :cond_a
    :goto_b
    goto :goto_c

    :cond_b
    :try_start_12
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string/jumbo v8, "insert-address-token"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_1a

    move-object v6, v0

    nop

    :cond_c
    :goto_c
    const/16 v0, 0x89

    :try_start_13
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_18

    :goto_d
    goto/16 :goto_15

    :catch_18
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_19
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_d

    :catch_1a
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_1b
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_e
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_1e

    nop

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v9
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1d

    nop

    if-ne v6, v8, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    add-long/2addr v9, v11

    :cond_d
    :try_start_16
    invoke-virtual {v3, v9, v10, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1c

    goto/16 :goto_15

    :catch_1c
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_1d
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_1e
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    :try_start_17
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_17
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_17 .. :try_end_17} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1f

    goto/16 :goto_15

    :catch_1f
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_20
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_10
    :try_start_18
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_21

    goto/16 :goto_15

    :catch_21
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    nop

    invoke-static {v1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    if-eqz v7, :cond_e

    const/16 v0, 0x84

    :try_start_19
    invoke-virtual {v3, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_22

    :goto_e
    goto :goto_f

    :catch_22
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_23
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_e

    :cond_e
    :goto_f
    const/16 v0, 0x99

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/16 v8, 0x83

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_15

    :pswitch_12
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    if-eqz v6, :cond_11

    :try_start_1a
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_24

    :goto_10
    goto/16 :goto_15

    :catch_24
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_25
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_13
    nop

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    if-eqz v7, :cond_10

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_f

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_11

    :cond_f
    move-object v10, v0

    :goto_11
    :try_start_1b
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_26

    goto :goto_12

    :catch_26
    move-exception v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :cond_10
    :goto_12
    :try_start_1c
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_27

    :goto_13
    goto :goto_14

    :catch_27
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_28
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_13

    :goto_14
    nop

    :cond_11
    :goto_15
    goto/16 :goto_0

    :cond_12
    return-object v3

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_12
        :pswitch_a
        :pswitch_9
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_8
        :pswitch_f
        :pswitch_f
        :pswitch_7
        :pswitch_13
        :pswitch_12
        :pswitch_f
        :pswitch_8
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_12
        :pswitch_10
        :pswitch_6
        :pswitch_5
        :pswitch_f
        :pswitch_f
        :pswitch_4
        :pswitch_f
        :pswitch_8
        :pswitch_f
        :pswitch_0
        :pswitch_f
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_f
        :pswitch_1
        :pswitch_2
        :pswitch_f
        :pswitch_8
        :pswitch_8
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method protected greylist parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 11

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    move v2, p3

    :goto_0
    const-string v3, "Corrupt Part headers"

    const-string v4, "PduParser"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_d

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    nop

    add-int/lit8 v2, v2, -0x1

    const/16 v8, 0x7f

    const/4 v9, -0x1

    if-le v7, v8, :cond_8

    sparse-switch v7, :sswitch_data_0

    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v9, v5, :cond_7

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :sswitch_0
    invoke-static {p1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    sub-int v4, v0, v1

    sub-int v2, p3, v4

    goto/16 :goto_2

    :sswitch_1
    iget-boolean v3, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    nop

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    const/16 v9, 0x80

    if-ne v8, v9, :cond_1

    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    :cond_1
    const/16 v9, 0x81

    if-ne v8, v9, :cond_2

    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    :cond_2
    const/16 v9, 0x82

    if-ne v8, v9, :cond_3

    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    sub-int v9, v4, v5

    if-ge v9, v3, :cond_5

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    const/16 v9, 0x98

    if-ne v8, v9, :cond_4

    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    :cond_4
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    sub-int v9, v4, v5

    if-ge v9, v3, :cond_5

    sub-int v9, v4, v5

    sub-int v9, v3, v9

    new-array v10, v9, [B

    invoke-virtual {p1, v10, v6, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    :cond_5
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    sub-int v6, v0, v1

    sub-int v2, p3, v6

    goto :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v5, "parseValueLength Exception!"

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return v6

    :sswitch_2
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_6
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    sub-int v4, v0, v1

    sub-int v2, p3, v4

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const/16 v10, 0x20

    if-lt v7, v10, :cond_a

    if-gt v7, v8, :cond_a

    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    const-string v8, "Content-Transfer-Encoding"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-ne v5, v6, :cond_9

    invoke-virtual {p2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    :cond_9
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    sub-int v5, v0, v1

    sub-int v2, p3, v5

    goto :goto_2

    :cond_a
    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v9, v5, :cond_b

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_2
    goto/16 :goto_0

    :cond_d
    if-eqz v2, :cond_e

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_e
    return v5

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_2
        0xae -> :sswitch_1
        0xc0 -> :sswitch_0
        0xc5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected blacklist parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    new-instance v5, Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    const-string v7, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    const-string v7, "application/vnd.wap.multipart.related"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "text/plain"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v2, Ljava/lang/String;

    const-string v9, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    const-string/jumbo v10, "smil.txt"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    const-string v10, "application/smil"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    invoke-virtual {v4, v8, v9}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    new-instance v10, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    const-string v11, "attach.txt"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    new-array v11, v7, [B

    invoke-virtual {v1, v11, v8, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-virtual {v10, v11}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    invoke-virtual {v4, v10}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    move/from16 v17, v3

    move-object/from16 v20, v5

    goto/16 :goto_9

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    new-instance v11, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    if-gtz v12, :cond_4

    return-object v2

    :cond_4
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v13}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v11, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    :cond_5
    sget-object v15, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v15, v15, v8

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    :goto_2
    const/16 v15, 0x97

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    if-eqz v15, :cond_6

    invoke-virtual {v11, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    :cond_6
    const/16 v16, 0x81

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    sub-int v17, v12, v2

    move/from16 v18, v2

    sub-int v2, v9, v17

    if-lez v2, :cond_9

    invoke-virtual {v0, v1, v11, v2}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v17

    if-nez v17, :cond_8

    const/16 v16, 0x0

    return-object v16

    :cond_8
    const/16 v16, 0x0

    goto :goto_3

    :cond_9
    const/16 v16, 0x0

    if-gez v2, :cond_a

    return-object v16

    :cond_a
    :goto_3
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v17

    if-nez v17, :cond_e

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v17

    if-nez v17, :cond_d

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v17

    if-nez v17, :cond_c

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v17

    if-nez v17, :cond_b

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v17

    move/from16 v19, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    goto :goto_4

    :cond_b
    move/from16 v19, v2

    goto :goto_4

    :cond_c
    move/from16 v19, v2

    goto :goto_4

    :cond_d
    move/from16 v19, v2

    goto :goto_4

    :cond_e
    move/from16 v19, v2

    :goto_4
    if-lez v10, :cond_16

    new-array v2, v10, [B

    move/from16 v17, v3

    new-instance v3, Ljava/lang/String;

    move-object/from16 v20, v5

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v10}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v6

    const/4 v5, -0x1

    if-ne v6, v5, :cond_f

    const/4 v5, 0x0

    return-object v5

    :cond_f
    const-string v5, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v5, v14}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    if-nez v5, :cond_10

    const-string v21, "childBody is null"

    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v11

    :goto_5
    const/4 v0, 0x0

    goto :goto_7

    :cond_11
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v21, v0

    const-string v0, "base64"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v2}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v2

    goto :goto_6

    :cond_12
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {v2}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v2

    goto :goto_6

    :cond_13
    move-object/from16 v21, v0

    :cond_14
    :goto_6
    if-nez v2, :cond_15

    const-string v0, "Decode part data error!"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {v11, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_7

    :cond_16
    move/from16 v17, v3

    move-object/from16 v20, v5

    const/4 v0, 0x0

    :goto_7
    invoke-static {v11}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v11}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    invoke-virtual {v4, v11}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, p2

    move v8, v2

    move/from16 v3, v17

    move-object/from16 v5, v20

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_18
    move/from16 v17, v3

    move-object/from16 v20, v5

    :goto_9
    return-object v4
.end method
