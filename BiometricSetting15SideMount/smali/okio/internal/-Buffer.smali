.class public abstract Lokio/internal/-Buffer;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const-string v1, "0123456789abcdef"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getBytes(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "<this>"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "options"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 16
    .line 17
    const/4 v2, -0x2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v3

    .line 25
    :goto_0
    return v2

    .line 26
    :cond_1
    iget v4, v0, Lokio/Segment;->pos:I

    .line 27
    .line 28
    iget v5, v0, Lokio/Segment;->limit:I

    .line 29
    .line 30
    iget-object v1, v1, Lokio/Options;->trie:[I

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    iget-object v7, v0, Lokio/Segment;->data:[B

    .line 34
    .line 35
    move-object v9, v0

    .line 36
    move v10, v3

    .line 37
    move v8, v6

    .line 38
    :goto_1
    add-int/lit8 v11, v8, 0x1

    .line 39
    .line 40
    aget v12, v1, v8

    .line 41
    .line 42
    add-int/lit8 v8, v8, 0x2

    .line 43
    .line 44
    aget v11, v1, v11

    .line 45
    .line 46
    if-eq v11, v3, :cond_2

    .line 47
    .line 48
    move v10, v11

    .line 49
    :cond_2
    if-nez v9, :cond_3

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_3
    const/4 v11, 0x0

    .line 53
    if-gez v12, :cond_b

    .line 54
    .line 55
    mul-int/lit8 v12, v12, -0x1

    .line 56
    .line 57
    add-int v13, v12, v8

    .line 58
    .line 59
    :goto_2
    add-int/lit8 v12, v4, 0x1

    .line 60
    .line 61
    aget-byte v4, v7, v4

    .line 62
    .line 63
    and-int/lit16 v4, v4, 0xff

    .line 64
    .line 65
    add-int/lit8 v14, v8, 0x1

    .line 66
    .line 67
    aget v8, v1, v8

    .line 68
    .line 69
    if-eq v4, v8, :cond_4

    .line 70
    .line 71
    return v10

    .line 72
    :cond_4
    if-ne v14, v13, :cond_5

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    goto :goto_3

    .line 76
    :cond_5
    move v4, v6

    .line 77
    :goto_3
    if-ne v12, v5, :cond_9

    .line 78
    .line 79
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v5, v9, Lokio/Segment;->next:Lokio/Segment;

    .line 83
    .line 84
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget v7, v5, Lokio/Segment;->pos:I

    .line 88
    .line 89
    iget v8, v5, Lokio/Segment;->limit:I

    .line 90
    .line 91
    iget-object v9, v5, Lokio/Segment;->data:[B

    .line 92
    .line 93
    if-ne v5, v0, :cond_8

    .line 94
    .line 95
    if-eqz v4, :cond_6

    .line 96
    .line 97
    move v5, v8

    .line 98
    move-object v8, v11

    .line 99
    goto :goto_5

    .line 100
    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    .line 101
    .line 102
    return v2

    .line 103
    :cond_7
    return v10

    .line 104
    :cond_8
    move/from16 v16, v8

    .line 105
    .line 106
    move-object v8, v5

    .line 107
    move/from16 v5, v16

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_9
    move-object v8, v9

    .line 111
    move-object v9, v7

    .line 112
    move v7, v12

    .line 113
    :goto_5
    if-eqz v4, :cond_a

    .line 114
    .line 115
    aget v4, v1, v14

    .line 116
    .line 117
    move/from16 v16, v7

    .line 118
    .line 119
    move v7, v5

    .line 120
    move/from16 v5, v16

    .line 121
    .line 122
    move-object/from16 v17, v9

    .line 123
    .line 124
    move-object v9, v8

    .line 125
    move-object/from16 v8, v17

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_a
    move v4, v7

    .line 129
    move-object v7, v9

    .line 130
    move-object v9, v8

    .line 131
    move v8, v14

    .line 132
    goto :goto_2

    .line 133
    :cond_b
    add-int/lit8 v13, v4, 0x1

    .line 134
    .line 135
    aget-byte v4, v7, v4

    .line 136
    .line 137
    and-int/lit16 v4, v4, 0xff

    .line 138
    .line 139
    add-int v14, v8, v12

    .line 140
    .line 141
    :goto_6
    if-ne v8, v14, :cond_c

    .line 142
    .line 143
    return v10

    .line 144
    :cond_c
    aget v15, v1, v8

    .line 145
    .line 146
    if-ne v4, v15, :cond_10

    .line 147
    .line 148
    add-int/2addr v8, v12

    .line 149
    aget v4, v1, v8

    .line 150
    .line 151
    if-ne v13, v5, :cond_d

    .line 152
    .line 153
    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    .line 154
    .line 155
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget v5, v9, Lokio/Segment;->pos:I

    .line 159
    .line 160
    iget v7, v9, Lokio/Segment;->limit:I

    .line 161
    .line 162
    iget-object v8, v9, Lokio/Segment;->data:[B

    .line 163
    .line 164
    if-ne v9, v0, :cond_e

    .line 165
    .line 166
    move-object v9, v11

    .line 167
    goto :goto_7

    .line 168
    :cond_d
    move-object v8, v7

    .line 169
    move v7, v5

    .line 170
    move v5, v13

    .line 171
    :cond_e
    :goto_7
    if-ltz v4, :cond_f

    .line 172
    .line 173
    return v4

    .line 174
    :cond_f
    neg-int v4, v4

    .line 175
    move-object/from16 v16, v8

    .line 176
    .line 177
    move v8, v4

    .line 178
    move v4, v5

    .line 179
    move v5, v7

    .line 180
    move-object/from16 v7, v16

    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 185
    .line 186
    goto :goto_6
.end method
