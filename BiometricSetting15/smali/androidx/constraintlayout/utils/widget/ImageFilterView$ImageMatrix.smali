.class public final Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mBrightness:F

.field public final mColorMatrix:Landroid/graphics/ColorMatrix;

.field public mContrast:F

.field public final mMatrix:[F

.field public mSaturation:F

.field public final mTmpColorMatrix:Landroid/graphics/ColorMatrix;

.field public mWarmth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mMatrix:[F

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/ColorMatrix;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 16
    .line 17
    new-instance v0, Landroid/graphics/ColorMatrix;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 27
    .line 28
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 29
    .line 30
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    .line 31
    .line 32
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final updateMatrix(Landroid/widget/ImageView;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    .line 6
    .line 7
    .line 8
    iget v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 9
    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    cmpl-float v3, v1, v2

    .line 13
    .line 14
    const/16 v6, 0x10

    .line 15
    .line 16
    const/16 v7, 0xf

    .line 17
    .line 18
    const/16 v8, 0xe

    .line 19
    .line 20
    const/16 v9, 0xd

    .line 21
    .line 22
    const/16 v10, 0xc

    .line 23
    .line 24
    const/16 v11, 0xb

    .line 25
    .line 26
    const/16 v12, 0xa

    .line 27
    .line 28
    const/16 v13, 0x9

    .line 29
    .line 30
    const/16 v14, 0x8

    .line 31
    .line 32
    const/4 v15, 0x7

    .line 33
    const/16 v16, 0x6

    .line 34
    .line 35
    const/16 v17, 0x5

    .line 36
    .line 37
    const/16 v18, 0x4

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/16 v19, 0x3

    .line 41
    .line 42
    const/16 v20, 0x2

    .line 43
    .line 44
    iget-object v5, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mMatrix:[F

    .line 45
    .line 46
    const/16 v21, 0x1

    .line 47
    .line 48
    const/16 v22, 0x0

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    sub-float v3, v2, v1

    .line 53
    .line 54
    const v23, 0x3e998c7e    # 0.2999f

    .line 55
    .line 56
    .line 57
    mul-float v23, v23, v3

    .line 58
    .line 59
    const v24, 0x3f1645a2    # 0.587f

    .line 60
    .line 61
    .line 62
    mul-float v24, v24, v3

    .line 63
    .line 64
    const v25, 0x3de978d5    # 0.114f

    .line 65
    .line 66
    .line 67
    mul-float v3, v3, v25

    .line 68
    .line 69
    add-float v25, v23, v1

    .line 70
    .line 71
    aput v25, v5, v22

    .line 72
    .line 73
    aput v24, v5, v21

    .line 74
    .line 75
    aput v3, v5, v20

    .line 76
    .line 77
    aput v4, v5, v19

    .line 78
    .line 79
    aput v4, v5, v18

    .line 80
    .line 81
    aput v23, v5, v17

    .line 82
    .line 83
    add-float v25, v24, v1

    .line 84
    .line 85
    aput v25, v5, v16

    .line 86
    .line 87
    aput v3, v5, v15

    .line 88
    .line 89
    aput v4, v5, v14

    .line 90
    .line 91
    aput v4, v5, v13

    .line 92
    .line 93
    aput v23, v5, v12

    .line 94
    .line 95
    aput v24, v5, v11

    .line 96
    .line 97
    add-float/2addr v3, v1

    .line 98
    aput v3, v5, v10

    .line 99
    .line 100
    aput v4, v5, v9

    .line 101
    .line 102
    aput v4, v5, v8

    .line 103
    .line 104
    aput v4, v5, v7

    .line 105
    .line 106
    aput v4, v5, v6

    .line 107
    .line 108
    const/16 v1, 0x11

    .line 109
    .line 110
    aput v4, v5, v1

    .line 111
    .line 112
    const/16 v1, 0x12

    .line 113
    .line 114
    aput v2, v5, v1

    .line 115
    .line 116
    const/16 v1, 0x13

    .line 117
    .line 118
    aput v4, v5, v1

    .line 119
    .line 120
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 121
    .line 122
    invoke-virtual {v1, v5}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 123
    .line 124
    .line 125
    move/from16 v1, v21

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    move/from16 v1, v22

    .line 129
    .line 130
    :goto_0
    iget v3, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    .line 131
    .line 132
    cmpl-float v23, v3, v2

    .line 133
    .line 134
    if-eqz v23, :cond_1

    .line 135
    .line 136
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    .line 137
    .line 138
    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 142
    .line 143
    iget-object v3, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 146
    .line 147
    .line 148
    move/from16 v1, v21

    .line 149
    .line 150
    :cond_1
    iget v3, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    .line 151
    .line 152
    cmpl-float v23, v3, v2

    .line 153
    .line 154
    if-eqz v23, :cond_6

    .line 155
    .line 156
    cmpg-float v1, v3, v4

    .line 157
    .line 158
    if-gtz v1, :cond_2

    .line 159
    .line 160
    const v3, 0x3c23d70a    # 0.01f

    .line 161
    .line 162
    .line 163
    :cond_2
    const v1, 0x459c4000    # 5000.0f

    .line 164
    .line 165
    .line 166
    div-float/2addr v1, v3

    .line 167
    const/high16 v3, 0x42c80000    # 100.0f

    .line 168
    .line 169
    div-float/2addr v1, v3

    .line 170
    const/high16 v3, 0x42840000    # 66.0f

    .line 171
    .line 172
    cmpl-float v23, v1, v3

    .line 173
    .line 174
    const v24, 0x43211e9c

    .line 175
    .line 176
    .line 177
    const v25, 0x42c6f10d

    .line 178
    .line 179
    .line 180
    const/high16 v2, 0x437f0000    # 255.0f

    .line 181
    .line 182
    if-lez v23, :cond_3

    .line 183
    .line 184
    const/high16 v23, 0x42700000    # 60.0f

    .line 185
    .line 186
    sub-float v6, v1, v23

    .line 187
    .line 188
    float-to-double v7, v6

    .line 189
    const-wide v9, -0x403ef32580000000L    # -0.13320475816726685

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 195
    .line 196
    .line 197
    move-result-wide v9

    .line 198
    double-to-float v9, v9

    .line 199
    const v10, 0x43a4d970

    .line 200
    .line 201
    .line 202
    mul-float/2addr v9, v10

    .line 203
    const-wide v11, 0x3fb354f100000000L    # 0.07551485300064087

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 209
    .line 210
    .line 211
    move-result-wide v7

    .line 212
    double-to-float v7, v7

    .line 213
    const v8, 0x43900fa3

    .line 214
    .line 215
    .line 216
    mul-float/2addr v7, v8

    .line 217
    goto :goto_1

    .line 218
    :cond_3
    float-to-double v7, v1

    .line 219
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    .line 220
    .line 221
    .line 222
    move-result-wide v7

    .line 223
    double-to-float v7, v7

    .line 224
    mul-float v7, v7, v25

    .line 225
    .line 226
    sub-float v7, v7, v24

    .line 227
    .line 228
    move v9, v2

    .line 229
    :goto_1
    cmpg-float v3, v1, v3

    .line 230
    .line 231
    const v8, 0x439885bc

    .line 232
    .line 233
    .line 234
    const v11, 0x430a848a

    .line 235
    .line 236
    .line 237
    if-gez v3, :cond_5

    .line 238
    .line 239
    const/high16 v3, 0x41980000    # 19.0f

    .line 240
    .line 241
    cmpl-float v3, v1, v3

    .line 242
    .line 243
    if-lez v3, :cond_4

    .line 244
    .line 245
    const/high16 v3, 0x41200000    # 10.0f

    .line 246
    .line 247
    sub-float/2addr v1, v3

    .line 248
    float-to-double v13, v1

    .line 249
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    .line 250
    .line 251
    .line 252
    move-result-wide v13

    .line 253
    double-to-float v1, v13

    .line 254
    mul-float/2addr v1, v11

    .line 255
    sub-float/2addr v1, v8

    .line 256
    goto :goto_2

    .line 257
    :cond_4
    move v1, v4

    .line 258
    goto :goto_2

    .line 259
    :cond_5
    move v1, v2

    .line 260
    :goto_2
    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    const/high16 v13, 0x42480000    # 50.0f

    .line 285
    .line 286
    float-to-double v13, v13

    .line 287
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    .line 288
    .line 289
    .line 290
    move-result-wide v13

    .line 291
    double-to-float v13, v13

    .line 292
    mul-float v13, v13, v25

    .line 293
    .line 294
    sub-float v13, v13, v24

    .line 295
    .line 296
    const/high16 v14, 0x42200000    # 40.0f

    .line 297
    .line 298
    move/from16 v25, v7

    .line 299
    .line 300
    float-to-double v6, v14

    .line 301
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 302
    .line 303
    .line 304
    move-result-wide v6

    .line 305
    double-to-float v6, v6

    .line 306
    mul-float/2addr v6, v11

    .line 307
    sub-float/2addr v6, v8

    .line 308
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    div-float/2addr v9, v7

    .line 333
    div-float v7, v25, v8

    .line 334
    .line 335
    div-float/2addr v1, v2

    .line 336
    aput v9, v5, v22

    .line 337
    .line 338
    aput v4, v5, v21

    .line 339
    .line 340
    aput v4, v5, v20

    .line 341
    .line 342
    aput v4, v5, v19

    .line 343
    .line 344
    aput v4, v5, v18

    .line 345
    .line 346
    aput v4, v5, v17

    .line 347
    .line 348
    aput v7, v5, v16

    .line 349
    .line 350
    aput v4, v5, v15

    .line 351
    .line 352
    const/16 v2, 0x8

    .line 353
    .line 354
    aput v4, v5, v2

    .line 355
    .line 356
    const/16 v2, 0x9

    .line 357
    .line 358
    aput v4, v5, v2

    .line 359
    .line 360
    const/16 v2, 0xa

    .line 361
    .line 362
    aput v4, v5, v2

    .line 363
    .line 364
    const/16 v2, 0xb

    .line 365
    .line 366
    aput v4, v5, v2

    .line 367
    .line 368
    const/16 v2, 0xc

    .line 369
    .line 370
    aput v1, v5, v2

    .line 371
    .line 372
    const/16 v1, 0xd

    .line 373
    .line 374
    aput v4, v5, v1

    .line 375
    .line 376
    const/16 v1, 0xe

    .line 377
    .line 378
    aput v4, v5, v1

    .line 379
    .line 380
    const/16 v1, 0xf

    .line 381
    .line 382
    aput v4, v5, v1

    .line 383
    .line 384
    const/16 v1, 0x10

    .line 385
    .line 386
    aput v4, v5, v1

    .line 387
    .line 388
    const/16 v1, 0x11

    .line 389
    .line 390
    aput v4, v5, v1

    .line 391
    .line 392
    const/high16 v1, 0x3f800000    # 1.0f

    .line 393
    .line 394
    const/16 v2, 0x12

    .line 395
    .line 396
    aput v1, v5, v2

    .line 397
    .line 398
    const/16 v1, 0x13

    .line 399
    .line 400
    aput v4, v5, v1

    .line 401
    .line 402
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    .line 403
    .line 404
    invoke-virtual {v1, v5}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 405
    .line 406
    .line 407
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 408
    .line 409
    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    .line 410
    .line 411
    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 412
    .line 413
    .line 414
    move/from16 v1, v21

    .line 415
    .line 416
    :cond_6
    iget v2, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 417
    .line 418
    const/high16 v7, 0x3f800000    # 1.0f

    .line 419
    .line 420
    cmpl-float v8, v2, v7

    .line 421
    .line 422
    if-eqz v8, :cond_7

    .line 423
    .line 424
    aput v2, v5, v22

    .line 425
    .line 426
    aput v4, v5, v21

    .line 427
    .line 428
    aput v4, v5, v20

    .line 429
    .line 430
    aput v4, v5, v19

    .line 431
    .line 432
    aput v4, v5, v18

    .line 433
    .line 434
    aput v4, v5, v17

    .line 435
    .line 436
    aput v2, v5, v16

    .line 437
    .line 438
    aput v4, v5, v15

    .line 439
    .line 440
    const/16 v1, 0x8

    .line 441
    .line 442
    aput v4, v5, v1

    .line 443
    .line 444
    const/16 v1, 0x9

    .line 445
    .line 446
    aput v4, v5, v1

    .line 447
    .line 448
    const/16 v1, 0xa

    .line 449
    .line 450
    aput v4, v5, v1

    .line 451
    .line 452
    const/16 v1, 0xb

    .line 453
    .line 454
    aput v4, v5, v1

    .line 455
    .line 456
    const/16 v1, 0xc

    .line 457
    .line 458
    aput v2, v5, v1

    .line 459
    .line 460
    const/16 v1, 0xd

    .line 461
    .line 462
    aput v4, v5, v1

    .line 463
    .line 464
    const/16 v1, 0xe

    .line 465
    .line 466
    aput v4, v5, v1

    .line 467
    .line 468
    const/16 v1, 0xf

    .line 469
    .line 470
    aput v4, v5, v1

    .line 471
    .line 472
    const/16 v1, 0x10

    .line 473
    .line 474
    aput v4, v5, v1

    .line 475
    .line 476
    const/16 v1, 0x11

    .line 477
    .line 478
    aput v4, v5, v1

    .line 479
    .line 480
    const/high16 v1, 0x3f800000    # 1.0f

    .line 481
    .line 482
    const/16 v2, 0x12

    .line 483
    .line 484
    aput v1, v5, v2

    .line 485
    .line 486
    const/16 v1, 0x13

    .line 487
    .line 488
    aput v4, v5, v1

    .line 489
    .line 490
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    .line 491
    .line 492
    invoke-virtual {v1, v5}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 493
    .line 494
    .line 495
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 496
    .line 497
    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    .line 498
    .line 499
    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 500
    .line 501
    .line 502
    goto :goto_3

    .line 503
    :cond_7
    move/from16 v21, v1

    .line 504
    .line 505
    :goto_3
    if-eqz v21, :cond_8

    .line 506
    .line 507
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    .line 508
    .line 509
    iget-object v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 510
    .line 511
    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 512
    .line 513
    .line 514
    move-object/from16 v0, p1

    .line 515
    .line 516
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 517
    .line 518
    .line 519
    goto :goto_4

    .line 520
    :cond_8
    move-object/from16 v0, p1

    .line 521
    .line 522
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 523
    .line 524
    .line 525
    :goto_4
    return-void
.end method
