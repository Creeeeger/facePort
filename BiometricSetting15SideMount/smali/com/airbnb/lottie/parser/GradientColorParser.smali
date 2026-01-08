.class public final Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# instance fields
.field public colorPoints:I


# virtual methods
.method public final parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    move v2, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v5

    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    double-to-float v3, v6

    .line 37
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v6, 0x2

    .line 50
    const/4 v7, 0x4

    .line 51
    const/4 v8, 0x3

    .line 52
    if-ne v3, v7, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/Float;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/high16 v9, 0x3f800000    # 1.0f

    .line 65
    .line 66
    cmpl-float v3, v3, v9

    .line 67
    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v1, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/Float;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Ljava/lang/Float;

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/lang/Float;

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iput v6, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 113
    .line 114
    :cond_3
    if-eqz v2, :cond_4

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 117
    .line 118
    .line 119
    :cond_4
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 120
    .line 121
    const/4 v3, -0x1

    .line 122
    if-ne v2, v3, :cond_5

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    div-int/2addr v2, v7

    .line 129
    iput v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 130
    .line 131
    :cond_5
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 132
    .line 133
    new-array v3, v2, [F

    .line 134
    .line 135
    new-array v9, v2, [I

    .line 136
    .line 137
    move v10, v5

    .line 138
    move v11, v10

    .line 139
    move v12, v11

    .line 140
    :goto_2
    iget v13, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 141
    .line 142
    mul-int/2addr v13, v7

    .line 143
    if-ge v10, v13, :cond_b

    .line 144
    .line 145
    div-int/lit8 v13, v10, 0x4

    .line 146
    .line 147
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    check-cast v14, Ljava/lang/Float;

    .line 152
    .line 153
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    float-to-double v14, v14

    .line 158
    rem-int/lit8 v7, v10, 0x4

    .line 159
    .line 160
    if-eqz v7, :cond_9

    .line 161
    .line 162
    const-wide v16, 0x406fe00000000000L    # 255.0

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    if-eq v7, v4, :cond_8

    .line 168
    .line 169
    if-eq v7, v6, :cond_7

    .line 170
    .line 171
    if-eq v7, v8, :cond_6

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_6
    mul-double v14, v14, v16

    .line 175
    .line 176
    double-to-int v7, v14

    .line 177
    const/16 v14, 0xff

    .line 178
    .line 179
    invoke-static {v14, v11, v12, v7}, Landroid/graphics/Color;->argb(IIII)I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    aput v7, v9, v13

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    mul-double v14, v14, v16

    .line 187
    .line 188
    double-to-int v12, v14

    .line 189
    goto :goto_3

    .line 190
    :cond_8
    mul-double v14, v14, v16

    .line 191
    .line 192
    double-to-int v11, v14

    .line 193
    goto :goto_3

    .line 194
    :cond_9
    if-lez v13, :cond_a

    .line 195
    .line 196
    add-int/lit8 v7, v13, -0x1

    .line 197
    .line 198
    aget v7, v3, v7

    .line 199
    .line 200
    double-to-float v4, v14

    .line 201
    cmpl-float v7, v7, v4

    .line 202
    .line 203
    if-ltz v7, :cond_a

    .line 204
    .line 205
    const v7, 0x3c23d70a    # 0.01f

    .line 206
    .line 207
    .line 208
    add-float/2addr v4, v7

    .line 209
    aput v4, v3, v13

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_a
    double-to-float v4, v14

    .line 213
    aput v4, v3, v13

    .line 214
    .line 215
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 216
    .line 217
    const/4 v4, 0x1

    .line 218
    const/4 v7, 0x4

    .line 219
    goto :goto_2

    .line 220
    :cond_b
    new-instance v0, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 221
    .line 222
    invoke-direct {v0, v3, v9}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-gt v4, v13, :cond_c

    .line 230
    .line 231
    goto/16 :goto_18

    .line 232
    .line 233
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    sub-int/2addr v4, v13

    .line 238
    div-int/2addr v4, v6

    .line 239
    new-array v7, v4, [F

    .line 240
    .line 241
    new-array v8, v4, [F

    .line 242
    .line 243
    move v9, v5

    .line 244
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    if-ge v13, v10, :cond_e

    .line 249
    .line 250
    rem-int/lit8 v10, v13, 0x2

    .line 251
    .line 252
    if-nez v10, :cond_d

    .line 253
    .line 254
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    check-cast v10, Ljava/lang/Float;

    .line 259
    .line 260
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    aput v10, v7, v9

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_d
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    check-cast v10, Ljava/lang/Float;

    .line 272
    .line 273
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    aput v10, v8, v9

    .line 278
    .line 279
    add-int/lit8 v9, v9, 0x1

    .line 280
    .line 281
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_e
    iget-object v1, v0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 285
    .line 286
    array-length v9, v1

    .line 287
    if-nez v9, :cond_f

    .line 288
    .line 289
    move-object v1, v7

    .line 290
    goto :goto_b

    .line 291
    :cond_f
    if-nez v4, :cond_10

    .line 292
    .line 293
    goto :goto_b

    .line 294
    :cond_10
    array-length v9, v1

    .line 295
    add-int/2addr v9, v4

    .line 296
    new-array v10, v9, [F

    .line 297
    .line 298
    move v11, v5

    .line 299
    move v12, v11

    .line 300
    move v13, v12

    .line 301
    move v14, v13

    .line 302
    :goto_6
    if-ge v11, v9, :cond_17

    .line 303
    .line 304
    array-length v15, v1

    .line 305
    const/high16 v17, 0x7fc00000    # Float.NaN

    .line 306
    .line 307
    if-ge v13, v15, :cond_11

    .line 308
    .line 309
    aget v15, v1, v13

    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_11
    move/from16 v15, v17

    .line 313
    .line 314
    :goto_7
    if-ge v14, v4, :cond_12

    .line 315
    .line 316
    aget v17, v7, v14

    .line 317
    .line 318
    :cond_12
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 319
    .line 320
    .line 321
    move-result v18

    .line 322
    if-nez v18, :cond_16

    .line 323
    .line 324
    cmpg-float v18, v15, v17

    .line 325
    .line 326
    if-gez v18, :cond_13

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_13
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    .line 330
    .line 331
    .line 332
    move-result v18

    .line 333
    if-nez v18, :cond_15

    .line 334
    .line 335
    cmpg-float v18, v17, v15

    .line 336
    .line 337
    if-gez v18, :cond_14

    .line 338
    .line 339
    goto :goto_8

    .line 340
    :cond_14
    aput v15, v10, v11

    .line 341
    .line 342
    add-int/lit8 v13, v13, 0x1

    .line 343
    .line 344
    add-int/lit8 v14, v14, 0x1

    .line 345
    .line 346
    add-int/lit8 v12, v12, 0x1

    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_15
    :goto_8
    aput v17, v10, v11

    .line 350
    .line 351
    add-int/lit8 v14, v14, 0x1

    .line 352
    .line 353
    goto :goto_a

    .line 354
    :cond_16
    :goto_9
    aput v15, v10, v11

    .line 355
    .line 356
    add-int/lit8 v13, v13, 0x1

    .line 357
    .line 358
    :goto_a
    add-int/lit8 v11, v11, 0x1

    .line 359
    .line 360
    goto :goto_6

    .line 361
    :cond_17
    if-nez v12, :cond_18

    .line 362
    .line 363
    move-object v1, v10

    .line 364
    goto :goto_b

    .line 365
    :cond_18
    sub-int/2addr v9, v12

    .line 366
    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    :goto_b
    array-length v9, v1

    .line 371
    new-array v10, v9, [I

    .line 372
    .line 373
    move v11, v5

    .line 374
    :goto_c
    if-ge v11, v9, :cond_26

    .line 375
    .line 376
    aget v12, v1, v11

    .line 377
    .line 378
    invoke-static {v3, v12}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 379
    .line 380
    .line 381
    move-result v13

    .line 382
    invoke-static {v7, v12}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 383
    .line 384
    .line 385
    move-result v14

    .line 386
    const-string v15, "Unreachable code."

    .line 387
    .line 388
    const/high16 v17, 0x437f0000    # 255.0f

    .line 389
    .line 390
    iget-object v5, v0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 391
    .line 392
    if-ltz v13, :cond_1f

    .line 393
    .line 394
    if-lez v14, :cond_19

    .line 395
    .line 396
    goto :goto_12

    .line 397
    :cond_19
    aget v5, v5, v13

    .line 398
    .line 399
    if-lt v4, v6, :cond_1a

    .line 400
    .line 401
    const/4 v13, 0x0

    .line 402
    aget v14, v7, v13

    .line 403
    .line 404
    cmpg-float v13, v12, v14

    .line 405
    .line 406
    if-gtz v13, :cond_1b

    .line 407
    .line 408
    :cond_1a
    const/4 v6, 0x0

    .line 409
    goto :goto_10

    .line 410
    :cond_1b
    const/4 v13, 0x1

    .line 411
    :goto_d
    if-ge v13, v4, :cond_1e

    .line 412
    .line 413
    aget v14, v7, v13

    .line 414
    .line 415
    cmpg-float v18, v14, v12

    .line 416
    .line 417
    if-gez v18, :cond_1c

    .line 418
    .line 419
    add-int/lit8 v6, v4, -0x1

    .line 420
    .line 421
    if-eq v13, v6, :cond_1c

    .line 422
    .line 423
    add-int/lit8 v13, v13, 0x1

    .line 424
    .line 425
    const/4 v6, 0x2

    .line 426
    goto :goto_d

    .line 427
    :cond_1c
    if-gtz v18, :cond_1d

    .line 428
    .line 429
    aget v6, v8, v13

    .line 430
    .line 431
    :goto_e
    mul-float v6, v6, v17

    .line 432
    .line 433
    float-to-int v6, v6

    .line 434
    goto :goto_f

    .line 435
    :cond_1d
    add-int/lit8 v6, v13, -0x1

    .line 436
    .line 437
    aget v15, v7, v6

    .line 438
    .line 439
    sub-float/2addr v14, v15

    .line 440
    sub-float/2addr v12, v15

    .line 441
    div-float/2addr v12, v14

    .line 442
    aget v6, v8, v6

    .line 443
    .line 444
    aget v13, v8, v13

    .line 445
    .line 446
    invoke-static {v6, v13, v12}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 447
    .line 448
    .line 449
    move-result v6

    .line 450
    goto :goto_e

    .line 451
    :goto_f
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    .line 452
    .line 453
    .line 454
    move-result v12

    .line 455
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    .line 456
    .line 457
    .line 458
    move-result v13

    .line 459
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    invoke-static {v6, v12, v13, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    goto :goto_11

    .line 468
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 469
    .line 470
    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v0

    .line 474
    :goto_10
    aget v12, v8, v6

    .line 475
    .line 476
    mul-float v12, v12, v17

    .line 477
    .line 478
    float-to-int v6, v12

    .line 479
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    .line 480
    .line 481
    .line 482
    move-result v12

    .line 483
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    .line 484
    .line 485
    .line 486
    move-result v13

    .line 487
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    invoke-static {v6, v12, v13, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    :goto_11
    aput v5, v10, v11

    .line 496
    .line 497
    const/4 v6, 0x0

    .line 498
    goto/16 :goto_17

    .line 499
    .line 500
    :cond_1f
    :goto_12
    if-gez v14, :cond_20

    .line 501
    .line 502
    add-int/lit8 v14, v14, 0x1

    .line 503
    .line 504
    neg-int v14, v14

    .line 505
    :cond_20
    aget v6, v8, v14

    .line 506
    .line 507
    array-length v13, v5

    .line 508
    const/4 v14, 0x2

    .line 509
    if-lt v13, v14, :cond_21

    .line 510
    .line 511
    const/4 v13, 0x0

    .line 512
    aget v18, v3, v13

    .line 513
    .line 514
    cmpl-float v13, v12, v18

    .line 515
    .line 516
    if-nez v13, :cond_22

    .line 517
    .line 518
    :cond_21
    const/4 v6, 0x0

    .line 519
    goto :goto_15

    .line 520
    :cond_22
    const/4 v13, 0x1

    .line 521
    :goto_13
    if-ge v13, v2, :cond_25

    .line 522
    .line 523
    aget v18, v3, v13

    .line 524
    .line 525
    cmpg-float v19, v18, v12

    .line 526
    .line 527
    if-gez v19, :cond_23

    .line 528
    .line 529
    add-int/lit8 v14, v2, -0x1

    .line 530
    .line 531
    if-eq v13, v14, :cond_23

    .line 532
    .line 533
    add-int/lit8 v13, v13, 0x1

    .line 534
    .line 535
    const/4 v14, 0x2

    .line 536
    goto :goto_13

    .line 537
    :cond_23
    add-int/lit8 v14, v2, -0x1

    .line 538
    .line 539
    if-ne v13, v14, :cond_24

    .line 540
    .line 541
    cmpl-float v14, v12, v18

    .line 542
    .line 543
    if-ltz v14, :cond_24

    .line 544
    .line 545
    mul-float v6, v6, v17

    .line 546
    .line 547
    float-to-int v6, v6

    .line 548
    aget v12, v5, v13

    .line 549
    .line 550
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    .line 551
    .line 552
    .line 553
    move-result v12

    .line 554
    aget v14, v5, v13

    .line 555
    .line 556
    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    .line 557
    .line 558
    .line 559
    move-result v14

    .line 560
    aget v5, v5, v13

    .line 561
    .line 562
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    invoke-static {v6, v12, v14, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    :goto_14
    const/4 v6, 0x0

    .line 571
    goto :goto_16

    .line 572
    :cond_24
    add-int/lit8 v14, v13, -0x1

    .line 573
    .line 574
    aget v15, v3, v14

    .line 575
    .line 576
    sub-float v18, v18, v15

    .line 577
    .line 578
    sub-float/2addr v12, v15

    .line 579
    div-float v12, v12, v18

    .line 580
    .line 581
    aget v13, v5, v13

    .line 582
    .line 583
    aget v5, v5, v14

    .line 584
    .line 585
    invoke-static {v12, v5, v13}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    mul-float v6, v6, v17

    .line 590
    .line 591
    float-to-int v6, v6

    .line 592
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    .line 593
    .line 594
    .line 595
    move-result v12

    .line 596
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    .line 597
    .line 598
    .line 599
    move-result v13

    .line 600
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    invoke-static {v6, v12, v13, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 605
    .line 606
    .line 607
    move-result v5

    .line 608
    goto :goto_14

    .line 609
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 610
    .line 611
    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    throw v0

    .line 615
    :goto_15
    aget v5, v5, v6

    .line 616
    .line 617
    :goto_16
    aput v5, v10, v11

    .line 618
    .line 619
    :goto_17
    add-int/lit8 v11, v11, 0x1

    .line 620
    .line 621
    move v5, v6

    .line 622
    const/4 v6, 0x2

    .line 623
    goto/16 :goto_c

    .line 624
    .line 625
    :cond_26
    new-instance v0, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 626
    .line 627
    invoke-direct {v0, v1, v10}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 628
    .line 629
    .line 630
    :goto_18
    return-object v0
.end method
