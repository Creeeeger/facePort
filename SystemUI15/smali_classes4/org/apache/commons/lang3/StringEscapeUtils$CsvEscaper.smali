.class public final Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;
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

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;->CSV_QUOTE_STR:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;->CSV_SEARCH_CHARS:[C

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
    .locals 11

    if-nez p2, :cond_6

    move-object p0, p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/apache/commons/lang3/StringUtils;->$r8$clinit:I

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    sget-object v1, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;->CSV_SEARCH_CHARS:[C

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    array-length v4, v1

    add-int/lit8 v5, v4, -0x1

    move v6, v0

    :goto_0
    if-ge v6, v2, :cond_5

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v8, v0

    :goto_1
    if-ge v8, v4, :cond_4

    aget-char v9, v1, v8

    if-ne v9, v7, :cond_3

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v8, v5, :cond_1

    goto :goto_2

    :cond_1
    if-ge v6, v3, :cond_3

    add-int/lit8 v9, v8, 0x1

    aget-char v9, v1, v9

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_3

    :cond_2
    :goto_2
    const/16 p2, 0x22

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(I)V

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p1, v0, p0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CsvEscaper should never reach the [1] index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
