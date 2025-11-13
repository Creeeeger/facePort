.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-r bidi(I[C[B)I
    .locals 5
    .param p0, "dir"    # I
    .param p1, "chs"    # [C
    .param p2, "chInfo"    # [B

    .line 38
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 42
    array-length v0, p1

    .line 43
    .local v0, "length":I
    array-length v1, p2

    if-lt v1, v0, :cond_2

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 53
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "paraLevel":B
    goto :goto_0

    .line 51
    .end local v1    # "paraLevel":B
    :pswitch_1
    const/16 v1, 0x7e

    .restart local v1    # "paraLevel":B
    goto :goto_0

    .line 49
    .end local v1    # "paraLevel":B
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1    # "paraLevel":B
    goto :goto_0

    .line 50
    .end local v1    # "paraLevel":B
    :pswitch_3
    const/4 v1, 0x1

    .restart local v1    # "paraLevel":B
    goto :goto_0

    .line 52
    .end local v1    # "paraLevel":B
    :pswitch_4
    const/16 v1, 0x7f

    .line 55
    .restart local v1    # "paraLevel":B
    :goto_0
    new-instance v2, Landroid/icu/text/Bidi;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/icu/text/Bidi;-><init>(II)V

    .line 56
    .local v2, "icuBidi":Landroid/icu/text/Bidi;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 57
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 58
    invoke-virtual {v2, v3}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v4

    aput-byte v4, p2, v3

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v3

    .line 61
    .local v3, "result":B
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, -0x1

    :goto_2
    return v4

    .line 44
    .end local v1    # "paraLevel":B
    .end local v2    # "icuBidi":Landroid/icu/text/Bidi;
    .end local v3    # "result":B
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 39
    .end local v0    # "length":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static greylist-max-o directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 19
    .param p0, "dir"    # I
    .param p1, "levels"    # [B
    .param p2, "lstart"    # I
    .param p3, "chars"    # [C
    .param p4, "cstart"    # I
    .param p5, "len"    # I

    .line 78
    move/from16 v0, p5

    if-nez v0, :cond_0

    .line 79
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v1

    .line 82
    :cond_0
    const/4 v2, 0x1

    move/from16 v3, p0

    if-ne v3, v2, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, v2

    .line 83
    .local v4, "baseLevel":I
    :goto_0
    aget-byte v5, p1, p2

    .line 84
    .local v5, "curLevel":I
    move v6, v5

    .line 85
    .local v6, "minLevel":I
    const/4 v7, 0x1

    .line 86
    .local v7, "runCount":I
    add-int/lit8 v8, p2, 0x1

    .local v8, "i":I
    add-int v9, p2, v0

    .local v9, "e":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 87
    aget-byte v10, p1, v8

    .line 88
    .local v10, "level":I
    if-eq v10, v5, :cond_2

    .line 89
    move v5, v10

    .line 90
    add-int/lit8 v7, v7, 0x1

    .line 86
    .end local v10    # "level":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 95
    .end local v8    # "i":I
    .end local v9    # "e":I
    :cond_3
    move/from16 v8, p5

    .line 96
    .local v8, "visLen":I
    and-int/lit8 v9, v5, 0x1

    and-int/lit8 v10, v4, 0x1

    if-eq v9, v10, :cond_7

    .line 98
    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_6

    .line 99
    add-int v9, p4, v8

    aget-char v9, p3, v9

    .line 101
    .local v9, "ch":C
    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    .line 102
    add-int/lit8 v8, v8, -0x1

    .line 103
    goto :goto_3

    .line 106
    :cond_4
    const/16 v10, 0x20

    if-eq v9, v10, :cond_5

    const/16 v10, 0x9

    if-eq v9, v10, :cond_5

    .line 107
    goto :goto_3

    .line 109
    .end local v9    # "ch":C
    :cond_5
    goto :goto_2

    .line 110
    :cond_6
    :goto_3
    add-int/2addr v8, v2

    .line 111
    if-eq v8, v0, :cond_7

    .line 112
    add-int/lit8 v7, v7, 0x1

    .line 116
    :cond_7
    if-ne v7, v2, :cond_9

    if-ne v6, v4, :cond_9

    .line 118
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_8

    .line 119
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v1

    .line 121
    :cond_8
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v1

    .line 124
    :cond_9
    mul-int/lit8 v9, v7, 0x2

    new-array v9, v9, [I

    .line 125
    .local v9, "ld":[I
    move v10, v6

    .line 126
    .local v10, "maxLevel":I
    shl-int/lit8 v11, v6, 0x1a

    .line 131
    .local v11, "levelBits":I
    const/4 v12, 0x1

    .line 132
    .local v12, "n":I
    move/from16 v13, p2

    .line 133
    .local v13, "prev":I
    move v5, v6

    .line 134
    move/from16 v14, p2

    .local v14, "i":I
    add-int v15, p2, v8

    .local v15, "e":I
    :goto_4
    if-ge v14, v15, :cond_d

    .line 135
    aget-byte v1, p1, v14

    .line 136
    .local v1, "level":I
    if-eq v1, v5, :cond_c

    .line 137
    move v5, v1

    .line 138
    if-le v1, v10, :cond_a

    .line 139
    move v10, v1

    goto :goto_5

    .line 140
    :cond_a
    if-ge v1, v6, :cond_b

    .line 141
    move v6, v1

    .line 144
    :cond_b
    :goto_5
    add-int/lit8 v17, v12, 0x1

    .end local v12    # "n":I
    .local v17, "n":I
    sub-int v18, v14, v13

    or-int v18, v18, v11

    aput v18, v9, v12

    .line 145
    add-int/lit8 v12, v17, 0x1

    .end local v17    # "n":I
    .restart local v12    # "n":I
    sub-int v18, v14, p2

    aput v18, v9, v17

    .line 146
    shl-int/lit8 v11, v5, 0x1a

    .line 147
    move v13, v14

    .line 134
    .end local v1    # "level":I
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 150
    .end local v14    # "i":I
    .end local v15    # "e":I
    :cond_d
    add-int v1, p2, v8

    sub-int/2addr v1, v13

    or-int/2addr v1, v11

    aput v1, v9, v12

    .line 151
    if-ge v8, v0, :cond_e

    .line 152
    add-int/2addr v12, v2

    aput v8, v9, v12

    .line 153
    add-int/2addr v12, v2

    sub-int v1, v0, v8

    shl-int/lit8 v14, v4, 0x1a

    or-int/2addr v1, v14

    aput v1, v9, v12

    .line 168
    .end local v12    # "n":I
    .end local v13    # "prev":I
    :cond_e
    and-int/lit8 v1, v6, 0x1

    if-ne v1, v4, :cond_10

    .line 169
    add-int/lit8 v6, v6, 0x1

    .line 170
    if-le v10, v6, :cond_f

    move v1, v2

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    .local v1, "swap":Z
    :goto_6
    goto :goto_7

    .line 172
    .end local v1    # "swap":Z
    :cond_10
    if-le v7, v2, :cond_11

    move v1, v2

    goto :goto_7

    :cond_11
    const/4 v1, 0x0

    .line 174
    .restart local v1    # "swap":Z
    :goto_7
    if-eqz v1, :cond_16

    .line 175
    add-int/lit8 v2, v10, -0x1

    .local v2, "level":I
    :goto_8
    if-lt v2, v6, :cond_16

    .line 176
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_9
    array-length v13, v9

    if-ge v12, v13, :cond_15

    .line 177
    aget v13, v9, v12

    aget-byte v13, p1, v13

    if-lt v13, v2, :cond_14

    .line 178
    add-int/lit8 v13, v12, 0x2

    .line 179
    .local v13, "e":I
    :goto_a
    array-length v14, v9

    if-ge v13, v14, :cond_12

    aget v14, v9, v13

    aget-byte v14, p1, v14

    if-lt v14, v2, :cond_12

    .line 180
    add-int/lit8 v13, v13, 0x2

    goto :goto_a

    .line 182
    :cond_12
    move v14, v12

    .local v14, "low":I
    add-int/lit8 v15, v13, -0x2

    .local v15, "hi":I
    :goto_b
    if-ge v14, v15, :cond_13

    .line 183
    aget v16, v9, v14

    .local v16, "x":I
    aget v17, v9, v15

    aput v17, v9, v14

    aput v16, v9, v15

    .line 184
    add-int/lit8 v17, v14, 0x1

    aget v16, v9, v17

    add-int/lit8 v17, v14, 0x1

    add-int/lit8 v18, v15, 0x1

    aget v18, v9, v18

    aput v18, v9, v17

    add-int/lit8 v17, v15, 0x1

    aput v16, v9, v17

    .line 182
    .end local v16    # "x":I
    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v15, v15, -0x2

    goto :goto_b

    .line 186
    .end local v14    # "low":I
    .end local v15    # "hi":I
    :cond_13
    add-int/lit8 v12, v13, 0x2

    .line 176
    .end local v13    # "e":I
    :cond_14
    add-int/lit8 v12, v12, 0x2

    goto :goto_9

    .line 175
    .end local v12    # "i":I
    :cond_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 191
    .end local v2    # "level":I
    :cond_16
    new-instance v2, Landroid/text/Layout$Directions;

    invoke-direct {v2, v9}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v2
.end method
