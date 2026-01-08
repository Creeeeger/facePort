.class public abstract Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const-string v23, "ao"

    .line 2
    .line 3
    const-string v24, "bm"

    .line 4
    .line 5
    const-string v0, "nm"

    .line 6
    .line 7
    const-string v1, "ind"

    .line 8
    .line 9
    const-string v2, "refId"

    .line 10
    .line 11
    const-string v3, "ty"

    .line 12
    .line 13
    const-string v4, "parent"

    .line 14
    .line 15
    const-string v5, "sw"

    .line 16
    .line 17
    const-string v6, "sh"

    .line 18
    .line 19
    const-string v7, "sc"

    .line 20
    .line 21
    const-string v8, "ks"

    .line 22
    .line 23
    const-string v9, "tt"

    .line 24
    .line 25
    const-string v10, "masksProperties"

    .line 26
    .line 27
    const-string v11, "shapes"

    .line 28
    .line 29
    const-string v12, "t"

    .line 30
    .line 31
    const-string v13, "ef"

    .line 32
    .line 33
    const-string v14, "sr"

    .line 34
    .line 35
    const-string v15, "st"

    .line 36
    .line 37
    const-string v16, "w"

    .line 38
    .line 39
    const-string v17, "h"

    .line 40
    .line 41
    const-string v18, "ip"

    .line 42
    .line 43
    const-string v19, "op"

    .line 44
    .line 45
    const-string v20, "tm"

    .line 46
    .line 47
    const-string v21, "cl"

    .line 48
    .line 49
    const-string v22, "hd"

    .line 50
    .line 51
    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 60
    .line 61
    const-string v0, "d"

    .line 62
    .line 63
    const-string v1, "a"

    .line 64
    .line 65
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 74
    .line 75
    const-string v0, "ty"

    .line 76
    .line 77
    const-string v1, "nm"

    .line 78
    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 88
    .line 89
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 8
    .line 9
    sget-object v8, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 10
    .line 11
    new-instance v10, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v9, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 22
    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    const/high16 v13, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object v14

    .line 35
    const-string v15, "UNSET"

    .line 36
    .line 37
    const-wide/16 v17, 0x0

    .line 38
    .line 39
    const/4 v13, 0x0

    .line 40
    const-wide/16 v20, -0x1

    .line 41
    .line 42
    move-object/from16 v33, v6

    .line 43
    .line 44
    move-object/from16 v38, v8

    .line 45
    .line 46
    move/from16 v19, v11

    .line 47
    .line 48
    move/from16 v28, v19

    .line 49
    .line 50
    move/from16 v29, v28

    .line 51
    .line 52
    move/from16 v30, v29

    .line 53
    .line 54
    move/from16 v39, v30

    .line 55
    .line 56
    move/from16 v24, v13

    .line 57
    .line 58
    move/from16 v25, v24

    .line 59
    .line 60
    move/from16 v26, v25

    .line 61
    .line 62
    move/from16 v35, v26

    .line 63
    .line 64
    move/from16 v40, v35

    .line 65
    .line 66
    move-wide/from16 v21, v20

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    const/16 v20, 0x0

    .line 70
    .line 71
    const/16 v23, 0x0

    .line 72
    .line 73
    const/high16 v27, 0x3f800000    # 1.0f

    .line 74
    .line 75
    const/16 v31, 0x0

    .line 76
    .line 77
    const/16 v32, 0x0

    .line 78
    .line 79
    const/16 v34, 0x0

    .line 80
    .line 81
    const/16 v36, 0x0

    .line 82
    .line 83
    const/16 v37, 0x0

    .line 84
    .line 85
    const/16 v41, 0x0

    .line 86
    .line 87
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v42

    .line 91
    if-eqz v42, :cond_3a

    .line 92
    .line 93
    sget-object v11, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 94
    .line 95
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    packed-switch v11, :pswitch_data_0

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 106
    .line 107
    .line 108
    move-object/from16 v44, v6

    .line 109
    .line 110
    goto/16 :goto_1d

    .line 111
    .line 112
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    invoke-static {}, Lcom/airbnb/lottie/model/content/LBlendMode;->values()[Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    array-length v1, v1

    .line 121
    if-lt v11, v1, :cond_0

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v2, "Unsupported Blend Mode: "

    .line 126
    .line 127
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    move-object/from16 v38, v8

    .line 141
    .line 142
    :goto_1
    const/4 v11, 0x0

    .line 143
    goto :goto_0

    .line 144
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/content/LBlendMode;->values()[Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    aget-object v38, v1, v11

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-ne v1, v4, :cond_1

    .line 156
    .line 157
    move/from16 v40, v4

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_1
    move/from16 v40, v13

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 164
    .line 165
    .line 166
    move-result v35

    .line 167
    goto :goto_1

    .line 168
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    goto :goto_1

    .line 173
    :pswitch_4
    invoke-static {v0, v7, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 174
    .line 175
    .line 176
    move-result-object v34

    .line 177
    goto :goto_1

    .line 178
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    double-to-float v1, v1

    .line 183
    move/from16 v39, v1

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 187
    .line 188
    .line 189
    move-result-wide v1

    .line 190
    double-to-float v1, v1

    .line 191
    move/from16 v19, v1

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 195
    .line 196
    .line 197
    move-result-wide v1

    .line 198
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    move-object/from16 v44, v6

    .line 203
    .line 204
    float-to-double v5, v11

    .line 205
    mul-double/2addr v1, v5

    .line 206
    double-to-float v1, v1

    .line 207
    move/from16 v30, v1

    .line 208
    .line 209
    :goto_2
    move-object/from16 v6, v44

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :pswitch_8
    move-object/from16 v44, v6

    .line 213
    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 215
    .line 216
    .line 217
    move-result-wide v1

    .line 218
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    float-to-double v5, v5

    .line 223
    mul-double/2addr v1, v5

    .line 224
    double-to-float v1, v1

    .line 225
    move/from16 v29, v1

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :pswitch_9
    move-object/from16 v44, v6

    .line 229
    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 231
    .line 232
    .line 233
    move-result-wide v1

    .line 234
    double-to-float v1, v1

    .line 235
    move/from16 v28, v1

    .line 236
    .line 237
    goto :goto_1

    .line 238
    :pswitch_a
    move-object/from16 v44, v6

    .line 239
    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 241
    .line 242
    .line 243
    move-result-wide v1

    .line 244
    double-to-float v1, v1

    .line 245
    move/from16 v27, v1

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :pswitch_b
    move-object/from16 v44, v6

    .line 249
    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 251
    .line 252
    .line 253
    new-instance v1, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .line 257
    .line 258
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_1c

    .line 263
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 265
    .line 266
    .line 267
    :cond_2
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_1b

    .line 272
    .line 273
    sget-object v2, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_4

    .line 280
    .line 281
    if-eq v2, v4, :cond_3

    .line 282
    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_d

    .line 290
    .line 291
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto/16 :goto_d

    .line 299
    .line 300
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    const/16 v5, 0x1d

    .line 305
    .line 306
    if-ne v2, v5, :cond_d

    .line 307
    .line 308
    sget-object v2, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 309
    .line 310
    const/16 v36, 0x0

    .line 311
    .line 312
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_2

    .line 317
    .line 318
    sget-object v2, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_5

    .line 325
    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 327
    .line 328
    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 334
    .line 335
    .line 336
    :cond_6
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eqz v2, :cond_c

    .line 341
    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 343
    .line 344
    .line 345
    move v5, v13

    .line 346
    const/4 v2, 0x0

    .line 347
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-eqz v6, :cond_b

    .line 352
    .line 353
    sget-object v6, Lcom/airbnb/lottie/parser/BlurEffectParser;->INNER_BLUR_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 354
    .line 355
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-eqz v6, :cond_9

    .line 360
    .line 361
    if-eq v6, v4, :cond_7

    .line 362
    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 364
    .line 365
    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 367
    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_7
    if-eqz v5, :cond_8

    .line 371
    .line 372
    new-instance v2, Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 373
    .line 374
    invoke-static {v0, v7, v4}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    invoke-direct {v2, v6}, Lcom/airbnb/lottie/model/content/BlurEffect;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 379
    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 383
    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    if-nez v5, :cond_a

    .line 391
    .line 392
    move v5, v4

    .line 393
    goto :goto_7

    .line 394
    :cond_a
    move v5, v13

    .line 395
    goto :goto_7

    .line 396
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 397
    .line 398
    .line 399
    if-eqz v2, :cond_6

    .line 400
    .line 401
    move-object/from16 v36, v2

    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 405
    .line 406
    .line 407
    goto :goto_5

    .line 408
    :cond_d
    const/16 v5, 0x19

    .line 409
    .line 410
    if-ne v2, v5, :cond_1a

    .line 411
    .line 412
    new-instance v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;

    .line 413
    .line 414
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 415
    .line 416
    .line 417
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-eqz v5, :cond_18

    .line 422
    .line 423
    sget-object v5, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 424
    .line 425
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    if-eqz v5, :cond_e

    .line 430
    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 432
    .line 433
    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 435
    .line 436
    .line 437
    goto :goto_8

    .line 438
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 439
    .line 440
    .line 441
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    if-eqz v5, :cond_17

    .line 446
    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 448
    .line 449
    .line 450
    const-string v5, ""

    .line 451
    .line 452
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    if-eqz v6, :cond_16

    .line 457
    .line 458
    sget-object v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 459
    .line 460
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    if-eqz v6, :cond_15

    .line 465
    .line 466
    if-eq v6, v4, :cond_f

    .line 467
    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 469
    .line 470
    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 472
    .line 473
    .line 474
    goto :goto_a

    .line 475
    :cond_f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    sparse-switch v6, :sswitch_data_0

    .line 483
    .line 484
    .line 485
    :goto_b
    const/4 v6, -0x1

    .line 486
    goto :goto_c

    .line 487
    :sswitch_0
    const-string v6, "Softness"

    .line 488
    .line 489
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    if-nez v6, :cond_10

    .line 494
    .line 495
    goto :goto_b

    .line 496
    :cond_10
    const/4 v6, 0x4

    .line 497
    goto :goto_c

    .line 498
    :sswitch_1
    const-string v6, "Shadow Color"

    .line 499
    .line 500
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v6

    .line 504
    if-nez v6, :cond_11

    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_11
    const/4 v6, 0x3

    .line 508
    goto :goto_c

    .line 509
    :sswitch_2
    const-string v6, "Direction"

    .line 510
    .line 511
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v6

    .line 515
    if-nez v6, :cond_12

    .line 516
    .line 517
    goto :goto_b

    .line 518
    :cond_12
    move v6, v3

    .line 519
    goto :goto_c

    .line 520
    :sswitch_3
    const-string v6, "Opacity"

    .line 521
    .line 522
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    if-nez v6, :cond_13

    .line 527
    .line 528
    goto :goto_b

    .line 529
    :cond_13
    move v6, v4

    .line 530
    goto :goto_c

    .line 531
    :sswitch_4
    const-string v6, "Distance"

    .line 532
    .line 533
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    if-nez v6, :cond_14

    .line 538
    .line 539
    goto :goto_b

    .line 540
    :cond_14
    move v6, v13

    .line 541
    :goto_c
    packed-switch v6, :pswitch_data_1

    .line 542
    .line 543
    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 545
    .line 546
    .line 547
    goto :goto_a

    .line 548
    :pswitch_c
    invoke-static {v0, v7, v4}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 549
    .line 550
    .line 551
    move-result-object v6

    .line 552
    iput-object v6, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 553
    .line 554
    goto :goto_a

    .line 555
    :pswitch_d
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    iput-object v6, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 560
    .line 561
    goto :goto_a

    .line 562
    :pswitch_e
    invoke-static {v0, v7, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 563
    .line 564
    .line 565
    move-result-object v6

    .line 566
    iput-object v6, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 567
    .line 568
    goto :goto_a

    .line 569
    :pswitch_f
    invoke-static {v0, v7, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    iput-object v6, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 574
    .line 575
    goto :goto_a

    .line 576
    :pswitch_10
    invoke-static {v0, v7, v4}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 577
    .line 578
    .line 579
    move-result-object v6

    .line 580
    iput-object v6, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 581
    .line 582
    goto/16 :goto_a

    .line 583
    .line 584
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v5

    .line 588
    goto/16 :goto_a

    .line 589
    .line 590
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_9

    .line 594
    .line 595
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_8

    .line 599
    .line 600
    :cond_18
    iget-object v5, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 601
    .line 602
    if-eqz v5, :cond_19

    .line 603
    .line 604
    iget-object v6, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 605
    .line 606
    if-eqz v6, :cond_19

    .line 607
    .line 608
    iget-object v11, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 609
    .line 610
    if-eqz v11, :cond_19

    .line 611
    .line 612
    iget-object v13, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 613
    .line 614
    if-eqz v13, :cond_19

    .line 615
    .line 616
    iget-object v2, v2, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 617
    .line 618
    if-eqz v2, :cond_19

    .line 619
    .line 620
    new-instance v37, Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 621
    .line 622
    move-object/from16 v45, v37

    .line 623
    .line 624
    move-object/from16 v46, v5

    .line 625
    .line 626
    move-object/from16 v47, v6

    .line 627
    .line 628
    move-object/from16 v48, v11

    .line 629
    .line 630
    move-object/from16 v49, v13

    .line 631
    .line 632
    move-object/from16 v50, v2

    .line 633
    .line 634
    invoke-direct/range {v45 .. v50}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 635
    .line 636
    .line 637
    goto :goto_d

    .line 638
    :cond_19
    const/16 v37, 0x0

    .line 639
    .line 640
    :cond_1a
    :goto_d
    const/4 v13, 0x0

    .line 641
    goto/16 :goto_4

    .line 642
    .line 643
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 644
    .line 645
    .line 646
    const/4 v13, 0x0

    .line 647
    goto/16 :goto_3

    .line 648
    .line 649
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 650
    .line 651
    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    const-string v5, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    .line 655
    .line 656
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    :goto_e
    move-object/from16 v6, v44

    .line 670
    .line 671
    const/4 v11, 0x0

    .line 672
    const/4 v13, 0x0

    .line 673
    goto/16 :goto_0

    .line 674
    .line 675
    :pswitch_11
    move-object/from16 v44, v6

    .line 676
    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 678
    .line 679
    .line 680
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    if-eqz v1, :cond_29

    .line 685
    .line 686
    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 687
    .line 688
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    if-eqz v1, :cond_28

    .line 693
    .line 694
    if-eq v1, v4, :cond_1d

    .line 695
    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 697
    .line 698
    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 700
    .line 701
    .line 702
    goto :goto_f

    .line 703
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 704
    .line 705
    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    if-eqz v1, :cond_26

    .line 711
    .line 712
    sget-object v1, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 713
    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 715
    .line 716
    .line 717
    const/4 v1, 0x0

    .line 718
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    if-eqz v2, :cond_24

    .line 723
    .line 724
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 725
    .line 726
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    if-eqz v2, :cond_1e

    .line 731
    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 733
    .line 734
    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 736
    .line 737
    .line 738
    goto :goto_10

    .line 739
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 740
    .line 741
    .line 742
    const/4 v1, 0x0

    .line 743
    const/4 v2, 0x0

    .line 744
    const/4 v5, 0x0

    .line 745
    const/4 v6, 0x0

    .line 746
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 747
    .line 748
    .line 749
    move-result v11

    .line 750
    if-eqz v11, :cond_23

    .line 751
    .line 752
    sget-object v11, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 753
    .line 754
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 755
    .line 756
    .line 757
    move-result v11

    .line 758
    if-eqz v11, :cond_22

    .line 759
    .line 760
    if-eq v11, v4, :cond_21

    .line 761
    .line 762
    if-eq v11, v3, :cond_20

    .line 763
    .line 764
    const/4 v13, 0x3

    .line 765
    if-eq v11, v13, :cond_1f

    .line 766
    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 768
    .line 769
    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 771
    .line 772
    .line 773
    goto :goto_11

    .line 774
    :cond_1f
    invoke-static {v0, v7, v4}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 775
    .line 776
    .line 777
    move-result-object v6

    .line 778
    goto :goto_11

    .line 779
    :cond_20
    invoke-static {v0, v7, v4}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 780
    .line 781
    .line 782
    move-result-object v5

    .line 783
    goto :goto_11

    .line 784
    :cond_21
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    goto :goto_11

    .line 789
    :cond_22
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    goto :goto_11

    .line 794
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 795
    .line 796
    .line 797
    new-instance v11, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 798
    .line 799
    invoke-direct {v11, v1, v2, v5, v6}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 800
    .line 801
    .line 802
    move-object v1, v11

    .line 803
    goto :goto_10

    .line 804
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 805
    .line 806
    .line 807
    if-nez v1, :cond_25

    .line 808
    .line 809
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 810
    .line 811
    const/4 v2, 0x0

    .line 812
    invoke-direct {v1, v2, v2, v2, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 813
    .line 814
    .line 815
    goto :goto_12

    .line 816
    :cond_25
    const/4 v2, 0x0

    .line 817
    :goto_12
    move-object/from16 v32, v1

    .line 818
    .line 819
    goto :goto_13

    .line 820
    :cond_26
    const/4 v2, 0x0

    .line 821
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 822
    .line 823
    .line 824
    move-result v1

    .line 825
    if-eqz v1, :cond_27

    .line 826
    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 828
    .line 829
    .line 830
    goto :goto_13

    .line 831
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 832
    .line 833
    .line 834
    goto/16 :goto_f

    .line 835
    .line 836
    :cond_28
    const/4 v2, 0x0

    .line 837
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 838
    .line 839
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 840
    .line 841
    .line 842
    move-result v5

    .line 843
    sget-object v6, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    .line 844
    .line 845
    const/4 v11, 0x0

    .line 846
    invoke-static {v0, v7, v5, v6, v11}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 847
    .line 848
    .line 849
    move-result-object v5

    .line 850
    invoke-direct {v1, v5}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 851
    .line 852
    .line 853
    move-object/from16 v31, v1

    .line 854
    .line 855
    goto/16 :goto_f

    .line 856
    .line 857
    :cond_29
    const/4 v2, 0x0

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 859
    .line 860
    .line 861
    goto/16 :goto_e

    .line 862
    .line 863
    :pswitch_12
    move-object/from16 v44, v6

    .line 864
    .line 865
    const/4 v2, 0x0

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 867
    .line 868
    .line 869
    :cond_2a
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    if-eqz v1, :cond_2b

    .line 874
    .line 875
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    if-eqz v1, :cond_2a

    .line 880
    .line 881
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    goto :goto_14

    .line 885
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 886
    .line 887
    .line 888
    const/4 v13, 0x0

    .line 889
    goto/16 :goto_1d

    .line 890
    .line 891
    :pswitch_13
    move-object/from16 v44, v6

    .line 892
    .line 893
    const/4 v2, 0x0

    .line 894
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 895
    .line 896
    .line 897
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    if-eqz v1, :cond_35

    .line 902
    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 904
    .line 905
    .line 906
    move-object v1, v2

    .line 907
    move-object v5, v1

    .line 908
    move-object v6, v5

    .line 909
    const/4 v11, 0x0

    .line 910
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 911
    .line 912
    .line 913
    move-result v13

    .line 914
    if-eqz v13, :cond_34

    .line 915
    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v13

    .line 920
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 924
    .line 925
    .line 926
    move-result v43

    .line 927
    sparse-switch v43, :sswitch_data_1

    .line 928
    .line 929
    .line 930
    :goto_17
    const/4 v2, -0x1

    .line 931
    goto :goto_18

    .line 932
    :sswitch_5
    const-string v2, "mode"

    .line 933
    .line 934
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v2

    .line 938
    if-nez v2, :cond_2c

    .line 939
    .line 940
    goto :goto_17

    .line 941
    :cond_2c
    const/4 v2, 0x3

    .line 942
    goto :goto_18

    .line 943
    :sswitch_6
    const-string v2, "inv"

    .line 944
    .line 945
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    move-result v2

    .line 949
    if-nez v2, :cond_2d

    .line 950
    .line 951
    goto :goto_17

    .line 952
    :cond_2d
    move v2, v3

    .line 953
    goto :goto_18

    .line 954
    :sswitch_7
    const-string v2, "pt"

    .line 955
    .line 956
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    move-result v2

    .line 960
    if-nez v2, :cond_2e

    .line 961
    .line 962
    goto :goto_17

    .line 963
    :cond_2e
    move v2, v4

    .line 964
    goto :goto_18

    .line 965
    :sswitch_8
    const-string v2, "o"

    .line 966
    .line 967
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 968
    .line 969
    .line 970
    move-result v2

    .line 971
    if-nez v2, :cond_2f

    .line 972
    .line 973
    goto :goto_17

    .line 974
    :cond_2f
    const/4 v2, 0x0

    .line 975
    :goto_18
    packed-switch v2, :pswitch_data_2

    .line 976
    .line 977
    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 979
    .line 980
    .line 981
    :goto_19
    const/4 v13, 0x0

    .line 982
    goto/16 :goto_1c

    .line 983
    .line 984
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 989
    .line 990
    .line 991
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 992
    .line 993
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 994
    .line 995
    .line 996
    move-result v45

    .line 997
    sparse-switch v45, :sswitch_data_2

    .line 998
    .line 999
    .line 1000
    :goto_1a
    const/4 v1, -0x1

    .line 1001
    goto :goto_1b

    .line 1002
    :sswitch_9
    const-string v3, "s"

    .line 1003
    .line 1004
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v1

    .line 1008
    if-nez v1, :cond_30

    .line 1009
    .line 1010
    goto :goto_1a

    .line 1011
    :cond_30
    const/4 v1, 0x3

    .line 1012
    goto :goto_1b

    .line 1013
    :sswitch_a
    const-string v3, "n"

    .line 1014
    .line 1015
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v1

    .line 1019
    if-nez v1, :cond_31

    .line 1020
    .line 1021
    goto :goto_1a

    .line 1022
    :cond_31
    const/4 v1, 0x2

    .line 1023
    goto :goto_1b

    .line 1024
    :sswitch_b
    const-string v3, "i"

    .line 1025
    .line 1026
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1027
    .line 1028
    .line 1029
    move-result v1

    .line 1030
    if-nez v1, :cond_32

    .line 1031
    .line 1032
    goto :goto_1a

    .line 1033
    :cond_32
    move v1, v4

    .line 1034
    goto :goto_1b

    .line 1035
    :sswitch_c
    const-string v3, "a"

    .line 1036
    .line 1037
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v1

    .line 1041
    if-nez v1, :cond_33

    .line 1042
    .line 1043
    goto :goto_1a

    .line 1044
    :cond_33
    const/4 v1, 0x0

    .line 1045
    :goto_1b
    packed-switch v1, :pswitch_data_3

    .line 1046
    .line 1047
    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    const-string v3, "Unknown mask mode "

    .line 1051
    .line 1052
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    const-string v3, ". Defaulting to Add."

    .line 1059
    .line 1060
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    :pswitch_15
    move-object v1, v2

    .line 1071
    goto :goto_19

    .line 1072
    :pswitch_16
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1073
    .line 1074
    goto :goto_19

    .line 1075
    :pswitch_17
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1076
    .line 1077
    goto :goto_19

    .line 1078
    :pswitch_18
    const-string v1, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 1079
    .line 1080
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1084
    .line 1085
    goto :goto_19

    .line 1086
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1087
    .line 1088
    .line 1089
    move-result v2

    .line 1090
    move v11, v2

    .line 1091
    goto :goto_19

    .line 1092
    :pswitch_1a
    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 1093
    .line 1094
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1095
    .line 1096
    .line 1097
    move-result v2

    .line 1098
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    .line 1099
    .line 1100
    const/4 v13, 0x0

    .line 1101
    invoke-static {v0, v7, v2, v3, v13}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    invoke-direct {v5, v2}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 1106
    .line 1107
    .line 1108
    goto :goto_1c

    .line 1109
    :pswitch_1b
    const/4 v13, 0x0

    .line 1110
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v6

    .line 1114
    :goto_1c
    const/4 v2, 0x0

    .line 1115
    const/4 v3, 0x2

    .line 1116
    goto/16 :goto_16

    .line 1117
    .line 1118
    :cond_34
    const/4 v13, 0x0

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1120
    .line 1121
    .line 1122
    new-instance v2, Lcom/airbnb/lottie/model/content/Mask;

    .line 1123
    .line 1124
    invoke-direct {v2, v1, v5, v6, v11}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    .line 1129
    .line 1130
    const/4 v2, 0x0

    .line 1131
    const/4 v3, 0x2

    .line 1132
    goto/16 :goto_15

    .line 1133
    .line 1134
    :cond_35
    const/4 v13, 0x0

    .line 1135
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1136
    .line 1137
    .line 1138
    move-result v1

    .line 1139
    iget v2, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1140
    .line 1141
    add-int/2addr v2, v1

    .line 1142
    iput v2, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1143
    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1145
    .line 1146
    .line 1147
    goto :goto_1d

    .line 1148
    :pswitch_1c
    move-object/from16 v44, v6

    .line 1149
    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1151
    .line 1152
    .line 1153
    move-result v1

    .line 1154
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v2

    .line 1158
    array-length v2, v2

    .line 1159
    if-lt v1, v2, :cond_36

    .line 1160
    .line 1161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    const-string v3, "Unsupported matte type: "

    .line 1164
    .line 1165
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v1

    .line 1175
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    :goto_1d
    move-object/from16 v6, v44

    .line 1179
    .line 1180
    :goto_1e
    const/4 v3, 0x2

    .line 1181
    goto/16 :goto_1

    .line 1182
    .line 1183
    :cond_36
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v2

    .line 1187
    aget-object v33, v2, v1

    .line 1188
    .line 1189
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->ordinal()I

    .line 1190
    .line 1191
    .line 1192
    move-result v1

    .line 1193
    const/4 v2, 0x3

    .line 1194
    if-eq v1, v2, :cond_38

    .line 1195
    .line 1196
    const/4 v3, 0x4

    .line 1197
    if-eq v1, v3, :cond_37

    .line 1198
    .line 1199
    goto :goto_1f

    .line 1200
    :cond_37
    const-string v1, "Unsupported matte type: Luma Inverted"

    .line 1201
    .line 1202
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    goto :goto_1f

    .line 1206
    :cond_38
    const/4 v3, 0x4

    .line 1207
    const-string v1, "Unsupported matte type: Luma"

    .line 1208
    .line 1209
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    :goto_1f
    iget v1, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1213
    .line 1214
    add-int/2addr v1, v4

    .line 1215
    iput v1, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1216
    .line 1217
    goto :goto_1d

    .line 1218
    :pswitch_1d
    move-object/from16 v44, v6

    .line 1219
    .line 1220
    const/4 v2, 0x3

    .line 1221
    const/4 v3, 0x4

    .line 1222
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v41

    .line 1226
    goto :goto_1e

    .line 1227
    :pswitch_1e
    move-object/from16 v44, v6

    .line 1228
    .line 1229
    const/4 v2, 0x3

    .line 1230
    const/4 v3, 0x4

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1236
    .line 1237
    .line 1238
    move-result v26

    .line 1239
    goto :goto_1e

    .line 1240
    :pswitch_1f
    move-object/from16 v44, v6

    .line 1241
    .line 1242
    const/4 v2, 0x3

    .line 1243
    const/4 v3, 0x4

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1245
    .line 1246
    .line 1247
    move-result v1

    .line 1248
    int-to-float v1, v1

    .line 1249
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1250
    .line 1251
    .line 1252
    move-result v5

    .line 1253
    mul-float/2addr v5, v1

    .line 1254
    float-to-int v1, v5

    .line 1255
    move/from16 v25, v1

    .line 1256
    .line 1257
    goto :goto_1e

    .line 1258
    :pswitch_20
    move-object/from16 v44, v6

    .line 1259
    .line 1260
    const/4 v2, 0x3

    .line 1261
    const/4 v3, 0x4

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1263
    .line 1264
    .line 1265
    move-result v1

    .line 1266
    int-to-float v1, v1

    .line 1267
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1268
    .line 1269
    .line 1270
    move-result v5

    .line 1271
    mul-float/2addr v5, v1

    .line 1272
    float-to-int v1, v5

    .line 1273
    move/from16 v24, v1

    .line 1274
    .line 1275
    goto :goto_1e

    .line 1276
    :pswitch_21
    move-object/from16 v44, v6

    .line 1277
    .line 1278
    const/4 v2, 0x3

    .line 1279
    const/4 v3, 0x4

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1281
    .line 1282
    .line 1283
    move-result v1

    .line 1284
    int-to-long v5, v1

    .line 1285
    move-wide/from16 v21, v5

    .line 1286
    .line 1287
    goto :goto_1d

    .line 1288
    :pswitch_22
    move-object/from16 v44, v6

    .line 1289
    .line 1290
    const/4 v2, 0x3

    .line 1291
    const/4 v3, 0x4

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1293
    .line 1294
    .line 1295
    move-result v1

    .line 1296
    const/4 v5, 0x6

    .line 1297
    if-ge v1, v5, :cond_39

    .line 1298
    .line 1299
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v5

    .line 1303
    aget-object v20, v5, v1

    .line 1304
    .line 1305
    goto :goto_1d

    .line 1306
    :cond_39
    sget-object v20, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 1307
    .line 1308
    goto/16 :goto_1d

    .line 1309
    .line 1310
    :pswitch_23
    move-object/from16 v44, v6

    .line 1311
    .line 1312
    const/4 v2, 0x3

    .line 1313
    const/4 v3, 0x4

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v23

    .line 1318
    goto/16 :goto_1e

    .line 1319
    .line 1320
    :pswitch_24
    move-object/from16 v44, v6

    .line 1321
    .line 1322
    const/4 v2, 0x3

    .line 1323
    const/4 v3, 0x4

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1325
    .line 1326
    .line 1327
    move-result v1

    .line 1328
    int-to-long v5, v1

    .line 1329
    move-wide/from16 v17, v5

    .line 1330
    .line 1331
    goto/16 :goto_1d

    .line 1332
    .line 1333
    :pswitch_25
    move-object/from16 v44, v6

    .line 1334
    .line 1335
    const/4 v2, 0x3

    .line 1336
    const/4 v3, 0x4

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v15

    .line 1341
    goto/16 :goto_1e

    .line 1342
    .line 1343
    :cond_3a
    move-object/from16 v44, v6

    .line 1344
    .line 1345
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1346
    .line 1347
    .line 1348
    new-instance v13, Ljava/util/ArrayList;

    .line 1349
    .line 1350
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .line 1352
    .line 1353
    const/4 v0, 0x0

    .line 1354
    cmpl-float v1, v19, v0

    .line 1355
    .line 1356
    if-lez v1, :cond_3b

    .line 1357
    .line 1358
    new-instance v8, Lcom/airbnb/lottie/value/Keyframe;

    .line 1359
    .line 1360
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v6

    .line 1364
    const/4 v4, 0x0

    .line 1365
    const/4 v5, 0x0

    .line 1366
    move-object v0, v8

    .line 1367
    move-object/from16 v1, p1

    .line 1368
    .line 1369
    move-object v2, v12

    .line 1370
    move-object v3, v12

    .line 1371
    move-object/from16 v11, v44

    .line 1372
    .line 1373
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    .line 1378
    .line 1379
    :goto_20
    const/4 v0, 0x0

    .line 1380
    goto :goto_21

    .line 1381
    :cond_3b
    move-object/from16 v11, v44

    .line 1382
    .line 1383
    goto :goto_20

    .line 1384
    :goto_21
    cmpl-float v0, v39, v0

    .line 1385
    .line 1386
    if-lez v0, :cond_3c

    .line 1387
    .line 1388
    goto :goto_22

    .line 1389
    :cond_3c
    iget v0, v7, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 1390
    .line 1391
    move/from16 v39, v0

    .line 1392
    .line 1393
    :goto_22
    new-instance v8, Lcom/airbnb/lottie/value/Keyframe;

    .line 1394
    .line 1395
    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v6

    .line 1399
    const/4 v4, 0x0

    .line 1400
    move-object v0, v8

    .line 1401
    move-object/from16 v1, p1

    .line 1402
    .line 1403
    move-object v2, v14

    .line 1404
    move-object v3, v14

    .line 1405
    move/from16 v5, v19

    .line 1406
    .line 1407
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    .line 1412
    .line 1413
    new-instance v8, Lcom/airbnb/lottie/value/Keyframe;

    .line 1414
    .line 1415
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1416
    .line 1417
    .line 1418
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v6

    .line 1422
    move-object v0, v8

    .line 1423
    move-object v2, v12

    .line 1424
    move-object v3, v12

    .line 1425
    move/from16 v5, v39

    .line 1426
    .line 1427
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    .line 1432
    .line 1433
    const-string v0, ".ai"

    .line 1434
    .line 1435
    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v0

    .line 1439
    if-nez v0, :cond_3e

    .line 1440
    .line 1441
    const-string v0, "ai"

    .line 1442
    .line 1443
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1444
    .line 1445
    .line 1446
    move-result v0

    .line 1447
    if-eqz v0, :cond_3d

    .line 1448
    .line 1449
    goto :goto_24

    .line 1450
    :cond_3d
    :goto_23
    move/from16 v0, v40

    .line 1451
    .line 1452
    goto :goto_25

    .line 1453
    :cond_3e
    :goto_24
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 1454
    .line 1455
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1456
    .line 1457
    .line 1458
    goto :goto_23

    .line 1459
    :goto_25
    if-eqz v0, :cond_40

    .line 1460
    .line 1461
    if-nez v41, :cond_3f

    .line 1462
    .line 1463
    new-instance v41, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 1464
    .line 1465
    invoke-direct/range {v41 .. v41}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    .line 1466
    .line 1467
    .line 1468
    :cond_3f
    move-object/from16 v1, v41

    .line 1469
    .line 1470
    iput-boolean v0, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->autoOrient:Z

    .line 1471
    .line 1472
    move-object v11, v1

    .line 1473
    goto :goto_26

    .line 1474
    :cond_40
    move-object/from16 v11, v41

    .line 1475
    .line 1476
    :goto_26
    new-instance v39, Lcom/airbnb/lottie/model/layer/Layer;

    .line 1477
    .line 1478
    move-object/from16 v0, v39

    .line 1479
    .line 1480
    move-object v1, v9

    .line 1481
    move-object/from16 v2, p1

    .line 1482
    .line 1483
    move-object v3, v15

    .line 1484
    move-wide/from16 v4, v17

    .line 1485
    .line 1486
    move-object/from16 v6, v20

    .line 1487
    .line 1488
    move-wide/from16 v7, v21

    .line 1489
    .line 1490
    move-object/from16 v9, v23

    .line 1491
    .line 1492
    move/from16 v12, v24

    .line 1493
    .line 1494
    move-object/from16 v21, v13

    .line 1495
    .line 1496
    move/from16 v13, v25

    .line 1497
    .line 1498
    move/from16 v14, v26

    .line 1499
    .line 1500
    move/from16 v15, v27

    .line 1501
    .line 1502
    move/from16 v16, v28

    .line 1503
    .line 1504
    move/from16 v17, v29

    .line 1505
    .line 1506
    move/from16 v18, v30

    .line 1507
    .line 1508
    move-object/from16 v19, v31

    .line 1509
    .line 1510
    move-object/from16 v20, v32

    .line 1511
    .line 1512
    move-object/from16 v22, v33

    .line 1513
    .line 1514
    move-object/from16 v23, v34

    .line 1515
    .line 1516
    move/from16 v24, v35

    .line 1517
    .line 1518
    move-object/from16 v25, v36

    .line 1519
    .line 1520
    move-object/from16 v26, v37

    .line 1521
    .line 1522
    move-object/from16 v27, v38

    .line 1523
    .line 1524
    invoke-direct/range {v0 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFFFLcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/airbnb/lottie/model/content/BlurEffect;Lcom/airbnb/lottie/parser/DropShadowEffect;Lcom/airbnb/lottie/model/content/LBlendMode;)V

    .line 1525
    .line 1526
    .line 1527
    return-object v39

    .line 1528
    nop

    .line 1529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch

    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    :sswitch_data_1
    .sparse-switch
        0x6f -> :sswitch_8
        0xe04 -> :sswitch_7
        0x197f1 -> :sswitch_6
        0x3339a3 -> :sswitch_5
    .end sparse-switch

    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
    .end packed-switch

    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_c
        0x69 -> :sswitch_b
        0x6e -> :sswitch_a
        0x73 -> :sswitch_9
    .end sparse-switch

    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_15
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method
