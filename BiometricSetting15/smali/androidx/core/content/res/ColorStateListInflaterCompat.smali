.class public abstract Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final sTempTypedValue:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq v3, v4, :cond_0

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-eq v3, v5, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-ne v3, v4, :cond_27

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "selector"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_26

    .line 33
    .line 34
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x1

    .line 39
    add-int/2addr v3, v4

    .line 40
    const/16 v5, 0x14

    .line 41
    .line 42
    new-array v6, v5, [[I

    .line 43
    .line 44
    new-array v5, v5, [I

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    move v8, v7

    .line 48
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eq v9, v4, :cond_25

    .line 53
    .line 54
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    const/4 v11, 0x3

    .line 59
    if-ge v10, v3, :cond_1

    .line 60
    .line 61
    if-eq v9, v11, :cond_25

    .line 62
    .line 63
    :cond_1
    const/4 v12, 0x2

    .line 64
    if-ne v9, v12, :cond_2

    .line 65
    .line 66
    if-gt v10, v3, :cond_2

    .line 67
    .line 68
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const-string v10, "item"

    .line 73
    .line 74
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-nez v9, :cond_3

    .line 79
    .line 80
    :cond_2
    move-object/from16 v28, v2

    .line 81
    .line 82
    move/from16 v29, v3

    .line 83
    .line 84
    move/from16 v16, v4

    .line 85
    .line 86
    goto/16 :goto_1d

    .line 87
    .line 88
    :cond_3
    sget-object v9, Landroidx/core/R$styleable;->ColorStateListItem:[I

    .line 89
    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0, v2, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    invoke-virtual {v1, v2, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    :goto_2
    const/4 v10, -0x1

    .line 102
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    const v14, -0xff01

    .line 107
    .line 108
    .line 109
    if-eq v13, v10, :cond_7

    .line 110
    .line 111
    sget-object v10, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 112
    .line 113
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    check-cast v15, Landroid/util/TypedValue;

    .line 118
    .line 119
    if-nez v15, :cond_5

    .line 120
    .line 121
    new-instance v15, Landroid/util/TypedValue;

    .line 122
    .line 123
    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    invoke-virtual {v0, v13, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 130
    .line 131
    .line 132
    iget v10, v15, Landroid/util/TypedValue;->type:I

    .line 133
    .line 134
    const/16 v15, 0x1c

    .line 135
    .line 136
    if-lt v10, v15, :cond_6

    .line 137
    .line 138
    const/16 v15, 0x1f

    .line 139
    .line 140
    if-gt v10, v15, :cond_6

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_6
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-static {v0, v10, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 152
    .line 153
    .line 154
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_4

    .line 156
    :catch_0
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    goto :goto_4

    .line 161
    :cond_7
    :goto_3
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    :goto_4
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    const/high16 v14, 0x3f800000    # 1.0f

    .line 170
    .line 171
    if-eqz v13, :cond_8

    .line 172
    .line 173
    invoke-virtual {v9, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    goto :goto_5

    .line 178
    :cond_8
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    if-eqz v13, :cond_9

    .line 183
    .line 184
    invoke-virtual {v9, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    goto :goto_5

    .line 189
    :cond_9
    move v11, v14

    .line 190
    :goto_5
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 191
    .line 192
    .line 193
    move-result v13

    .line 194
    const/4 v15, 0x4

    .line 195
    const/high16 v4, -0x40800000    # -1.0f

    .line 196
    .line 197
    if-eqz v13, :cond_a

    .line 198
    .line 199
    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    goto :goto_6

    .line 204
    :cond_a
    invoke-virtual {v9, v15, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    :goto_6
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    .line 210
    .line 211
    invoke-interface {v2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    new-array v13, v9, [I

    .line 216
    .line 217
    move v12, v7

    .line 218
    move v15, v12

    .line 219
    :goto_7
    if-ge v15, v9, :cond_d

    .line 220
    .line 221
    invoke-interface {v2, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    const v7, 0x10101a5

    .line 226
    .line 227
    .line 228
    if-eq v14, v7, :cond_c

    .line 229
    .line 230
    const v7, 0x101031f

    .line 231
    .line 232
    .line 233
    if-eq v14, v7, :cond_c

    .line 234
    .line 235
    const v7, 0x7f04002b

    .line 236
    .line 237
    .line 238
    if-eq v14, v7, :cond_c

    .line 239
    .line 240
    const v7, 0x7f040118

    .line 241
    .line 242
    .line 243
    if-eq v14, v7, :cond_c

    .line 244
    .line 245
    add-int/lit8 v7, v12, 0x1

    .line 246
    .line 247
    const/4 v0, 0x0

    .line 248
    invoke-interface {v2, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 249
    .line 250
    .line 251
    move-result v19

    .line 252
    if-eqz v19, :cond_b

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_b
    neg-int v14, v14

    .line 256
    :goto_8
    aput v14, v13, v12

    .line 257
    .line 258
    move v12, v7

    .line 259
    :cond_c
    add-int/lit8 v15, v15, 0x1

    .line 260
    .line 261
    move-object/from16 v0, p0

    .line 262
    .line 263
    const/4 v7, 0x0

    .line 264
    const/high16 v14, 0x3f800000    # 1.0f

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_d
    invoke-static {v13, v12}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const/4 v7, 0x0

    .line 272
    cmpl-float v9, v4, v7

    .line 273
    .line 274
    const/high16 v12, 0x42c80000    # 100.0f

    .line 275
    .line 276
    if-ltz v9, :cond_e

    .line 277
    .line 278
    cmpg-float v9, v4, v12

    .line 279
    .line 280
    if-gtz v9, :cond_e

    .line 281
    .line 282
    const/4 v9, 0x1

    .line 283
    :goto_9
    const/high16 v13, 0x3f800000    # 1.0f

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_e
    const/4 v9, 0x0

    .line 287
    goto :goto_9

    .line 288
    :goto_a
    cmpl-float v14, v11, v13

    .line 289
    .line 290
    if-nez v14, :cond_f

    .line 291
    .line 292
    if-nez v9, :cond_f

    .line 293
    .line 294
    move-object v7, v0

    .line 295
    move-object/from16 v28, v2

    .line 296
    .line 297
    move/from16 v29, v3

    .line 298
    .line 299
    const/16 v16, 0x1

    .line 300
    .line 301
    goto/16 :goto_1a

    .line 302
    .line 303
    :cond_f
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    int-to-float v13, v13

    .line 308
    mul-float/2addr v13, v11

    .line 309
    const/high16 v11, 0x3f000000    # 0.5f

    .line 310
    .line 311
    add-float/2addr v13, v11

    .line 312
    float-to-int v11, v13

    .line 313
    if-gez v11, :cond_10

    .line 314
    .line 315
    const/4 v13, 0x0

    .line 316
    goto :goto_b

    .line 317
    :cond_10
    const/16 v13, 0xff

    .line 318
    .line 319
    if-le v11, v13, :cond_11

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_11
    move v13, v11

    .line 323
    :goto_b
    if-eqz v9, :cond_20

    .line 324
    .line 325
    invoke-static {v10}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    sget-object v10, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 330
    .line 331
    iget v11, v9, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 332
    .line 333
    float-to-double v14, v11

    .line 334
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 335
    .line 336
    cmpg-double v14, v14, v19

    .line 337
    .line 338
    if-ltz v14, :cond_12

    .line 339
    .line 340
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 341
    .line 342
    .line 343
    move-result v14

    .line 344
    int-to-double v14, v14

    .line 345
    const-wide/16 v19, 0x0

    .line 346
    .line 347
    cmpg-double v14, v14, v19

    .line 348
    .line 349
    if-lez v14, :cond_12

    .line 350
    .line 351
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 352
    .line 353
    .line 354
    move-result v14

    .line 355
    int-to-double v14, v14

    .line 356
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 357
    .line 358
    cmpl-double v14, v14, v19

    .line 359
    .line 360
    if-ltz v14, :cond_13

    .line 361
    .line 362
    :cond_12
    move-object v7, v0

    .line 363
    move-object/from16 v28, v2

    .line 364
    .line 365
    move/from16 v29, v3

    .line 366
    .line 367
    const/16 v16, 0x1

    .line 368
    .line 369
    goto/16 :goto_18

    .line 370
    .line 371
    :cond_13
    iget v9, v9, Landroidx/core/content/res/CamColor;->mHue:F

    .line 372
    .line 373
    cmpg-float v14, v9, v7

    .line 374
    .line 375
    if-gez v14, :cond_14

    .line 376
    .line 377
    move v9, v7

    .line 378
    goto :goto_c

    .line 379
    :cond_14
    const/high16 v14, 0x43b40000    # 360.0f

    .line 380
    .line 381
    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    .line 382
    .line 383
    .line 384
    move-result v9

    .line 385
    :goto_c
    move/from16 v20, v7

    .line 386
    .line 387
    move v15, v11

    .line 388
    const/4 v14, 0x0

    .line 389
    const/16 v19, 0x1

    .line 390
    .line 391
    :goto_d
    sub-float v21, v20, v11

    .line 392
    .line 393
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    .line 394
    .line 395
    .line 396
    move-result v21

    .line 397
    const v22, 0x3ecccccd    # 0.4f

    .line 398
    .line 399
    .line 400
    cmpl-float v21, v21, v22

    .line 401
    .line 402
    if-ltz v21, :cond_1e

    .line 403
    .line 404
    const/high16 v21, 0x447a0000    # 1000.0f

    .line 405
    .line 406
    move/from16 v23, v7

    .line 407
    .line 408
    move/from16 v24, v12

    .line 409
    .line 410
    move/from16 v22, v21

    .line 411
    .line 412
    const/16 v25, 0x0

    .line 413
    .line 414
    :goto_e
    sub-float v26, v23, v24

    .line 415
    .line 416
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    .line 417
    .line 418
    .line 419
    move-result v26

    .line 420
    const v27, 0x3c23d70a    # 0.01f

    .line 421
    .line 422
    .line 423
    cmpl-float v26, v26, v27

    .line 424
    .line 425
    const/high16 v27, 0x40000000    # 2.0f

    .line 426
    .line 427
    if-lez v26, :cond_1a

    .line 428
    .line 429
    sub-float v26, v24, v23

    .line 430
    .line 431
    div-float v26, v26, v27

    .line 432
    .line 433
    add-float v7, v26, v23

    .line 434
    .line 435
    invoke-static {v7, v15, v9}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    .line 436
    .line 437
    .line 438
    move-result-object v12

    .line 439
    sget-object v1, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 440
    .line 441
    invoke-virtual {v12, v1}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 446
    .line 447
    .line 448
    move-result v12

    .line 449
    invoke-static {v12}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 450
    .line 451
    .line 452
    move-result v12

    .line 453
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 454
    .line 455
    .line 456
    move-result v28

    .line 457
    invoke-static/range {v28 .. v28}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 458
    .line 459
    .line 460
    move-result v28

    .line 461
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 462
    .line 463
    .line 464
    move-result v29

    .line 465
    invoke-static/range {v29 .. v29}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    .line 466
    .line 467
    .line 468
    move-result v29

    .line 469
    sget-object v30, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    .line 470
    .line 471
    const/16 v16, 0x1

    .line 472
    .line 473
    aget-object v30, v30, v16

    .line 474
    .line 475
    const/16 v18, 0x0

    .line 476
    .line 477
    aget v31, v30, v18

    .line 478
    .line 479
    mul-float v12, v12, v31

    .line 480
    .line 481
    aget v31, v30, v16

    .line 482
    .line 483
    mul-float v28, v28, v31

    .line 484
    .line 485
    add-float v28, v28, v12

    .line 486
    .line 487
    const/4 v12, 0x2

    .line 488
    aget v17, v30, v12

    .line 489
    .line 490
    mul-float v29, v29, v17

    .line 491
    .line 492
    add-float v29, v29, v28

    .line 493
    .line 494
    const/high16 v17, 0x42c80000    # 100.0f

    .line 495
    .line 496
    div-float v12, v29, v17

    .line 497
    .line 498
    const v28, 0x3c111aa7

    .line 499
    .line 500
    .line 501
    cmpg-float v28, v12, v28

    .line 502
    .line 503
    if-gtz v28, :cond_15

    .line 504
    .line 505
    const v28, 0x4461d2f7

    .line 506
    .line 507
    .line 508
    mul-float v12, v12, v28

    .line 509
    .line 510
    move-object/from16 v28, v2

    .line 511
    .line 512
    move/from16 v29, v3

    .line 513
    .line 514
    goto :goto_f

    .line 515
    :cond_15
    move-object/from16 v28, v2

    .line 516
    .line 517
    move/from16 v29, v3

    .line 518
    .line 519
    float-to-double v2, v12

    .line 520
    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    .line 521
    .line 522
    .line 523
    move-result-wide v2

    .line 524
    double-to-float v2, v2

    .line 525
    const/high16 v3, 0x42e80000    # 116.0f

    .line 526
    .line 527
    mul-float/2addr v2, v3

    .line 528
    const/high16 v3, 0x41800000    # 16.0f

    .line 529
    .line 530
    sub-float v12, v2, v3

    .line 531
    .line 532
    :goto_f
    sub-float v2, v4, v12

    .line 533
    .line 534
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    const v3, 0x3e4ccccd    # 0.2f

    .line 539
    .line 540
    .line 541
    cmpg-float v3, v2, v3

    .line 542
    .line 543
    if-gez v3, :cond_17

    .line 544
    .line 545
    invoke-static {v1}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    iget v3, v1, Landroidx/core/content/res/CamColor;->mJ:F

    .line 550
    .line 551
    move/from16 v30, v2

    .line 552
    .line 553
    iget v2, v1, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 554
    .line 555
    invoke-static {v3, v2, v9}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    iget v3, v1, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 560
    .line 561
    move/from16 v31, v7

    .line 562
    .line 563
    iget v7, v2, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 564
    .line 565
    sub-float/2addr v3, v7

    .line 566
    iget v7, v1, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 567
    .line 568
    move/from16 v32, v9

    .line 569
    .line 570
    iget v9, v2, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 571
    .line 572
    sub-float/2addr v7, v9

    .line 573
    iget v9, v1, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 574
    .line 575
    iget v2, v2, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 576
    .line 577
    sub-float/2addr v9, v2

    .line 578
    mul-float/2addr v3, v3

    .line 579
    mul-float/2addr v7, v7

    .line 580
    add-float/2addr v7, v3

    .line 581
    mul-float/2addr v9, v9

    .line 582
    add-float/2addr v9, v7

    .line 583
    float-to-double v2, v9

    .line 584
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 585
    .line 586
    .line 587
    move-result-wide v2

    .line 588
    move-object v7, v0

    .line 589
    move-object v9, v1

    .line 590
    const-wide v0, 0x3fe428f5c28f5c29L    # 0.63

    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 596
    .line 597
    .line 598
    move-result-wide v0

    .line 599
    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    mul-double/2addr v0, v2

    .line 605
    double-to-float v0, v0

    .line 606
    const/high16 v1, 0x3f800000    # 1.0f

    .line 607
    .line 608
    cmpg-float v2, v0, v1

    .line 609
    .line 610
    if-gtz v2, :cond_16

    .line 611
    .line 612
    move/from16 v22, v0

    .line 613
    .line 614
    move-object/from16 v25, v9

    .line 615
    .line 616
    move/from16 v21, v30

    .line 617
    .line 618
    :cond_16
    :goto_10
    const/4 v0, 0x0

    .line 619
    goto :goto_11

    .line 620
    :cond_17
    move/from16 v31, v7

    .line 621
    .line 622
    move/from16 v32, v9

    .line 623
    .line 624
    const/high16 v1, 0x3f800000    # 1.0f

    .line 625
    .line 626
    move-object v7, v0

    .line 627
    goto :goto_10

    .line 628
    :goto_11
    cmpl-float v2, v21, v0

    .line 629
    .line 630
    if-nez v2, :cond_18

    .line 631
    .line 632
    cmpl-float v2, v22, v0

    .line 633
    .line 634
    if-nez v2, :cond_18

    .line 635
    .line 636
    :goto_12
    move-object/from16 v2, v25

    .line 637
    .line 638
    goto :goto_14

    .line 639
    :cond_18
    cmpg-float v2, v12, v4

    .line 640
    .line 641
    if-gez v2, :cond_19

    .line 642
    .line 643
    move/from16 v23, v31

    .line 644
    .line 645
    goto :goto_13

    .line 646
    :cond_19
    move/from16 v24, v31

    .line 647
    .line 648
    :goto_13
    move-object/from16 v1, p2

    .line 649
    .line 650
    move/from16 v12, v17

    .line 651
    .line 652
    move-object/from16 v2, v28

    .line 653
    .line 654
    move/from16 v3, v29

    .line 655
    .line 656
    move/from16 v9, v32

    .line 657
    .line 658
    move-object/from16 v33, v7

    .line 659
    .line 660
    move v7, v0

    .line 661
    move-object/from16 v0, v33

    .line 662
    .line 663
    goto/16 :goto_e

    .line 664
    .line 665
    :cond_1a
    move-object/from16 v28, v2

    .line 666
    .line 667
    move/from16 v29, v3

    .line 668
    .line 669
    move/from16 v32, v9

    .line 670
    .line 671
    move/from16 v17, v12

    .line 672
    .line 673
    const/high16 v1, 0x3f800000    # 1.0f

    .line 674
    .line 675
    const/16 v16, 0x1

    .line 676
    .line 677
    move/from16 v33, v7

    .line 678
    .line 679
    move-object v7, v0

    .line 680
    move/from16 v0, v33

    .line 681
    .line 682
    goto :goto_12

    .line 683
    :goto_14
    if-eqz v19, :cond_1c

    .line 684
    .line 685
    if-eqz v2, :cond_1b

    .line 686
    .line 687
    invoke-virtual {v2, v10}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    :goto_15
    move v10, v0

    .line 692
    goto :goto_19

    .line 693
    :cond_1b
    sub-float v2, v11, v20

    .line 694
    .line 695
    div-float v2, v2, v27

    .line 696
    .line 697
    add-float v15, v2, v20

    .line 698
    .line 699
    move-object/from16 v1, p2

    .line 700
    .line 701
    move/from16 v12, v17

    .line 702
    .line 703
    move-object/from16 v2, v28

    .line 704
    .line 705
    move/from16 v3, v29

    .line 706
    .line 707
    move/from16 v9, v32

    .line 708
    .line 709
    const/16 v19, 0x0

    .line 710
    .line 711
    :goto_16
    move-object/from16 v33, v7

    .line 712
    .line 713
    move v7, v0

    .line 714
    move-object/from16 v0, v33

    .line 715
    .line 716
    goto/16 :goto_d

    .line 717
    .line 718
    :cond_1c
    if-nez v2, :cond_1d

    .line 719
    .line 720
    move v11, v15

    .line 721
    goto :goto_17

    .line 722
    :cond_1d
    move-object v14, v2

    .line 723
    move/from16 v20, v15

    .line 724
    .line 725
    :goto_17
    sub-float v2, v11, v20

    .line 726
    .line 727
    div-float v2, v2, v27

    .line 728
    .line 729
    add-float v15, v2, v20

    .line 730
    .line 731
    move-object/from16 v1, p2

    .line 732
    .line 733
    move/from16 v12, v17

    .line 734
    .line 735
    move-object/from16 v2, v28

    .line 736
    .line 737
    move/from16 v3, v29

    .line 738
    .line 739
    move/from16 v9, v32

    .line 740
    .line 741
    goto :goto_16

    .line 742
    :cond_1e
    move-object v7, v0

    .line 743
    move-object/from16 v28, v2

    .line 744
    .line 745
    move/from16 v29, v3

    .line 746
    .line 747
    const/16 v16, 0x1

    .line 748
    .line 749
    if-nez v14, :cond_1f

    .line 750
    .line 751
    invoke-static {v4}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    goto :goto_15

    .line 756
    :cond_1f
    invoke-virtual {v14, v10}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 757
    .line 758
    .line 759
    move-result v0

    .line 760
    goto :goto_15

    .line 761
    :goto_18
    invoke-static {v4}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    goto :goto_15

    .line 766
    :cond_20
    move-object v7, v0

    .line 767
    move-object/from16 v28, v2

    .line 768
    .line 769
    move/from16 v29, v3

    .line 770
    .line 771
    const/16 v16, 0x1

    .line 772
    .line 773
    :goto_19
    const v0, 0xffffff

    .line 774
    .line 775
    .line 776
    and-int/2addr v0, v10

    .line 777
    shl-int/lit8 v1, v13, 0x18

    .line 778
    .line 779
    or-int v10, v0, v1

    .line 780
    .line 781
    :goto_1a
    add-int/lit8 v0, v8, 0x1

    .line 782
    .line 783
    array-length v1, v5

    .line 784
    const/16 v2, 0x8

    .line 785
    .line 786
    if-le v0, v1, :cond_22

    .line 787
    .line 788
    const/4 v1, 0x4

    .line 789
    if-gt v8, v1, :cond_21

    .line 790
    .line 791
    move v1, v2

    .line 792
    goto :goto_1b

    .line 793
    :cond_21
    mul-int/lit8 v1, v8, 0x2

    .line 794
    .line 795
    :goto_1b
    new-array v1, v1, [I

    .line 796
    .line 797
    const/4 v3, 0x0

    .line 798
    invoke-static {v5, v3, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    .line 800
    .line 801
    move-object v5, v1

    .line 802
    :cond_22
    aput v10, v5, v8

    .line 803
    .line 804
    array-length v1, v6

    .line 805
    if-le v0, v1, :cond_24

    .line 806
    .line 807
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    const/4 v3, 0x4

    .line 816
    if-gt v8, v3, :cond_23

    .line 817
    .line 818
    goto :goto_1c

    .line 819
    :cond_23
    mul-int/lit8 v2, v8, 0x2

    .line 820
    .line 821
    :goto_1c
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    check-cast v1, [Ljava/lang/Object;

    .line 826
    .line 827
    const/4 v2, 0x0

    .line 828
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    .line 830
    .line 831
    move-object v6, v1

    .line 832
    :cond_24
    aput-object v7, v6, v8

    .line 833
    .line 834
    check-cast v6, [[I

    .line 835
    .line 836
    move-object/from16 v1, p2

    .line 837
    .line 838
    move v8, v0

    .line 839
    move/from16 v4, v16

    .line 840
    .line 841
    move-object/from16 v2, v28

    .line 842
    .line 843
    move/from16 v3, v29

    .line 844
    .line 845
    const/4 v7, 0x0

    .line 846
    move-object/from16 v0, p0

    .line 847
    .line 848
    goto/16 :goto_1

    .line 849
    .line 850
    :goto_1d
    move-object/from16 v0, p0

    .line 851
    .line 852
    move-object/from16 v1, p2

    .line 853
    .line 854
    move/from16 v4, v16

    .line 855
    .line 856
    move-object/from16 v2, v28

    .line 857
    .line 858
    move/from16 v3, v29

    .line 859
    .line 860
    const/4 v7, 0x0

    .line 861
    goto/16 :goto_1

    .line 862
    .line 863
    :cond_25
    new-array v0, v8, [I

    .line 864
    .line 865
    new-array v1, v8, [[I

    .line 866
    .line 867
    const/4 v2, 0x0

    .line 868
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    .line 870
    .line 871
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    .line 873
    .line 874
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 875
    .line 876
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 877
    .line 878
    .line 879
    return-object v2

    .line 880
    :cond_26
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 881
    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    .line 883
    .line 884
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .line 886
    .line 887
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    const-string v2, ": invalid color state list tag "

    .line 895
    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    throw v0

    .line 910
    :cond_27
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 911
    .line 912
    const-string v1, "No start tag found"

    .line 913
    .line 914
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    throw v0
.end method
