.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final buffer:Lokio/Buffer;

.field public closed:Z

.field public expectedPos:I

.field public expectedSegment:Lokio/Segment;

.field public pos:J

.field public final upstream:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 1

    .line 1
    const-string v0, "upstream"

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
    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 10
    .line 11
    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 16
    .line 17
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 18
    .line 19
    iput-object p1, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget p1, p1, Lokio/Segment;->pos:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, -0x1

    .line 27
    :goto_0
    iput p1, p0, Lokio/PeekSource;->expectedPos:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    .line 3
    .line 4
    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 10

    .line 1
    const-string p2, "sink"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Lokio/PeekSource;->closed:Z

    .line 7
    .line 8
    xor-int/lit8 p2, p2, 0x1

    .line 9
    .line 10
    if-eqz p2, :cond_8

    .line 11
    .line 12
    iget-object p2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object p3, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 17
    .line 18
    iget-object p3, p3, Lokio/Buffer;->head:Lokio/Segment;

    .line 19
    .line 20
    if-ne p2, p3, :cond_0

    .line 21
    .line 22
    iget p2, p0, Lokio/PeekSource;->expectedPos:I

    .line 23
    .line 24
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget p3, p3, Lokio/Segment;->pos:I

    .line 28
    .line 29
    if-ne p2, p3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string p1, "Peek source is invalid because upstream source was used"

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    :goto_0
    iget-object p2, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 45
    .line 46
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 47
    .line 48
    const-wide/16 v2, 0x1

    .line 49
    .line 50
    add-long/2addr v0, v2

    .line 51
    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->request(J)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    const-wide/16 p0, -0x1

    .line 58
    .line 59
    return-wide p0

    .line 60
    :cond_2
    iget-object p2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 61
    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    iget-object p2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 65
    .line 66
    iget-object p2, p2, Lokio/Buffer;->head:Lokio/Segment;

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    iput-object p2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 71
    .line 72
    iget p2, p2, Lokio/Segment;->pos:I

    .line 73
    .line 74
    iput p2, p0, Lokio/PeekSource;->expectedPos:I

    .line 75
    .line 76
    :cond_3
    iget-object p2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 77
    .line 78
    iget-wide p2, p2, Lokio/Buffer;->size:J

    .line 79
    .line 80
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 81
    .line 82
    sub-long/2addr p2, v0

    .line 83
    const-wide/16 v0, 0x2000

    .line 84
    .line 85
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide p2

    .line 89
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 90
    .line 91
    iget-wide v8, p0, Lokio/PeekSource;->pos:J

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-wide v2, v0, Lokio/Buffer;->size:J

    .line 97
    .line 98
    move-wide v4, v8

    .line 99
    move-wide v6, p2

    .line 100
    invoke-static/range {v2 .. v7}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v1, 0x0

    .line 104
    .line 105
    cmp-long v3, p2, v1

    .line 106
    .line 107
    if-nez v3, :cond_4

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    iget-wide v3, p1, Lokio/Buffer;->size:J

    .line 111
    .line 112
    add-long/2addr v3, p2

    .line 113
    iput-wide v3, p1, Lokio/Buffer;->size:J

    .line 114
    .line 115
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 116
    .line 117
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget v3, v0, Lokio/Segment;->limit:I

    .line 121
    .line 122
    iget v4, v0, Lokio/Segment;->pos:I

    .line 123
    .line 124
    sub-int/2addr v3, v4

    .line 125
    int-to-long v3, v3

    .line 126
    cmp-long v5, v8, v3

    .line 127
    .line 128
    if-ltz v5, :cond_5

    .line 129
    .line 130
    sub-long/2addr v8, v3

    .line 131
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    move-wide v3, p2

    .line 135
    :goto_2
    cmp-long v5, v3, v1

    .line 136
    .line 137
    if-lez v5, :cond_7

    .line 138
    .line 139
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    iget v6, v5, Lokio/Segment;->pos:I

    .line 147
    .line 148
    long-to-int v7, v8

    .line 149
    add-int/2addr v6, v7

    .line 150
    iput v6, v5, Lokio/Segment;->pos:I

    .line 151
    .line 152
    long-to-int v7, v3

    .line 153
    add-int/2addr v6, v7

    .line 154
    iget v7, v5, Lokio/Segment;->limit:I

    .line 155
    .line 156
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    iput v6, v5, Lokio/Segment;->limit:I

    .line 161
    .line 162
    iget-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 163
    .line 164
    if-nez v6, :cond_6

    .line 165
    .line 166
    iput-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    .line 167
    .line 168
    iput-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 169
    .line 170
    iput-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    .line 174
    .line 175
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v5}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    iget v6, v5, Lokio/Segment;->limit:I

    .line 182
    .line 183
    iget v5, v5, Lokio/Segment;->pos:I

    .line 184
    .line 185
    sub-int/2addr v6, v5

    .line 186
    int-to-long v5, v6

    .line 187
    sub-long/2addr v3, v5

    .line 188
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 189
    .line 190
    move-wide v8, v1

    .line 191
    goto :goto_2

    .line 192
    :cond_7
    :goto_4
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 193
    .line 194
    add-long/2addr v0, p2

    .line 195
    iput-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 196
    .line 197
    return-wide p2

    .line 198
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 199
    .line 200
    const-string p1, "closed"

    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p0
.end method
