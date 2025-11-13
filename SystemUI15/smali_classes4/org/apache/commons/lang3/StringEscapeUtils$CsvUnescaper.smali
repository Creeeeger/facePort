.class public final Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CSV_QUOTE_STR:Ljava/lang/String;

.field public static final CSV_SEARCH_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_QUOTE_STR:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_SEARCH_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x22s
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public final translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 12

    const/4 p0, 0x1

    if-nez p2, :cond_a

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p0

    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/apache/commons/lang3/StringUtils;->$r8$clinit:I

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    sget-object v2, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_SEARCH_CHARS:[C

    if-nez v2, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    array-length v4, v2

    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v4, -0x1

    move v7, v0

    :goto_1
    if-ge v7, v3, :cond_8

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v0

    :goto_2
    if-ge v9, v4, :cond_7

    aget-char v10, v2, v9

    if-ne v10, v8, :cond_6

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_5

    if-ne v9, v6, :cond_4

    goto :goto_3

    :cond_4
    if-ge v7, v5, :cond_6

    add-int/lit8 v10, v9, 0x1

    aget-char v10, v2, v10

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_6

    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    add-int/2addr v9, p0

    goto :goto_2

    :cond_7
    add-int/2addr v7, p0

    goto :goto_1

    :cond_8
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p1, v0, p0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0

    :cond_9
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p1, v0, p0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CsvUnescaper should never reach the [1] index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
