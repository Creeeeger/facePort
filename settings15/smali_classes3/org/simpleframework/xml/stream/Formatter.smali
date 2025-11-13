.class public final Lorg/simpleframework/xml/stream/Formatter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final AND:[C

.field public static final CLOSE:[C

.field public static final DOUBLE:[C

.field public static final GREATER:[C

.field public static final LESS:[C

.field public static final NAMESPACE:[C

.field public static final OPEN:[C

.field public static final SINGLE:[C


# instance fields
.field public buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

.field public indenter:Lorg/simpleframework/xml/stream/Indenter;

.field public last:Lorg/simpleframework/xml/stream/Formatter$Tag;

.field public prolog:Ljava/lang/String;

.field public result:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/simpleframework/xml/stream/Formatter;->NAMESPACE:[C

    const/4 v1, 0x4

    new-array v2, v1, [C

    fill-array-data v2, :array_1

    sput-object v2, Lorg/simpleframework/xml/stream/Formatter;->LESS:[C

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    sput-object v1, Lorg/simpleframework/xml/stream/Formatter;->GREATER:[C

    const/4 v1, 0x6

    new-array v2, v1, [C

    fill-array-data v2, :array_3

    sput-object v2, Lorg/simpleframework/xml/stream/Formatter;->DOUBLE:[C

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    sput-object v1, Lorg/simpleframework/xml/stream/Formatter;->SINGLE:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->AND:[C

    return-void

    :array_0
    .array-data 2
        0x78s
        0x6ds
        0x6cs
        0x6es
        0x73s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x26s
        0x6cs
        0x74s
        0x3bs
    .end array-data

    :array_2
    .array-data 2
        0x26s
        0x67s
        0x74s
        0x3bs
    .end array-data

    :array_3
    .array-data 2
        0x26s
        0x71s
        0x75s
        0x6fs
        0x74s
        0x3bs
    .end array-data

    :array_4
    .array-data 2
        0x26s
        0x61s
        0x70s
        0x6fs
        0x73s
        0x3bs
    .end array-data

    :array_5
    .array-data 2
        0x26s
        0x61s
        0x6ds
        0x70s
        0x3bs
    .end array-data
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x26

    if-eq v3, v4, :cond_1

    const/16 v4, 0x27

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    sget-object v4, Lorg/simpleframework/xml/stream/Formatter;->SINGLE:[C

    goto :goto_1

    :cond_1
    sget-object v4, Lorg/simpleframework/xml/stream/Formatter;->AND:[C

    goto :goto_1

    :cond_2
    sget-object v4, Lorg/simpleframework/xml/stream/Formatter;->GREATER:[C

    goto :goto_1

    :cond_3
    sget-object v4, Lorg/simpleframework/xml/stream/Formatter;->LESS:[C

    goto :goto_1

    :cond_4
    sget-object v4, Lorg/simpleframework/xml/stream/Formatter;->DOUBLE:[C

    :goto_1
    if-eqz v4, :cond_5

    iget-object v3, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    iget-object v5, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v6, v5, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v3, v5, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v3, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write([C)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final write(C)V
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v2, v1, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, v1, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v2, v1, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, v1, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v2, v1, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, v1, Lorg/simpleframework/xml/stream/OutputBuffer;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
