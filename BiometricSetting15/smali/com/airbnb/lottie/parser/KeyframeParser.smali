.class public abstract Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    const-string v7, "to"

    .line 9
    .line 10
    const-string v8, "ti"

    .line 11
    .line 12
    const-string v1, "t"

    .line 13
    .line 14
    const-string v2, "s"

    .line 15
    .line 16
    const-string v3, "e"

    .line 17
    .line 18
    const-string v4, "o"

    .line 19
    .line 20
    const-string v5, "i"

    .line 21
    .line 22
    const-string v6, "h"

    .line 23
    .line 24
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 33
    .line 34
    const-string v0, "x"

    .line 35
    .line 36
    const-string v1, "y"

    .line 37
    .line 38
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 47
    .line 48
    return-void
.end method

.method public static interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .locals 6

    .line 1
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 12
    .line 13
    iget v0, p0, Landroid/graphics/PointF;->y:F

    .line 14
    .line 15
    const/high16 v3, -0x3d380000    # -100.0f

    .line 16
    .line 17
    const/high16 v4, 0x42c80000    # 100.0f

    .line 18
    .line 19
    invoke-static {v0, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 24
    .line 25
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 32
    .line 33
    iget v0, p1, Landroid/graphics/PointF;->y:F

    .line 34
    .line 35
    invoke-static {v0, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 40
    .line 41
    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 42
    .line 43
    :try_start_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 44
    .line 45
    iget v3, p0, Landroid/graphics/PointF;->y:F

    .line 46
    .line 47
    iget v4, p1, Landroid/graphics/PointF;->x:F

    .line 48
    .line 49
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 50
    .line 51
    invoke-direct {v5, v1, v3, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "The Path cannot loop back on itself."

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 69
    .line 70
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 75
    .line 76
    iget v1, p1, Landroid/graphics/PointF;->x:F

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 84
    .line 85
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 86
    .line 87
    invoke-direct {v5, v0, p0, v1, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    .line 92
    .line 93
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-object v5
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    sget-object v3, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 8
    .line 9
    if-eqz p4, :cond_16

    .line 10
    .line 11
    if-eqz p5, :cond_16

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v15, 0x0

    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    const/16 v17, 0x0

    .line 29
    .line 30
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v18

    .line 34
    if-eqz v18, :cond_11

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 37
    .line 38
    .line 39
    move-result v18

    .line 40
    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 41
    .line 42
    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 43
    .line 44
    move-object/from16 v20, v3

    .line 45
    .line 46
    sget-object v3, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 47
    .line 48
    packed-switch v18, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 52
    .line 53
    .line 54
    :goto_1
    move-object/from16 v3, v20

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_0
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    goto :goto_1

    .line 62
    :pswitch_1
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    goto :goto_1

    .line 67
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x1

    .line 72
    if-ne v3, v4, :cond_0

    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    const/4 v8, 0x0

    .line 77
    goto :goto_1

    .line 78
    :pswitch_3
    move-object/from16 v18, v6

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-ne v6, v7, :cond_8

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 87
    .line 88
    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    const/4 v14, 0x0

    .line 92
    const/4 v15, 0x0

    .line 93
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v21

    .line 97
    if-eqz v21, :cond_7

    .line 98
    .line 99
    move-object/from16 v21, v5

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_4

    .line 106
    .line 107
    move-object/from16 p4, v12

    .line 108
    .line 109
    const/4 v12, 0x1

    .line 110
    if-eq v5, v12, :cond_1

    .line 111
    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 113
    .line 114
    .line 115
    move-object/from16 v12, p4

    .line 116
    .line 117
    :goto_3
    move-object/from16 v5, v21

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-ne v5, v4, :cond_2

    .line 125
    .line 126
    move-object/from16 p5, v13

    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 129
    .line 130
    .line 131
    move-result-wide v12

    .line 132
    double-to-float v15, v12

    .line 133
    move-object/from16 v12, p4

    .line 134
    .line 135
    move-object/from16 v13, p5

    .line 136
    .line 137
    move v7, v15

    .line 138
    goto :goto_3

    .line 139
    :cond_2
    move-object/from16 p5, v13

    .line 140
    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 145
    .line 146
    .line 147
    move-result-wide v12

    .line 148
    double-to-float v7, v12

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-ne v5, v4, :cond_3

    .line 154
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 156
    .line 157
    .line 158
    move-result-wide v12

    .line 159
    double-to-float v5, v12

    .line 160
    move v15, v5

    .line 161
    goto :goto_4

    .line 162
    :cond_3
    move v15, v7

    .line 163
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 164
    .line 165
    .line 166
    :goto_5
    move-object/from16 v12, p4

    .line 167
    .line 168
    move-object/from16 v13, p5

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    move-object/from16 p4, v12

    .line 172
    .line 173
    move-object/from16 p5, v13

    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    if-ne v5, v4, :cond_5

    .line 180
    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 182
    .line 183
    .line 184
    move-result-wide v5

    .line 185
    double-to-float v14, v5

    .line 186
    move-object/from16 v12, p4

    .line 187
    .line 188
    move-object/from16 v13, p5

    .line 189
    .line 190
    move v6, v14

    .line 191
    goto :goto_3

    .line 192
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    double-to-float v6, v5

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    if-ne v5, v4, :cond_6

    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 207
    .line 208
    .line 209
    move-result-wide v12

    .line 210
    double-to-float v5, v12

    .line 211
    move v14, v5

    .line 212
    goto :goto_6

    .line 213
    :cond_6
    move v14, v6

    .line 214
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_7
    move-object/from16 v21, v5

    .line 219
    .line 220
    move-object/from16 p4, v12

    .line 221
    .line 222
    move-object/from16 p5, v13

    .line 223
    .line 224
    new-instance v3, Landroid/graphics/PointF;

    .line 225
    .line 226
    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 227
    .line 228
    .line 229
    new-instance v4, Landroid/graphics/PointF;

    .line 230
    .line 231
    invoke-direct {v4, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 235
    .line 236
    .line 237
    move-object v14, v3

    .line 238
    move-object v15, v4

    .line 239
    :goto_7
    move-object/from16 v6, v18

    .line 240
    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :cond_8
    move-object/from16 v21, v5

    .line 244
    .line 245
    move-object/from16 p4, v12

    .line 246
    .line 247
    move-object/from16 p5, v13

    .line 248
    .line 249
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    goto :goto_7

    .line 254
    :pswitch_4
    move-object/from16 v21, v5

    .line 255
    .line 256
    move-object/from16 v18, v6

    .line 257
    .line 258
    move-object/from16 p4, v12

    .line 259
    .line 260
    move-object/from16 p5, v13

    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    if-ne v5, v7, :cond_10

    .line 267
    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 269
    .line 270
    .line 271
    const/4 v5, 0x0

    .line 272
    const/4 v6, 0x0

    .line 273
    const/4 v7, 0x0

    .line 274
    const/4 v11, 0x0

    .line 275
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    if-eqz v12, :cond_f

    .line 280
    .line 281
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 282
    .line 283
    .line 284
    move-result v12

    .line 285
    if-eqz v12, :cond_c

    .line 286
    .line 287
    const/4 v13, 0x1

    .line 288
    if-eq v12, v13, :cond_9

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    if-ne v6, v4, :cond_a

    .line 299
    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 301
    .line 302
    .line 303
    move-result-wide v11

    .line 304
    double-to-float v11, v11

    .line 305
    move v6, v11

    .line 306
    goto :goto_8

    .line 307
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 311
    .line 312
    .line 313
    move-result-wide v11

    .line 314
    double-to-float v6, v11

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    if-ne v11, v4, :cond_b

    .line 320
    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 322
    .line 323
    .line 324
    move-result-wide v11

    .line 325
    double-to-float v11, v11

    .line 326
    goto :goto_9

    .line 327
    :cond_b
    move v11, v6

    .line 328
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 329
    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    if-ne v5, v4, :cond_d

    .line 337
    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 339
    .line 340
    .line 341
    move-result-wide v12

    .line 342
    double-to-float v7, v12

    .line 343
    move v5, v7

    .line 344
    goto :goto_8

    .line 345
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 346
    .line 347
    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 349
    .line 350
    .line 351
    move-result-wide v12

    .line 352
    double-to-float v5, v12

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    if-ne v7, v4, :cond_e

    .line 358
    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 360
    .line 361
    .line 362
    move-result-wide v12

    .line 363
    double-to-float v7, v12

    .line 364
    goto :goto_a

    .line 365
    :cond_e
    move v7, v5

    .line 366
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 367
    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_f
    new-instance v3, Landroid/graphics/PointF;

    .line 371
    .line 372
    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 373
    .line 374
    .line 375
    new-instance v13, Landroid/graphics/PointF;

    .line 376
    .line 377
    invoke-direct {v13, v7, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 378
    .line 379
    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 381
    .line 382
    .line 383
    move-object/from16 v12, p4

    .line 384
    .line 385
    move-object v11, v3

    .line 386
    :goto_b
    move-object/from16 v6, v18

    .line 387
    .line 388
    move-object/from16 v3, v20

    .line 389
    .line 390
    move-object/from16 v5, v21

    .line 391
    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :cond_10
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    move-object/from16 v12, p4

    .line 399
    .line 400
    move-object/from16 v13, p5

    .line 401
    .line 402
    goto :goto_b

    .line 403
    :pswitch_5
    move-object/from16 v21, v5

    .line 404
    .line 405
    move-object/from16 v18, v6

    .line 406
    .line 407
    move-object/from16 p4, v12

    .line 408
    .line 409
    move-object/from16 p5, v13

    .line 410
    .line 411
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v17

    .line 415
    goto/16 :goto_1

    .line 416
    .line 417
    :pswitch_6
    move-object/from16 v21, v5

    .line 418
    .line 419
    move-object/from16 v18, v6

    .line 420
    .line 421
    move-object/from16 p5, v13

    .line 422
    .line 423
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v12

    .line 427
    goto/16 :goto_1

    .line 428
    .line 429
    :pswitch_7
    move-object/from16 v21, v5

    .line 430
    .line 431
    move-object/from16 v18, v6

    .line 432
    .line 433
    move-object/from16 p4, v12

    .line 434
    .line 435
    move-object/from16 p5, v13

    .line 436
    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 438
    .line 439
    .line 440
    move-result-wide v3

    .line 441
    double-to-float v3, v3

    .line 442
    move/from16 v16, v3

    .line 443
    .line 444
    goto/16 :goto_1

    .line 445
    .line 446
    :cond_11
    move-object/from16 v21, v5

    .line 447
    .line 448
    move-object/from16 v18, v6

    .line 449
    .line 450
    move-object/from16 p4, v12

    .line 451
    .line 452
    move-object/from16 p5, v13

    .line 453
    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 455
    .line 456
    .line 457
    if-eqz v8, :cond_12

    .line 458
    .line 459
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 460
    .line 461
    move-object/from16 v13, p4

    .line 462
    .line 463
    :goto_c
    const/4 v14, 0x0

    .line 464
    const/4 v15, 0x0

    .line 465
    goto :goto_e

    .line 466
    :cond_12
    if-eqz v9, :cond_13

    .line 467
    .line 468
    if-eqz v10, :cond_13

    .line 469
    .line 470
    invoke-static {v9, v10}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    :goto_d
    move-object/from16 v13, v17

    .line 475
    .line 476
    goto :goto_c

    .line 477
    :cond_13
    if-eqz v11, :cond_14

    .line 478
    .line 479
    if-eqz p5, :cond_14

    .line 480
    .line 481
    if-eqz v14, :cond_14

    .line 482
    .line 483
    if-eqz v15, :cond_14

    .line 484
    .line 485
    invoke-static {v11, v14}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    move-object/from16 v13, p5

    .line 490
    .line 491
    invoke-static {v13, v15}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    move-object v14, v0

    .line 496
    move-object v15, v1

    .line 497
    move-object/from16 v13, v17

    .line 498
    .line 499
    const/4 v0, 0x0

    .line 500
    goto :goto_e

    .line 501
    :cond_14
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 502
    .line 503
    goto :goto_d

    .line 504
    :goto_e
    if-eqz v14, :cond_15

    .line 505
    .line 506
    if-eqz v15, :cond_15

    .line 507
    .line 508
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 509
    .line 510
    move-object v10, v0

    .line 511
    move-object/from16 v11, p1

    .line 512
    .line 513
    move-object/from16 v12, p4

    .line 514
    .line 515
    invoke-direct/range {v10 .. v16}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;F)V

    .line 516
    .line 517
    .line 518
    :goto_f
    move-object/from16 v5, v21

    .line 519
    .line 520
    goto :goto_10

    .line 521
    :cond_15
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 522
    .line 523
    const/4 v2, 0x0

    .line 524
    move-object v10, v1

    .line 525
    move-object/from16 v11, p1

    .line 526
    .line 527
    move-object/from16 v12, p4

    .line 528
    .line 529
    move-object v14, v0

    .line 530
    move/from16 v15, v16

    .line 531
    .line 532
    move-object/from16 v16, v2

    .line 533
    .line 534
    invoke-direct/range {v10 .. v16}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 535
    .line 536
    .line 537
    move-object v0, v1

    .line 538
    goto :goto_f

    .line 539
    :goto_10
    iput-object v5, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 540
    .line 541
    move-object/from16 v6, v18

    .line 542
    .line 543
    iput-object v6, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 544
    .line 545
    return-object v0

    .line 546
    :cond_16
    move-object/from16 v20, v3

    .line 547
    .line 548
    if-eqz p4, :cond_1b

    .line 549
    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 551
    .line 552
    .line 553
    const/4 v3, 0x0

    .line 554
    const/4 v4, 0x0

    .line 555
    const/4 v5, 0x0

    .line 556
    const/4 v6, 0x0

    .line 557
    const/4 v7, 0x0

    .line 558
    const/4 v9, 0x0

    .line 559
    const/4 v12, 0x0

    .line 560
    const/16 v19, 0x0

    .line 561
    .line 562
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 563
    .line 564
    .line 565
    move-result v8

    .line 566
    if-eqz v8, :cond_18

    .line 567
    .line 568
    move-object/from16 v8, v20

    .line 569
    .line 570
    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 571
    .line 572
    .line 573
    move-result v10

    .line 574
    const/high16 v11, 0x3f800000    # 1.0f

    .line 575
    .line 576
    packed-switch v10, :pswitch_data_1

    .line 577
    .line 578
    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 580
    .line 581
    .line 582
    :goto_12
    move-object/from16 v20, v8

    .line 583
    .line 584
    goto :goto_11

    .line 585
    :pswitch_8
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 586
    .line 587
    .line 588
    move-result-object v5

    .line 589
    goto :goto_12

    .line 590
    :pswitch_9
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    goto :goto_12

    .line 595
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 596
    .line 597
    .line 598
    move-result v6

    .line 599
    const/4 v10, 0x1

    .line 600
    if-ne v6, v10, :cond_17

    .line 601
    .line 602
    move v6, v10

    .line 603
    goto :goto_12

    .line 604
    :cond_17
    const/4 v6, 0x0

    .line 605
    goto :goto_12

    .line 606
    :pswitch_b
    const/4 v10, 0x1

    .line 607
    invoke-static {v0, v11}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    goto :goto_12

    .line 612
    :pswitch_c
    const/4 v10, 0x1

    .line 613
    invoke-static {v0, v11}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 614
    .line 615
    .line 616
    move-result-object v7

    .line 617
    goto :goto_12

    .line 618
    :pswitch_d
    const/4 v10, 0x1

    .line 619
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v19

    .line 623
    goto :goto_12

    .line 624
    :pswitch_e
    const/4 v10, 0x1

    .line 625
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v9

    .line 629
    goto :goto_12

    .line 630
    :pswitch_f
    const/4 v10, 0x1

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 632
    .line 633
    .line 634
    move-result-wide v11

    .line 635
    double-to-float v12, v11

    .line 636
    goto :goto_12

    .line 637
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 638
    .line 639
    .line 640
    if-eqz v6, :cond_19

    .line 641
    .line 642
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 643
    .line 644
    move-object v11, v0

    .line 645
    move-object v10, v9

    .line 646
    goto :goto_14

    .line 647
    :cond_19
    if-eqz v7, :cond_1a

    .line 648
    .line 649
    if-eqz v3, :cond_1a

    .line 650
    .line 651
    invoke-static {v7, v3}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    :goto_13
    move-object v11, v0

    .line 656
    move-object/from16 v10, v19

    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_1a
    sget-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 660
    .line 661
    goto :goto_13

    .line 662
    :goto_14
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 663
    .line 664
    const/4 v13, 0x0

    .line 665
    move-object v7, v0

    .line 666
    move-object/from16 v8, p1

    .line 667
    .line 668
    invoke-direct/range {v7 .. v13}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 669
    .line 670
    .line 671
    iput-object v4, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 672
    .line 673
    iput-object v5, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 674
    .line 675
    return-object v0

    .line 676
    :cond_1b
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 681
    .line 682
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 683
    .line 684
    .line 685
    return-object v1

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
