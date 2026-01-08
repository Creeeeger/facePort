.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final EDGE_X:[I

.field public final EDGE_Y:[I

.field public final SEARCH_X:[I

.field public final SEARCH_Y:[I

.field public mCheckArray:[[I

.field public mEffectPath:Landroid/graphics/Path;

.field public mHeight:I

.field public final mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

.field public mWidth:I

.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mWidth:I

    .line 8
    .line 9
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mHeight:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    filled-new-array {p1, v0, v0, p1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->EDGE_X:[I

    .line 17
    .line 18
    filled-new-array {p1, p1, v0, v0}, [I

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->EDGE_Y:[I

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    filled-new-array {p1, v0, p1, v1}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->SEARCH_X:[I

    .line 30
    .line 31
    filled-new-array {v1, p1, v0, p1}, [I

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->SEARCH_Y:[I

    .line 36
    .line 37
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    .line 43
    .line 44
    return-void
.end method

.method public static calculateClipOutPath(Ljava/util/ArrayList;)Landroid/graphics/Path;
    .locals 15

    .line 1
    new-instance v7, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-lt v0, v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    const/4 v9, 0x0

    .line 18
    move v0, v9

    .line 19
    :goto_0
    if-ge v0, v8, :cond_1

    .line 20
    .line 21
    rem-int v1, v0, v8

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [F

    .line 28
    .line 29
    add-int/lit8 v10, v0, 0x1

    .line 30
    .line 31
    rem-int v2, v10, v8

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, [F

    .line 38
    .line 39
    add-int/lit8 v3, v0, 0x2

    .line 40
    .line 41
    rem-int/2addr v3, v8

    .line 42
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, [F

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    const/high16 v5, 0x40000000    # 2.0f

    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    aget v0, v1, v9

    .line 54
    .line 55
    aget v6, v2, v9

    .line 56
    .line 57
    add-float/2addr v0, v6

    .line 58
    div-float/2addr v0, v5

    .line 59
    aget v6, v1, v4

    .line 60
    .line 61
    aget v11, v2, v4

    .line 62
    .line 63
    add-float/2addr v6, v11

    .line 64
    div-float/2addr v6, v5

    .line 65
    invoke-virtual {v7, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 66
    .line 67
    .line 68
    :cond_0
    aget v0, v1, v9

    .line 69
    .line 70
    aget v6, v2, v9

    .line 71
    .line 72
    add-float/2addr v0, v6

    .line 73
    div-float v11, v0, v5

    .line 74
    .line 75
    aget v0, v1, v4

    .line 76
    .line 77
    aget v12, v2, v4

    .line 78
    .line 79
    add-float/2addr v0, v12

    .line 80
    div-float v2, v0, v5

    .line 81
    .line 82
    aget v0, v3, v9

    .line 83
    .line 84
    add-float/2addr v0, v6

    .line 85
    div-float v13, v0, v5

    .line 86
    .line 87
    aget v0, v3, v4

    .line 88
    .line 89
    add-float/2addr v0, v12

    .line 90
    div-float v14, v0, v5

    .line 91
    .line 92
    move-object v0, v7

    .line 93
    move v1, v11

    .line 94
    move v3, v6

    .line 95
    move v4, v12

    .line 96
    move v5, v13

    .line 97
    move v6, v14

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 99
    .line 100
    .line 101
    move v0, v10

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 104
    .line 105
    .line 106
    :cond_2
    return-object v7
.end method


# virtual methods
.method public final getOuterLine([[I)Ljava/util/ArrayList;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v6, 0x2

    .line 6
    const/4 v7, 0x1

    .line 7
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    int-to-float v3, v3

    .line 18
    const/4 v8, 0x0

    .line 19
    aget-object v5, v2, v8

    .line 20
    .line 21
    array-length v5, v5

    .line 22
    int-to-float v5, v5

    .line 23
    div-float v5, v3, v5

    .line 24
    .line 25
    int-to-float v4, v4

    .line 26
    array-length v9, v2

    .line 27
    int-to-float v9, v9

    .line 28
    div-float v9, v4, v9

    .line 29
    .line 30
    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    .line 31
    .line 32
    iget v11, v10, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellMax:I

    .line 33
    .line 34
    const/high16 v12, 0x40000000    # 2.0f

    .line 35
    .line 36
    const/4 v13, -0x1

    .line 37
    if-eq v11, v13, :cond_0

    .line 38
    .line 39
    iget v11, v10, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellMax:I

    .line 40
    .line 41
    if-eq v11, v13, :cond_0

    .line 42
    .line 43
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v5, v10, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellMax:I

    .line 50
    .line 51
    int-to-float v5, v5

    .line 52
    iget v9, v10, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellMax:I

    .line 53
    .line 54
    int-to-float v9, v9

    .line 55
    iget v11, v10, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    .line 56
    .line 57
    int-to-float v11, v11

    .line 58
    iget v10, v10, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    .line 59
    .line 60
    int-to-float v10, v10

    .line 61
    iget v14, v1, Landroid/graphics/Point;->x:I

    .line 62
    .line 63
    int-to-float v14, v14

    .line 64
    div-float v5, v14, v5

    .line 65
    .line 66
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    div-float v9, v1, v9

    .line 70
    .line 71
    mul-float/2addr v11, v5

    .line 72
    sub-float/2addr v3, v11

    .line 73
    div-float/2addr v3, v12

    .line 74
    mul-float/2addr v10, v9

    .line 75
    sub-float/2addr v4, v10

    .line 76
    move v10, v4

    .line 77
    move v11, v5

    .line 78
    move v14, v9

    .line 79
    move v9, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 v3, 0x0

    .line 82
    move v10, v3

    .line 83
    move v11, v5

    .line 84
    move v14, v9

    .line 85
    move v9, v10

    .line 86
    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    array-length v1, v2

    .line 92
    aget-object v3, v2, v8

    .line 93
    .line 94
    array-length v3, v3

    .line 95
    new-array v4, v6, [I

    .line 96
    .line 97
    aput v3, v4, v7

    .line 98
    .line 99
    aput v1, v4, v8

    .line 100
    .line 101
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 102
    .line 103
    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, [[I

    .line 108
    .line 109
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mCheckArray:[[I

    .line 110
    .line 111
    filled-new-array {v8, v13}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    filled-new-array {v13, v8}, [I

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    filled-new-array {v8, v7}, [I

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    filled-new-array {v7, v8}, [I

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    filled-new-array {v1, v3, v4, v5}, [[I

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    aget-object v3, v2, v8

    .line 132
    .line 133
    array-length v3, v3

    .line 134
    div-int/2addr v3, v6

    .line 135
    array-length v4, v2

    .line 136
    div-int/2addr v4, v6

    .line 137
    move v5, v3

    .line 138
    move/from16 v16, v7

    .line 139
    .line 140
    move v3, v8

    .line 141
    :goto_1
    const/4 v12, 0x4

    .line 142
    if-ge v3, v12, :cond_8

    .line 143
    .line 144
    rem-int/lit8 v17, v3, 0x2

    .line 145
    .line 146
    if-nez v17, :cond_1

    .line 147
    .line 148
    add-int/lit8 v16, v16, 0x1

    .line 149
    .line 150
    :cond_1
    move/from16 v12, v16

    .line 151
    .line 152
    move v6, v8

    .line 153
    :goto_2
    if-ge v6, v12, :cond_7

    .line 154
    .line 155
    if-ltz v4, :cond_4

    .line 156
    .line 157
    if-ltz v5, :cond_4

    .line 158
    .line 159
    array-length v13, v2

    .line 160
    if-ge v4, v13, :cond_4

    .line 161
    .line 162
    aget-object v13, v2, v8

    .line 163
    .line 164
    array-length v13, v13

    .line 165
    if-ge v5, v13, :cond_4

    .line 166
    .line 167
    aget-object v13, v2, v4

    .line 168
    .line 169
    aget v13, v13, v5

    .line 170
    .line 171
    if-ne v13, v7, :cond_2

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_2
    aget-object v13, v1, v3

    .line 175
    .line 176
    aget v18, v13, v8

    .line 177
    .line 178
    add-int v5, v5, v18

    .line 179
    .line 180
    aget v13, v13, v7

    .line 181
    .line 182
    add-int/2addr v4, v13

    .line 183
    const/4 v13, 0x3

    .line 184
    if-ne v3, v13, :cond_3

    .line 185
    .line 186
    add-int/lit8 v13, v12, -0x1

    .line 187
    .line 188
    if-ne v6, v13, :cond_3

    .line 189
    .line 190
    array-length v13, v2

    .line 191
    const/16 v16, 0x2

    .line 192
    .line 193
    div-int/lit8 v13, v13, 0x2

    .line 194
    .line 195
    if-ge v12, v13, :cond_3

    .line 196
    .line 197
    const/4 v3, -0x1

    .line 198
    :cond_3
    add-int/2addr v6, v7

    .line 199
    goto :goto_2

    .line 200
    :cond_4
    :goto_3
    if-ltz v4, :cond_6

    .line 201
    .line 202
    if-ltz v5, :cond_6

    .line 203
    .line 204
    array-length v3, v2

    .line 205
    if-ge v4, v3, :cond_6

    .line 206
    .line 207
    aget-object v3, v2, v8

    .line 208
    .line 209
    array-length v3, v3

    .line 210
    if-lt v5, v3, :cond_5

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_5
    const/4 v3, 0x5

    .line 214
    goto :goto_5

    .line 215
    :cond_6
    :goto_4
    const/4 v3, 0x4

    .line 216
    :cond_7
    :goto_5
    add-int/2addr v3, v7

    .line 217
    move/from16 v16, v12

    .line 218
    .line 219
    const/4 v6, 0x2

    .line 220
    const/high16 v12, 0x40000000    # 2.0f

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_8
    const/4 v1, 0x6

    .line 224
    if-ne v3, v1, :cond_f

    .line 225
    .line 226
    aget-object v1, v2, v4

    .line 227
    .line 228
    aget v1, v1, v5

    .line 229
    .line 230
    if-ne v1, v7, :cond_f

    .line 231
    .line 232
    const/4 v6, 0x0

    .line 233
    move-object/from16 v0, p0

    .line 234
    .line 235
    move-object v1, v15

    .line 236
    move-object/from16 v2, p1

    .line 237
    .line 238
    move v3, v5

    .line 239
    move v12, v4

    .line 240
    move v13, v5

    .line 241
    move v5, v6

    .line 242
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->searchNeighborBlock(Ljava/util/ArrayList;[[IIII)V

    .line 243
    .line 244
    .line 245
    new-instance v0, Landroid/graphics/Point;

    .line 246
    .line 247
    invoke-direct {v0, v13, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move v0, v8

    .line 254
    :goto_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    const/4 v2, 0x2

    .line 259
    add-int/lit8 v6, v0, 0x2

    .line 260
    .line 261
    if-le v1, v6, :cond_b

    .line 262
    .line 263
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Landroid/graphics/Point;

    .line 268
    .line 269
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 270
    .line 271
    add-int/lit8 v2, v0, 0x1

    .line 272
    .line 273
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    check-cast v3, Landroid/graphics/Point;

    .line 278
    .line 279
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 280
    .line 281
    if-ne v1, v3, :cond_9

    .line 282
    .line 283
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    check-cast v1, Landroid/graphics/Point;

    .line 288
    .line 289
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 290
    .line 291
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    check-cast v3, Landroid/graphics/Point;

    .line 296
    .line 297
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 298
    .line 299
    if-ne v1, v3, :cond_a

    .line 300
    .line 301
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_9
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Landroid/graphics/Point;

    .line 310
    .line 311
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 312
    .line 313
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    check-cast v3, Landroid/graphics/Point;

    .line 318
    .line 319
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 320
    .line 321
    if-ne v1, v3, :cond_a

    .line 322
    .line 323
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    check-cast v1, Landroid/graphics/Point;

    .line 328
    .line 329
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 330
    .line 331
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    check-cast v3, Landroid/graphics/Point;

    .line 336
    .line 337
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 338
    .line 339
    if-ne v1, v3, :cond_a

    .line 340
    .line 341
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_a
    move v0, v2

    .line 346
    goto :goto_6

    .line 347
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-eqz v2, :cond_c

    .line 361
    .line 362
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    check-cast v2, Landroid/graphics/Point;

    .line 367
    .line 368
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 369
    .line 370
    int-to-float v3, v3

    .line 371
    mul-float/2addr v3, v11

    .line 372
    add-float/2addr v3, v9

    .line 373
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 374
    .line 375
    int-to-float v2, v2

    .line 376
    mul-float/2addr v2, v14

    .line 377
    add-float/2addr v2, v10

    .line 378
    const/4 v4, 0x2

    .line 379
    new-array v5, v4, [F

    .line 380
    .line 381
    aput v3, v5, v8

    .line 382
    .line 383
    aput v2, v5, v7

    .line 384
    .line 385
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_c
    move v2, v8

    .line 390
    const/4 v1, 0x3

    .line 391
    :goto_8
    if-ge v2, v1, :cond_e

    .line 392
    .line 393
    new-instance v3, Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .line 397
    .line 398
    move v4, v8

    .line 399
    :goto_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    if-ge v4, v5, :cond_d

    .line 404
    .line 405
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    check-cast v5, [F

    .line 410
    .line 411
    add-int/2addr v4, v7

    .line 412
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    rem-int v6, v4, v6

    .line 417
    .line 418
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    check-cast v6, [F

    .line 423
    .line 424
    aget v9, v5, v8

    .line 425
    .line 426
    aget v10, v6, v8

    .line 427
    .line 428
    add-float/2addr v9, v10

    .line 429
    const/high16 v10, 0x40000000    # 2.0f

    .line 430
    .line 431
    div-float/2addr v9, v10

    .line 432
    aget v5, v5, v7

    .line 433
    .line 434
    aget v6, v6, v7

    .line 435
    .line 436
    add-float/2addr v5, v6

    .line 437
    div-float/2addr v5, v10

    .line 438
    const/4 v6, 0x2

    .line 439
    new-array v11, v6, [F

    .line 440
    .line 441
    aput v9, v11, v8

    .line 442
    .line 443
    aput v5, v11, v7

    .line 444
    .line 445
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_d
    const/4 v6, 0x2

    .line 450
    const/high16 v10, 0x40000000    # 2.0f

    .line 451
    .line 452
    add-int/2addr v2, v7

    .line 453
    move-object v0, v3

    .line 454
    goto :goto_8

    .line 455
    :cond_e
    return-object v0

    .line 456
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    return-object v0
.end method

.method public final searchNeighborBlock(Ljava/util/ArrayList;[[IIII)V
    .locals 13

    .line 1
    move-object v6, p0

    .line 2
    move-object v7, p2

    .line 3
    iget-object v0, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mCheckArray:[[I

    .line 4
    .line 5
    aget-object v0, v0, p4

    .line 6
    .line 7
    aget v1, v0, p3

    .line 8
    .line 9
    const/4 v8, 0x1

    .line 10
    if-ne v1, v8, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    aput v8, v0, p3

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    move v10, v9

    .line 17
    :goto_0
    const/4 v0, 0x4

    .line 18
    if-ge v10, v0, :cond_5

    .line 19
    .line 20
    add-int v1, p5, v10

    .line 21
    .line 22
    rem-int/2addr v1, v0

    .line 23
    iget-object v2, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->EDGE_Y:[I

    .line 24
    .line 25
    aget v2, v2, v1

    .line 26
    .line 27
    add-int v2, p4, v2

    .line 28
    .line 29
    iget-object v3, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->EDGE_X:[I

    .line 30
    .line 31
    aget v3, v3, v1

    .line 32
    .line 33
    add-int v3, p3, v3

    .line 34
    .line 35
    iget-object v4, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->SEARCH_X:[I

    .line 36
    .line 37
    aget v4, v4, v1

    .line 38
    .line 39
    add-int v4, p3, v4

    .line 40
    .line 41
    iget-object v5, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->SEARCH_Y:[I

    .line 42
    .line 43
    aget v5, v5, v1

    .line 44
    .line 45
    add-int v5, p4, v5

    .line 46
    .line 47
    aget-object v11, v7, p4

    .line 48
    .line 49
    aget v11, v11, p3

    .line 50
    .line 51
    if-ne v11, v8, :cond_1

    .line 52
    .line 53
    if-ltz v5, :cond_2

    .line 54
    .line 55
    if-ltz v4, :cond_2

    .line 56
    .line 57
    array-length v11, v7

    .line 58
    if-ge v5, v11, :cond_2

    .line 59
    .line 60
    aget-object v11, v7, v9

    .line 61
    .line 62
    array-length v11, v11

    .line 63
    if-ge v4, v11, :cond_2

    .line 64
    .line 65
    aget-object v11, v7, v5

    .line 66
    .line 67
    aget v11, v11, v4

    .line 68
    .line 69
    if-nez v11, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move-object v11, p1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_1
    if-ltz v5, :cond_3

    .line 75
    .line 76
    if-lez v4, :cond_3

    .line 77
    .line 78
    array-length v0, v7

    .line 79
    if-ge v5, v0, :cond_3

    .line 80
    .line 81
    aget-object v0, v7, v9

    .line 82
    .line 83
    array-length v0, v0

    .line 84
    if-ge v4, v0, :cond_3

    .line 85
    .line 86
    iget-object v0, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mCheckArray:[[I

    .line 87
    .line 88
    aget-object v0, v0, v5

    .line 89
    .line 90
    aput v8, v0, v4

    .line 91
    .line 92
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    .line 93
    .line 94
    invoke-direct {v0, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 95
    .line 96
    .line 97
    move-object v11, p1

    .line 98
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :goto_2
    iget-object v2, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mCheckArray:[[I

    .line 103
    .line 104
    aget-object v2, v2, v5

    .line 105
    .line 106
    aget v2, v2, v4

    .line 107
    .line 108
    if-ne v2, v8, :cond_4

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    add-int/lit8 v1, v1, 0x3

    .line 112
    .line 113
    rem-int/lit8 v12, v1, 0x4

    .line 114
    .line 115
    move-object v0, p0

    .line 116
    move-object v1, p1

    .line 117
    move-object v2, p2

    .line 118
    move v3, v4

    .line 119
    move v4, v5

    .line 120
    move v5, v12

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->searchNeighborBlock(Ljava/util/ArrayList;[[IIII)V

    .line 122
    .line 123
    .line 124
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    return-void
.end method
