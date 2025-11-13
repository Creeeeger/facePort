.class public final Lokio/InputStreamSource;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final input:Ljava/io/InputStream;

.field public final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lokio/Timeout;)V
    .locals 1

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 10
    .line 11
    iput-object p2, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 4

    .line 1
    const-string p2, "sink"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p2, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_2

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget p3, p2, Lokio/Segment;->limit:I

    .line 27
    .line 28
    rsub-int p3, p3, 0x2000

    .line 29
    .line 30
    int-to-long v0, p3

    .line 31
    const-wide/16 v2, 0x2000

    .line 32
    .line 33
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    long-to-int p3, v0

    .line 38
    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 39
    .line 40
    iget-object v0, p2, Lokio/Segment;->data:[B

    .line 41
    .line 42
    iget v1, p2, Lokio/Segment;->limit:I

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1, p3}, Ljava/io/InputStream;->read([BII)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/4 p3, -0x1

    .line 49
    if-ne p0, p3, :cond_1

    .line 50
    .line 51
    iget p0, p2, Lokio/Segment;->pos:I

    .line 52
    .line 53
    iget p3, p2, Lokio/Segment;->limit:I

    .line 54
    .line 55
    if-ne p0, p3, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Lokio/Segment;->pop()Lokio/Segment;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iput-object p0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 62
    .line 63
    invoke-static {p2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    const-wide/16 p0, -0x1

    .line 70
    .line 71
    return-wide p0

    .line 72
    :cond_1
    iget p3, p2, Lokio/Segment;->limit:I

    .line 73
    .line 74
    add-int/2addr p3, p0

    .line 75
    iput p3, p2, Lokio/Segment;->limit:I

    .line 76
    .line 77
    iget-wide p2, p1, Lokio/Buffer;->size:J

    .line 78
    .line 79
    int-to-long v0, p0

    .line 80
    add-long/2addr p2, v0

    .line 81
    iput-wide p2, p1, Lokio/Buffer;->size:J

    .line 82
    .line 83
    return-wide v0

    .line 84
    :cond_2
    new-instance p0, Ljava/io/InterruptedIOException;

    .line 85
    .line 86
    const-string p1, "interrupted"

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    sget p1, Lokio/Okio__JvmOkioKt;->$r8$clinit:I

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    const-string p2, "getsockname failed"

    .line 107
    .line 108
    const/4 p3, 0x0

    .line 109
    invoke-static {p1, p2, p3, p3}, Lkotlin/text/StringsKt__StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-ltz p1, :cond_3

    .line 114
    .line 115
    new-instance p1, Ljava/io/IOException;

    .line 116
    .line 117
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_3
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "source("

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
