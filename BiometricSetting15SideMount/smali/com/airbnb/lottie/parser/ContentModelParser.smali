.class public abstract Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ty"

    .line 2
    .line 3
    const-string v1, "d"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 14
    .line 15
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "o"

    .line 6
    .line 7
    const-string v3, "g"

    .line 8
    .line 9
    const-string v4, "d"

    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x5

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x1

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 17
    .line 18
    .line 19
    const/4 v11, 0x2

    .line 20
    move v12, v11

    .line 21
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v13

    .line 25
    const/4 v14, 0x0

    .line 26
    if-eqz v13, :cond_2

    .line 27
    .line 28
    sget-object v13, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 29
    .line 30
    invoke-virtual {v0, v13}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 31
    .line 32
    .line 33
    move-result v13

    .line 34
    if-eqz v13, :cond_1

    .line 35
    .line 36
    if-eq v13, v10, :cond_0

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move-object v13, v14

    .line 56
    :goto_1
    if-nez v13, :cond_3

    .line 57
    .line 58
    return-object v14

    .line 59
    :cond_3
    sget-object v15, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    .line 60
    .line 61
    sget-object v16, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 62
    .line 63
    const/16 v17, 0x0

    .line 64
    .line 65
    const/16 v18, 0x64

    .line 66
    .line 67
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v19

    .line 71
    sparse-switch v19, :sswitch_data_0

    .line 72
    .line 73
    .line 74
    :goto_2
    const/4 v8, -0x1

    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :sswitch_0
    const-string v8, "tr"

    .line 78
    .line 79
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-nez v8, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const/16 v8, 0xd

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :sswitch_1
    const-string v8, "tm"

    .line 91
    .line 92
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-nez v8, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    const/16 v8, 0xc

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :sswitch_2
    const-string v8, "st"

    .line 104
    .line 105
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-nez v8, :cond_6

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    const/16 v8, 0xb

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :sswitch_3
    const-string v8, "sr"

    .line 117
    .line 118
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-nez v8, :cond_7

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    const/16 v8, 0xa

    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :sswitch_4
    const-string v8, "sh"

    .line 130
    .line 131
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-nez v8, :cond_8

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_8
    const/16 v8, 0x9

    .line 139
    .line 140
    goto/16 :goto_3

    .line 141
    .line 142
    :sswitch_5
    const-string v8, "rp"

    .line 143
    .line 144
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-nez v8, :cond_9

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_9
    const/16 v8, 0x8

    .line 152
    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :sswitch_6
    const-string v8, "rd"

    .line 156
    .line 157
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-nez v8, :cond_a

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_a
    const/4 v8, 0x7

    .line 165
    goto :goto_3

    .line 166
    :sswitch_7
    const-string v8, "rc"

    .line 167
    .line 168
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-nez v8, :cond_b

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_b
    const/4 v8, 0x6

    .line 176
    goto :goto_3

    .line 177
    :sswitch_8
    const-string v8, "mm"

    .line 178
    .line 179
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-nez v8, :cond_c

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_c
    move v8, v7

    .line 187
    goto :goto_3

    .line 188
    :sswitch_9
    const-string v8, "gs"

    .line 189
    .line 190
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-nez v8, :cond_d

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_d
    move v8, v6

    .line 198
    goto :goto_3

    .line 199
    :sswitch_a
    const-string v8, "gr"

    .line 200
    .line 201
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-nez v8, :cond_e

    .line 206
    .line 207
    goto/16 :goto_2

    .line 208
    .line 209
    :cond_e
    move v8, v5

    .line 210
    goto :goto_3

    .line 211
    :sswitch_b
    const-string v8, "gf"

    .line 212
    .line 213
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-nez v8, :cond_f

    .line 218
    .line 219
    goto/16 :goto_2

    .line 220
    .line 221
    :cond_f
    move v8, v11

    .line 222
    goto :goto_3

    .line 223
    :sswitch_c
    const-string v8, "fl"

    .line 224
    .line 225
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-nez v8, :cond_10

    .line 230
    .line 231
    goto/16 :goto_2

    .line 232
    .line 233
    :cond_10
    move v8, v10

    .line 234
    goto :goto_3

    .line 235
    :sswitch_d
    const-string v8, "el"

    .line 236
    .line 237
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    if-nez v8, :cond_11

    .line 242
    .line 243
    goto/16 :goto_2

    .line 244
    .line 245
    :cond_11
    move v8, v9

    .line 246
    :goto_3
    packed-switch v8, :pswitch_data_0

    .line 247
    .line 248
    .line 249
    const-string v1, "Unknown shape type "

    .line 250
    .line 251
    invoke-virtual {v1, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_27

    .line 259
    .line 260
    :pswitch_0
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 261
    .line 262
    .line 263
    move-result-object v14

    .line 264
    goto/16 :goto_27

    .line 265
    .line 266
    :pswitch_1
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 267
    .line 268
    move/from16 v21, v9

    .line 269
    .line 270
    move-object/from16 v16, v14

    .line 271
    .line 272
    move-object/from16 v17, v16

    .line 273
    .line 274
    move-object/from16 v18, v17

    .line 275
    .line 276
    move-object/from16 v19, v18

    .line 277
    .line 278
    move-object/from16 v20, v19

    .line 279
    .line 280
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_1a

    .line 285
    .line 286
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 287
    .line 288
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_19

    .line 293
    .line 294
    if-eq v2, v10, :cond_18

    .line 295
    .line 296
    if-eq v2, v11, :cond_17

    .line 297
    .line 298
    if-eq v2, v5, :cond_16

    .line 299
    .line 300
    if-eq v2, v6, :cond_13

    .line 301
    .line 302
    if-eq v2, v7, :cond_12

    .line 303
    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 309
    .line 310
    .line 311
    move-result v21

    .line 312
    goto :goto_4

    .line 313
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eq v2, v10, :cond_15

    .line 318
    .line 319
    if-ne v2, v11, :cond_14

    .line 320
    .line 321
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 322
    .line 323
    :goto_5
    move-object/from16 v17, v2

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 327
    .line 328
    const-string v1, "Unknown trim path type "

    .line 329
    .line 330
    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :cond_15
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v16

    .line 345
    goto :goto_4

    .line 346
    :cond_17
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 347
    .line 348
    .line 349
    move-result-object v20

    .line 350
    goto :goto_4

    .line 351
    :cond_18
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 352
    .line 353
    .line 354
    move-result-object v19

    .line 355
    goto :goto_4

    .line 356
    :cond_19
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 357
    .line 358
    .line 359
    move-result-object v18

    .line 360
    goto :goto_4

    .line 361
    :cond_1a
    new-instance v14, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    .line 362
    .line 363
    move-object v15, v14

    .line 364
    invoke-direct/range {v15 .. v21}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_27

    .line 368
    .line 369
    :pswitch_2
    sget-object v5, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 370
    .line 371
    new-instance v5, Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .line 375
    .line 376
    move/from16 v30, v9

    .line 377
    .line 378
    move-object v6, v14

    .line 379
    move-object v7, v6

    .line 380
    move-object v8, v7

    .line 381
    move-object/from16 v21, v8

    .line 382
    .line 383
    move-object/from16 v22, v21

    .line 384
    .line 385
    move-object/from16 v24, v22

    .line 386
    .line 387
    move-object/from16 v26, v24

    .line 388
    .line 389
    move/from16 v29, v17

    .line 390
    .line 391
    :cond_1b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v12

    .line 395
    if-eqz v12, :cond_23

    .line 396
    .line 397
    sget-object v12, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 398
    .line 399
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 400
    .line 401
    .line 402
    move-result v12

    .line 403
    packed-switch v12, :pswitch_data_1

    .line 404
    .line 405
    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 407
    .line 408
    .line 409
    goto :goto_6

    .line 410
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 411
    .line 412
    .line 413
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 414
    .line 415
    .line 416
    move-result v12

    .line 417
    if-eqz v12, :cond_22

    .line 418
    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 420
    .line 421
    .line 422
    move-object v12, v14

    .line 423
    move-object v13, v12

    .line 424
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 425
    .line 426
    .line 427
    move-result v15

    .line 428
    if-eqz v15, :cond_1e

    .line 429
    .line 430
    sget-object v15, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 431
    .line 432
    invoke-virtual {v0, v15}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 433
    .line 434
    .line 435
    move-result v15

    .line 436
    if-eqz v15, :cond_1d

    .line 437
    .line 438
    if-eq v15, v10, :cond_1c

    .line 439
    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 441
    .line 442
    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 444
    .line 445
    .line 446
    goto :goto_8

    .line 447
    :cond_1c
    invoke-static {v0, v1, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 448
    .line 449
    .line 450
    move-result-object v13

    .line 451
    goto :goto_8

    .line 452
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v12

    .line 456
    goto :goto_8

    .line 457
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 464
    .line 465
    .line 466
    move-result v15

    .line 467
    sparse-switch v15, :sswitch_data_1

    .line 468
    .line 469
    .line 470
    :goto_9
    const/4 v12, -0x1

    .line 471
    goto :goto_a

    .line 472
    :sswitch_e
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v12

    .line 476
    if-nez v12, :cond_1f

    .line 477
    .line 478
    goto :goto_9

    .line 479
    :cond_1f
    move v12, v11

    .line 480
    goto :goto_a

    .line 481
    :sswitch_f
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v12

    .line 485
    if-nez v12, :cond_20

    .line 486
    .line 487
    goto :goto_9

    .line 488
    :cond_20
    move v12, v10

    .line 489
    goto :goto_a

    .line 490
    :sswitch_10
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v12

    .line 494
    if-nez v12, :cond_21

    .line 495
    .line 496
    goto :goto_9

    .line 497
    :cond_21
    move v12, v9

    .line 498
    :goto_a
    packed-switch v12, :pswitch_data_2

    .line 499
    .line 500
    .line 501
    goto :goto_7

    .line 502
    :pswitch_4
    move-object/from16 v22, v13

    .line 503
    .line 504
    goto :goto_7

    .line 505
    :pswitch_5
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    goto :goto_7

    .line 509
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 513
    .line 514
    .line 515
    move-result v12

    .line 516
    if-ne v12, v10, :cond_1b

    .line 517
    .line 518
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v12

    .line 522
    check-cast v12, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 523
    .line 524
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    goto/16 :goto_6

    .line 528
    .line 529
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 530
    .line 531
    .line 532
    move-result v30

    .line 533
    goto/16 :goto_6

    .line 534
    .line 535
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 536
    .line 537
    .line 538
    move-result-wide v12

    .line 539
    double-to-float v12, v12

    .line 540
    move/from16 v29, v12

    .line 541
    .line 542
    goto/16 :goto_6

    .line 543
    .line 544
    :pswitch_8
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 545
    .line 546
    .line 547
    move-result-object v8

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 549
    .line 550
    .line 551
    move-result v12

    .line 552
    sub-int/2addr v12, v10

    .line 553
    aget-object v8, v8, v12

    .line 554
    .line 555
    goto/16 :goto_6

    .line 556
    .line 557
    :pswitch_9
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 562
    .line 563
    .line 564
    move-result v12

    .line 565
    sub-int/2addr v12, v10

    .line 566
    aget-object v7, v7, v12

    .line 567
    .line 568
    goto/16 :goto_6

    .line 569
    .line 570
    :pswitch_a
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 571
    .line 572
    .line 573
    move-result-object v6

    .line 574
    goto/16 :goto_6

    .line 575
    .line 576
    :pswitch_b
    invoke-static {v0, v1, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 577
    .line 578
    .line 579
    move-result-object v26

    .line 580
    goto/16 :goto_6

    .line 581
    .line 582
    :pswitch_c
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 583
    .line 584
    .line 585
    move-result-object v24

    .line 586
    goto/16 :goto_6

    .line 587
    .line 588
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v21

    .line 592
    goto/16 :goto_6

    .line 593
    .line 594
    :cond_23
    if-nez v6, :cond_24

    .line 595
    .line 596
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 597
    .line 598
    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 599
    .line 600
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 612
    .line 613
    .line 614
    move-object/from16 v25, v1

    .line 615
    .line 616
    goto :goto_b

    .line 617
    :cond_24
    move-object/from16 v25, v6

    .line 618
    .line 619
    :goto_b
    if-nez v7, :cond_25

    .line 620
    .line 621
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->BUTT:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 622
    .line 623
    move-object/from16 v27, v1

    .line 624
    .line 625
    goto :goto_c

    .line 626
    :cond_25
    move-object/from16 v27, v7

    .line 627
    .line 628
    :goto_c
    if-nez v8, :cond_26

    .line 629
    .line 630
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->MITER:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 631
    .line 632
    move-object/from16 v28, v1

    .line 633
    .line 634
    goto :goto_d

    .line 635
    :cond_26
    move-object/from16 v28, v8

    .line 636
    .line 637
    :goto_d
    new-instance v14, Lcom/airbnb/lottie/model/content/ShapeStroke;

    .line 638
    .line 639
    move-object/from16 v20, v14

    .line 640
    .line 641
    move-object/from16 v23, v5

    .line 642
    .line 643
    invoke-direct/range {v20 .. v30}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_27

    .line 647
    .line 648
    :pswitch_e
    sget-object v2, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 649
    .line 650
    if-ne v12, v5, :cond_27

    .line 651
    .line 652
    move v2, v10

    .line 653
    goto :goto_e

    .line 654
    :cond_27
    move v2, v9

    .line 655
    :goto_e
    move/from16 v26, v2

    .line 656
    .line 657
    move/from16 v25, v9

    .line 658
    .line 659
    move-object/from16 v16, v14

    .line 660
    .line 661
    move-object/from16 v17, v16

    .line 662
    .line 663
    move-object/from16 v18, v17

    .line 664
    .line 665
    move-object/from16 v19, v18

    .line 666
    .line 667
    move-object/from16 v20, v19

    .line 668
    .line 669
    move-object/from16 v21, v20

    .line 670
    .line 671
    move-object/from16 v22, v21

    .line 672
    .line 673
    move-object/from16 v23, v22

    .line 674
    .line 675
    move-object/from16 v24, v23

    .line 676
    .line 677
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-eqz v2, :cond_29

    .line 682
    .line 683
    sget-object v2, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 684
    .line 685
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 686
    .line 687
    .line 688
    move-result v2

    .line 689
    packed-switch v2, :pswitch_data_3

    .line 690
    .line 691
    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 693
    .line 694
    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 696
    .line 697
    .line 698
    goto :goto_f

    .line 699
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 700
    .line 701
    .line 702
    move-result v2

    .line 703
    if-ne v2, v5, :cond_28

    .line 704
    .line 705
    move/from16 v26, v10

    .line 706
    .line 707
    goto :goto_f

    .line 708
    :cond_28
    move/from16 v26, v9

    .line 709
    .line 710
    goto :goto_f

    .line 711
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 712
    .line 713
    .line 714
    move-result v25

    .line 715
    goto :goto_f

    .line 716
    :pswitch_11
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 717
    .line 718
    .line 719
    move-result-object v23

    .line 720
    goto :goto_f

    .line 721
    :pswitch_12
    invoke-static {v0, v1, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 722
    .line 723
    .line 724
    move-result-object v21

    .line 725
    goto :goto_f

    .line 726
    :pswitch_13
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 727
    .line 728
    .line 729
    move-result-object v24

    .line 730
    goto :goto_f

    .line 731
    :pswitch_14
    invoke-static {v0, v1, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 732
    .line 733
    .line 734
    move-result-object v22

    .line 735
    goto :goto_f

    .line 736
    :pswitch_15
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 737
    .line 738
    .line 739
    move-result-object v20

    .line 740
    goto :goto_f

    .line 741
    :pswitch_16
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 742
    .line 743
    .line 744
    move-result-object v19

    .line 745
    goto :goto_f

    .line 746
    :pswitch_17
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 747
    .line 748
    .line 749
    move-result-object v18

    .line 750
    goto :goto_f

    .line 751
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 752
    .line 753
    .line 754
    move-result v2

    .line 755
    invoke-static {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 756
    .line 757
    .line 758
    move-result-object v17

    .line 759
    goto :goto_f

    .line 760
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v16

    .line 764
    goto :goto_f

    .line 765
    :cond_29
    new-instance v14, Lcom/airbnb/lottie/model/content/PolystarShape;

    .line 766
    .line 767
    move-object v15, v14

    .line 768
    invoke-direct/range {v15 .. v26}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZZ)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_27

    .line 772
    .line 773
    :pswitch_1a
    sget-object v2, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 774
    .line 775
    move v3, v9

    .line 776
    move v4, v3

    .line 777
    move-object v2, v14

    .line 778
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 779
    .line 780
    .line 781
    move-result v6

    .line 782
    if-eqz v6, :cond_2e

    .line 783
    .line 784
    sget-object v6, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 785
    .line 786
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 787
    .line 788
    .line 789
    move-result v6

    .line 790
    if-eqz v6, :cond_2d

    .line 791
    .line 792
    if-eq v6, v10, :cond_2c

    .line 793
    .line 794
    if-eq v6, v11, :cond_2b

    .line 795
    .line 796
    if-eq v6, v5, :cond_2a

    .line 797
    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 799
    .line 800
    .line 801
    goto :goto_10

    .line 802
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 803
    .line 804
    .line 805
    move-result v4

    .line 806
    goto :goto_10

    .line 807
    :cond_2b
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 808
    .line 809
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 810
    .line 811
    .line 812
    move-result v6

    .line 813
    sget-object v7, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    .line 814
    .line 815
    invoke-static {v0, v1, v6, v7, v9}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 816
    .line 817
    .line 818
    move-result-object v6

    .line 819
    invoke-direct {v2, v6}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 820
    .line 821
    .line 822
    goto :goto_10

    .line 823
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 824
    .line 825
    .line 826
    move-result v3

    .line 827
    goto :goto_10

    .line 828
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v14

    .line 832
    goto :goto_10

    .line 833
    :cond_2e
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapePath;

    .line 834
    .line 835
    invoke-direct {v1, v14, v3, v2, v4}, Lcom/airbnb/lottie/model/content/ShapePath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Z)V

    .line 836
    .line 837
    .line 838
    :goto_11
    move-object v14, v1

    .line 839
    goto/16 :goto_27

    .line 840
    .line 841
    :pswitch_1b
    sget-object v2, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 842
    .line 843
    move/from16 v20, v9

    .line 844
    .line 845
    move-object/from16 v16, v14

    .line 846
    .line 847
    move-object/from16 v17, v16

    .line 848
    .line 849
    move-object/from16 v18, v17

    .line 850
    .line 851
    move-object/from16 v19, v18

    .line 852
    .line 853
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 854
    .line 855
    .line 856
    move-result v2

    .line 857
    if-eqz v2, :cond_34

    .line 858
    .line 859
    sget-object v2, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 860
    .line 861
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 862
    .line 863
    .line 864
    move-result v2

    .line 865
    if-eqz v2, :cond_33

    .line 866
    .line 867
    if-eq v2, v10, :cond_32

    .line 868
    .line 869
    if-eq v2, v11, :cond_31

    .line 870
    .line 871
    if-eq v2, v5, :cond_30

    .line 872
    .line 873
    if-eq v2, v6, :cond_2f

    .line 874
    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 876
    .line 877
    .line 878
    goto :goto_12

    .line 879
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 880
    .line 881
    .line 882
    move-result v20

    .line 883
    goto :goto_12

    .line 884
    :cond_30
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 885
    .line 886
    .line 887
    move-result-object v19

    .line 888
    goto :goto_12

    .line 889
    :cond_31
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 890
    .line 891
    .line 892
    move-result-object v18

    .line 893
    goto :goto_12

    .line 894
    :cond_32
    invoke-static {v0, v1, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 895
    .line 896
    .line 897
    move-result-object v17

    .line 898
    goto :goto_12

    .line 899
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v16

    .line 903
    goto :goto_12

    .line 904
    :cond_34
    new-instance v14, Lcom/airbnb/lottie/model/content/Repeater;

    .line 905
    .line 906
    move-object v15, v14

    .line 907
    invoke-direct/range {v15 .. v20}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V

    .line 908
    .line 909
    .line 910
    goto/16 :goto_27

    .line 911
    .line 912
    :pswitch_1c
    sget-object v2, Lcom/airbnb/lottie/parser/RoundedCornersParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 913
    .line 914
    move-object v2, v14

    .line 915
    move-object v3, v2

    .line 916
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 917
    .line 918
    .line 919
    move-result v4

    .line 920
    if-eqz v4, :cond_38

    .line 921
    .line 922
    sget-object v4, Lcom/airbnb/lottie/parser/RoundedCornersParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 923
    .line 924
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 925
    .line 926
    .line 927
    move-result v4

    .line 928
    if-eqz v4, :cond_37

    .line 929
    .line 930
    if-eq v4, v10, :cond_36

    .line 931
    .line 932
    if-eq v4, v11, :cond_35

    .line 933
    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 935
    .line 936
    .line 937
    goto :goto_13

    .line 938
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 939
    .line 940
    .line 941
    move-result v9

    .line 942
    goto :goto_13

    .line 943
    :cond_36
    invoke-static {v0, v1, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    goto :goto_13

    .line 948
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v2

    .line 952
    goto :goto_13

    .line 953
    :cond_38
    if-eqz v9, :cond_39

    .line 954
    .line 955
    goto/16 :goto_27

    .line 956
    .line 957
    :cond_39
    new-instance v14, Lcom/airbnb/lottie/model/content/RoundedCorners;

    .line 958
    .line 959
    invoke-direct {v14, v2, v3}, Lcom/airbnb/lottie/model/content/RoundedCorners;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 960
    .line 961
    .line 962
    goto/16 :goto_27

    .line 963
    .line 964
    :pswitch_1d
    sget-object v2, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 965
    .line 966
    move/from16 v20, v9

    .line 967
    .line 968
    move-object/from16 v16, v14

    .line 969
    .line 970
    move-object/from16 v17, v16

    .line 971
    .line 972
    move-object/from16 v18, v17

    .line 973
    .line 974
    move-object/from16 v19, v18

    .line 975
    .line 976
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 977
    .line 978
    .line 979
    move-result v2

    .line 980
    if-eqz v2, :cond_3f

    .line 981
    .line 982
    sget-object v2, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 983
    .line 984
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 985
    .line 986
    .line 987
    move-result v2

    .line 988
    if-eqz v2, :cond_3e

    .line 989
    .line 990
    if-eq v2, v10, :cond_3d

    .line 991
    .line 992
    if-eq v2, v11, :cond_3c

    .line 993
    .line 994
    if-eq v2, v5, :cond_3b

    .line 995
    .line 996
    if-eq v2, v6, :cond_3a

    .line 997
    .line 998
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 999
    .line 1000
    .line 1001
    goto :goto_14

    .line 1002
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1003
    .line 1004
    .line 1005
    move-result v20

    .line 1006
    goto :goto_14

    .line 1007
    :cond_3b
    invoke-static {v0, v1, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v19

    .line 1011
    goto :goto_14

    .line 1012
    :cond_3c
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v18

    .line 1016
    goto :goto_14

    .line 1017
    :cond_3d
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v17

    .line 1021
    goto :goto_14

    .line 1022
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v16

    .line 1026
    goto :goto_14

    .line 1027
    :cond_3f
    new-instance v14, Lcom/airbnb/lottie/model/content/RectangleShape;

    .line 1028
    .line 1029
    move-object v15, v14

    .line 1030
    invoke-direct/range {v15 .. v20}, Lcom/airbnb/lottie/model/content/RectangleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 1031
    .line 1032
    .line 1033
    goto/16 :goto_27

    .line 1034
    .line 1035
    :pswitch_1e
    sget-object v2, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1036
    .line 1037
    move-object v2, v14

    .line 1038
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1039
    .line 1040
    .line 1041
    move-result v3

    .line 1042
    if-eqz v3, :cond_48

    .line 1043
    .line 1044
    sget-object v3, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1045
    .line 1046
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1047
    .line 1048
    .line 1049
    move-result v3

    .line 1050
    if-eqz v3, :cond_47

    .line 1051
    .line 1052
    if-eq v3, v10, :cond_41

    .line 1053
    .line 1054
    if-eq v3, v11, :cond_40

    .line 1055
    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1060
    .line 1061
    .line 1062
    goto :goto_15

    .line 1063
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1064
    .line 1065
    .line 1066
    move-result v9

    .line 1067
    goto :goto_15

    .line 1068
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1069
    .line 1070
    .line 1071
    move-result v2

    .line 1072
    sget-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1073
    .line 1074
    if-eq v2, v10, :cond_42

    .line 1075
    .line 1076
    if-eq v2, v11, :cond_46

    .line 1077
    .line 1078
    if-eq v2, v5, :cond_45

    .line 1079
    .line 1080
    if-eq v2, v6, :cond_44

    .line 1081
    .line 1082
    if-eq v2, v7, :cond_43

    .line 1083
    .line 1084
    :cond_42
    move-object v2, v3

    .line 1085
    goto :goto_15

    .line 1086
    :cond_43
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1087
    .line 1088
    goto :goto_15

    .line 1089
    :cond_44
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1090
    .line 1091
    goto :goto_15

    .line 1092
    :cond_45
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1093
    .line 1094
    goto :goto_15

    .line 1095
    :cond_46
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ADD:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1096
    .line 1097
    goto :goto_15

    .line 1098
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v14

    .line 1102
    goto :goto_15

    .line 1103
    :cond_48
    new-instance v3, Lcom/airbnb/lottie/model/content/MergePaths;

    .line 1104
    .line 1105
    invoke-direct {v3, v14, v2, v9}, Lcom/airbnb/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    .line 1106
    .line 1107
    .line 1108
    const-string v2, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 1109
    .line 1110
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    move-object v14, v3

    .line 1114
    goto/16 :goto_27

    .line 1115
    .line 1116
    :pswitch_1f
    sget-object v5, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1117
    .line 1118
    new-instance v5, Ljava/util/ArrayList;

    .line 1119
    .line 1120
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .line 1122
    .line 1123
    move/from16 v33, v9

    .line 1124
    .line 1125
    move-object v6, v14

    .line 1126
    move-object/from16 v21, v6

    .line 1127
    .line 1128
    move-object/from16 v22, v21

    .line 1129
    .line 1130
    move-object/from16 v23, v22

    .line 1131
    .line 1132
    move-object/from16 v25, v23

    .line 1133
    .line 1134
    move-object/from16 v26, v25

    .line 1135
    .line 1136
    move-object/from16 v27, v26

    .line 1137
    .line 1138
    move-object/from16 v28, v27

    .line 1139
    .line 1140
    move-object/from16 v29, v28

    .line 1141
    .line 1142
    move-object/from16 v32, v29

    .line 1143
    .line 1144
    move/from16 v30, v17

    .line 1145
    .line 1146
    :cond_49
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1147
    .line 1148
    .line 1149
    move-result v7

    .line 1150
    if-eqz v7, :cond_55

    .line 1151
    .line 1152
    sget-object v7, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1153
    .line 1154
    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1155
    .line 1156
    .line 1157
    move-result v7

    .line 1158
    packed-switch v7, :pswitch_data_4

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1165
    .line 1166
    .line 1167
    goto :goto_16

    .line 1168
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 1169
    .line 1170
    .line 1171
    :cond_4a
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v7

    .line 1175
    if-eqz v7, :cond_50

    .line 1176
    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1178
    .line 1179
    .line 1180
    move-object v7, v14

    .line 1181
    move-object v8, v7

    .line 1182
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v11

    .line 1186
    if-eqz v11, :cond_4d

    .line 1187
    .line 1188
    sget-object v11, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1189
    .line 1190
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1191
    .line 1192
    .line 1193
    move-result v11

    .line 1194
    if-eqz v11, :cond_4c

    .line 1195
    .line 1196
    if-eq v11, v10, :cond_4b

    .line 1197
    .line 1198
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1202
    .line 1203
    .line 1204
    goto :goto_18

    .line 1205
    :cond_4b
    invoke-static {v0, v1, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v8

    .line 1209
    goto :goto_18

    .line 1210
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v7

    .line 1214
    goto :goto_18

    .line 1215
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1219
    .line 1220
    .line 1221
    move-result v11

    .line 1222
    if-eqz v11, :cond_4e

    .line 1223
    .line 1224
    move-object/from16 v32, v8

    .line 1225
    .line 1226
    goto :goto_17

    .line 1227
    :cond_4e
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v11

    .line 1231
    if-nez v11, :cond_4f

    .line 1232
    .line 1233
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v7

    .line 1237
    if-eqz v7, :cond_4a

    .line 1238
    .line 1239
    :cond_4f
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    .line 1241
    .line 1242
    goto :goto_17

    .line 1243
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1247
    .line 1248
    .line 1249
    move-result v7

    .line 1250
    if-ne v7, v10, :cond_49

    .line 1251
    .line 1252
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v7

    .line 1256
    check-cast v7, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1257
    .line 1258
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    .line 1260
    .line 1261
    goto :goto_16

    .line 1262
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1263
    .line 1264
    .line 1265
    move-result v33

    .line 1266
    goto :goto_16

    .line 1267
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 1268
    .line 1269
    .line 1270
    move-result-wide v7

    .line 1271
    double-to-float v7, v7

    .line 1272
    move/from16 v30, v7

    .line 1273
    .line 1274
    goto/16 :goto_16

    .line 1275
    .line 1276
    :pswitch_23
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v7

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1281
    .line 1282
    .line 1283
    move-result v8

    .line 1284
    sub-int/2addr v8, v10

    .line 1285
    aget-object v29, v7, v8

    .line 1286
    .line 1287
    goto/16 :goto_16

    .line 1288
    .line 1289
    :pswitch_24
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v7

    .line 1293
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1294
    .line 1295
    .line 1296
    move-result v8

    .line 1297
    sub-int/2addr v8, v10

    .line 1298
    aget-object v28, v7, v8

    .line 1299
    .line 1300
    goto/16 :goto_16

    .line 1301
    .line 1302
    :pswitch_25
    invoke-static {v0, v1, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v27

    .line 1306
    goto/16 :goto_16

    .line 1307
    .line 1308
    :pswitch_26
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v26

    .line 1312
    goto/16 :goto_16

    .line 1313
    .line 1314
    :pswitch_27
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v25

    .line 1318
    goto/16 :goto_16

    .line 1319
    .line 1320
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1321
    .line 1322
    .line 1323
    move-result v7

    .line 1324
    if-ne v7, v10, :cond_51

    .line 1325
    .line 1326
    move-object/from16 v22, v16

    .line 1327
    .line 1328
    goto/16 :goto_16

    .line 1329
    .line 1330
    :cond_51
    move-object/from16 v22, v15

    .line 1331
    .line 1332
    goto/16 :goto_16

    .line 1333
    .line 1334
    :pswitch_29
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v6

    .line 1338
    goto/16 :goto_16

    .line 1339
    .line 1340
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1341
    .line 1342
    .line 1343
    const/4 v7, -0x1

    .line 1344
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1345
    .line 1346
    .line 1347
    move-result v8

    .line 1348
    if-eqz v8, :cond_54

    .line 1349
    .line 1350
    sget-object v8, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1351
    .line 1352
    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1353
    .line 1354
    .line 1355
    move-result v8

    .line 1356
    if-eqz v8, :cond_53

    .line 1357
    .line 1358
    if-eq v8, v10, :cond_52

    .line 1359
    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1364
    .line 1365
    .line 1366
    goto :goto_19

    .line 1367
    :cond_52
    invoke-static {v0, v1, v7}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v23

    .line 1371
    goto :goto_19

    .line 1372
    :cond_53
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1373
    .line 1374
    .line 1375
    move-result v7

    .line 1376
    goto :goto_19

    .line 1377
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1378
    .line 1379
    .line 1380
    goto/16 :goto_16

    .line 1381
    .line 1382
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v21

    .line 1386
    goto/16 :goto_16

    .line 1387
    .line 1388
    :cond_55
    if-nez v6, :cond_56

    .line 1389
    .line 1390
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1391
    .line 1392
    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 1393
    .line 1394
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v3

    .line 1398
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1399
    .line 1400
    .line 1401
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v2

    .line 1405
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 1406
    .line 1407
    .line 1408
    move-object/from16 v24, v1

    .line 1409
    .line 1410
    goto :goto_1a

    .line 1411
    :cond_56
    move-object/from16 v24, v6

    .line 1412
    .line 1413
    :goto_1a
    new-instance v14, Lcom/airbnb/lottie/model/content/GradientStroke;

    .line 1414
    .line 1415
    move-object/from16 v20, v14

    .line 1416
    .line 1417
    move-object/from16 v31, v5

    .line 1418
    .line 1419
    invoke-direct/range {v20 .. v33}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 1420
    .line 1421
    .line 1422
    goto/16 :goto_27

    .line 1423
    .line 1424
    :pswitch_2c
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeGroupParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1425
    .line 1426
    new-instance v2, Ljava/util/ArrayList;

    .line 1427
    .line 1428
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    .line 1430
    .line 1431
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1432
    .line 1433
    .line 1434
    move-result v3

    .line 1435
    if-eqz v3, :cond_5c

    .line 1436
    .line 1437
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeGroupParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1438
    .line 1439
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1440
    .line 1441
    .line 1442
    move-result v3

    .line 1443
    if-eqz v3, :cond_5b

    .line 1444
    .line 1445
    if-eq v3, v10, :cond_5a

    .line 1446
    .line 1447
    if-eq v3, v11, :cond_57

    .line 1448
    .line 1449
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1450
    .line 1451
    .line 1452
    goto :goto_1b

    .line 1453
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 1454
    .line 1455
    .line 1456
    :cond_58
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1457
    .line 1458
    .line 1459
    move-result v3

    .line 1460
    if-eqz v3, :cond_59

    .line 1461
    .line 1462
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v3

    .line 1466
    if-eqz v3, :cond_58

    .line 1467
    .line 1468
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    .line 1470
    .line 1471
    goto :goto_1c

    .line 1472
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1473
    .line 1474
    .line 1475
    goto :goto_1b

    .line 1476
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1477
    .line 1478
    .line 1479
    move-result v9

    .line 1480
    goto :goto_1b

    .line 1481
    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v14

    .line 1485
    goto :goto_1b

    .line 1486
    :cond_5c
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 1487
    .line 1488
    invoke-direct {v1, v14, v2, v9}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1489
    .line 1490
    .line 1491
    goto/16 :goto_11

    .line 1492
    .line 1493
    :pswitch_2d
    sget-object v2, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1494
    .line 1495
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1496
    .line 1497
    move-object/from16 v23, v2

    .line 1498
    .line 1499
    move/from16 v28, v9

    .line 1500
    .line 1501
    move-object/from16 v21, v14

    .line 1502
    .line 1503
    move-object/from16 v22, v21

    .line 1504
    .line 1505
    move-object/from16 v24, v22

    .line 1506
    .line 1507
    move-object/from16 v26, v24

    .line 1508
    .line 1509
    move-object/from16 v27, v26

    .line 1510
    .line 1511
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1512
    .line 1513
    .line 1514
    move-result v2

    .line 1515
    if-eqz v2, :cond_62

    .line 1516
    .line 1517
    sget-object v2, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1518
    .line 1519
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1520
    .line 1521
    .line 1522
    move-result v2

    .line 1523
    packed-switch v2, :pswitch_data_5

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1530
    .line 1531
    .line 1532
    goto :goto_1d

    .line 1533
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1534
    .line 1535
    .line 1536
    move-result v28

    .line 1537
    goto :goto_1d

    .line 1538
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1539
    .line 1540
    .line 1541
    move-result v2

    .line 1542
    if-ne v2, v10, :cond_5d

    .line 1543
    .line 1544
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1545
    .line 1546
    :goto_1e
    move-object/from16 v23, v2

    .line 1547
    .line 1548
    goto :goto_1d

    .line 1549
    :cond_5d
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1550
    .line 1551
    goto :goto_1e

    .line 1552
    :pswitch_30
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v27

    .line 1556
    goto :goto_1d

    .line 1557
    :pswitch_31
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v26

    .line 1561
    goto :goto_1d

    .line 1562
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1563
    .line 1564
    .line 1565
    move-result v2

    .line 1566
    if-ne v2, v10, :cond_5e

    .line 1567
    .line 1568
    move-object/from16 v22, v16

    .line 1569
    .line 1570
    goto :goto_1d

    .line 1571
    :cond_5e
    move-object/from16 v22, v15

    .line 1572
    .line 1573
    goto :goto_1d

    .line 1574
    :pswitch_33
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v14

    .line 1578
    goto :goto_1d

    .line 1579
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1580
    .line 1581
    .line 1582
    const/4 v2, -0x1

    .line 1583
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1584
    .line 1585
    .line 1586
    move-result v3

    .line 1587
    if-eqz v3, :cond_61

    .line 1588
    .line 1589
    sget-object v3, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1590
    .line 1591
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1592
    .line 1593
    .line 1594
    move-result v3

    .line 1595
    if-eqz v3, :cond_60

    .line 1596
    .line 1597
    if-eq v3, v10, :cond_5f

    .line 1598
    .line 1599
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1603
    .line 1604
    .line 1605
    goto :goto_1f

    .line 1606
    :cond_5f
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v24

    .line 1610
    goto :goto_1f

    .line 1611
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1612
    .line 1613
    .line 1614
    move-result v2

    .line 1615
    goto :goto_1f

    .line 1616
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1617
    .line 1618
    .line 1619
    goto :goto_1d

    .line 1620
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v21

    .line 1624
    goto :goto_1d

    .line 1625
    :cond_62
    if-nez v14, :cond_63

    .line 1626
    .line 1627
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1628
    .line 1629
    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 1630
    .line 1631
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v3

    .line 1635
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1636
    .line 1637
    .line 1638
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v2

    .line 1642
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 1643
    .line 1644
    .line 1645
    move-object/from16 v25, v1

    .line 1646
    .line 1647
    goto :goto_20

    .line 1648
    :cond_63
    move-object/from16 v25, v14

    .line 1649
    .line 1650
    :goto_20
    new-instance v14, Lcom/airbnb/lottie/model/content/GradientFill;

    .line 1651
    .line 1652
    move-object/from16 v20, v14

    .line 1653
    .line 1654
    invoke-direct/range {v20 .. v28}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Z)V

    .line 1655
    .line 1656
    .line 1657
    goto/16 :goto_27

    .line 1658
    .line 1659
    :pswitch_36
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1660
    .line 1661
    move/from16 v21, v9

    .line 1662
    .line 1663
    move/from16 v25, v21

    .line 1664
    .line 1665
    move v2, v10

    .line 1666
    move-object/from16 v20, v14

    .line 1667
    .line 1668
    move-object/from16 v23, v20

    .line 1669
    .line 1670
    :goto_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1671
    .line 1672
    .line 1673
    move-result v3

    .line 1674
    if-eqz v3, :cond_6a

    .line 1675
    .line 1676
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1677
    .line 1678
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1679
    .line 1680
    .line 1681
    move-result v3

    .line 1682
    if-eqz v3, :cond_69

    .line 1683
    .line 1684
    if-eq v3, v10, :cond_68

    .line 1685
    .line 1686
    if-eq v3, v11, :cond_67

    .line 1687
    .line 1688
    if-eq v3, v5, :cond_66

    .line 1689
    .line 1690
    if-eq v3, v6, :cond_65

    .line 1691
    .line 1692
    if-eq v3, v7, :cond_64

    .line 1693
    .line 1694
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1698
    .line 1699
    .line 1700
    goto :goto_21

    .line 1701
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1702
    .line 1703
    .line 1704
    move-result v25

    .line 1705
    goto :goto_21

    .line 1706
    :cond_65
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1707
    .line 1708
    .line 1709
    move-result v2

    .line 1710
    goto :goto_21

    .line 1711
    :cond_66
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1712
    .line 1713
    .line 1714
    move-result v21

    .line 1715
    goto :goto_21

    .line 1716
    :cond_67
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v14

    .line 1720
    goto :goto_21

    .line 1721
    :cond_68
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v23

    .line 1725
    goto :goto_21

    .line 1726
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v20

    .line 1730
    goto :goto_21

    .line 1731
    :cond_6a
    if-nez v14, :cond_6b

    .line 1732
    .line 1733
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1734
    .line 1735
    new-instance v3, Lcom/airbnb/lottie/value/Keyframe;

    .line 1736
    .line 1737
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v4

    .line 1741
    invoke-direct {v3, v4}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1742
    .line 1743
    .line 1744
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v3

    .line 1748
    invoke-direct {v1, v3}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 1749
    .line 1750
    .line 1751
    move-object/from16 v24, v1

    .line 1752
    .line 1753
    goto :goto_22

    .line 1754
    :cond_6b
    move-object/from16 v24, v14

    .line 1755
    .line 1756
    :goto_22
    if-ne v2, v10, :cond_6c

    .line 1757
    .line 1758
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1759
    .line 1760
    :goto_23
    move-object/from16 v22, v1

    .line 1761
    .line 1762
    goto :goto_24

    .line 1763
    :cond_6c
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1764
    .line 1765
    goto :goto_23

    .line 1766
    :goto_24
    new-instance v14, Lcom/airbnb/lottie/model/content/ShapeFill;

    .line 1767
    .line 1768
    move-object/from16 v19, v14

    .line 1769
    .line 1770
    invoke-direct/range {v19 .. v25}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    .line 1771
    .line 1772
    .line 1773
    goto :goto_27

    .line 1774
    :pswitch_37
    sget-object v2, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1775
    .line 1776
    if-ne v12, v5, :cond_6d

    .line 1777
    .line 1778
    move v2, v10

    .line 1779
    goto :goto_25

    .line 1780
    :cond_6d
    move v2, v9

    .line 1781
    :goto_25
    move/from16 v19, v2

    .line 1782
    .line 1783
    move/from16 v20, v9

    .line 1784
    .line 1785
    move-object/from16 v16, v14

    .line 1786
    .line 1787
    move-object/from16 v17, v16

    .line 1788
    .line 1789
    move-object/from16 v18, v17

    .line 1790
    .line 1791
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1792
    .line 1793
    .line 1794
    move-result v2

    .line 1795
    if-eqz v2, :cond_74

    .line 1796
    .line 1797
    sget-object v2, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 1798
    .line 1799
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 1800
    .line 1801
    .line 1802
    move-result v2

    .line 1803
    if-eqz v2, :cond_73

    .line 1804
    .line 1805
    if-eq v2, v10, :cond_72

    .line 1806
    .line 1807
    if-eq v2, v11, :cond_71

    .line 1808
    .line 1809
    if-eq v2, v5, :cond_70

    .line 1810
    .line 1811
    if-eq v2, v6, :cond_6e

    .line 1812
    .line 1813
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1817
    .line 1818
    .line 1819
    goto :goto_26

    .line 1820
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1821
    .line 1822
    .line 1823
    move-result v2

    .line 1824
    if-ne v2, v5, :cond_6f

    .line 1825
    .line 1826
    move/from16 v19, v10

    .line 1827
    .line 1828
    goto :goto_26

    .line 1829
    :cond_6f
    move/from16 v19, v9

    .line 1830
    .line 1831
    goto :goto_26

    .line 1832
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1833
    .line 1834
    .line 1835
    move-result v20

    .line 1836
    goto :goto_26

    .line 1837
    :cond_71
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    .line 1838
    .line 1839
    .line 1840
    move-result-object v18

    .line 1841
    goto :goto_26

    .line 1842
    :cond_72
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v17

    .line 1846
    goto :goto_26

    .line 1847
    :cond_73
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v16

    .line 1851
    goto :goto_26

    .line 1852
    :cond_74
    new-instance v14, Lcom/airbnb/lottie/model/content/CircleShape;

    .line 1853
    .line 1854
    move-object v15, v14

    .line 1855
    invoke-direct/range {v15 .. v20}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;ZZ)V

    .line 1856
    .line 1857
    .line 1858
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1859
    .line 1860
    .line 1861
    move-result v1

    .line 1862
    if-eqz v1, :cond_75

    .line 1863
    .line 1864
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1865
    .line 1866
    .line 1867
    goto :goto_27

    .line 1868
    :cond_75
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1869
    .line 1870
    .line 1871
    return-object v14

    .line 1872
    nop

    .line 1873
    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_d
        0xcc6 -> :sswitch_c
        0xcdf -> :sswitch_b
        0xceb -> :sswitch_a
        0xcec -> :sswitch_9
        0xda0 -> :sswitch_8
        0xe31 -> :sswitch_7
        0xe32 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_2d
        :pswitch_2c
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_10
        0x67 -> :sswitch_f
        0x6f -> :sswitch_e
    .end sparse-switch

    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method
