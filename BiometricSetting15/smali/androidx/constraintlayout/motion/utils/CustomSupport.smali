.class public abstract Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# direct methods
.method public static clamp(I)I
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x1f

    .line 2
    .line 3
    not-int v0, v0

    .line 4
    and-int/2addr p0, v0

    .line 5
    add-int/lit16 p0, p0, -0xff

    .line 6
    .line 7
    shr-int/lit8 v0, p0, 0x1f

    .line 8
    .line 9
    and-int/2addr p0, v0

    .line 10
    add-int/lit16 p0, p0, 0xff

    .line 11
    .line 12
    return p0
.end method

.method public static setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "\""

    .line 6
    .line 7
    const-string v3, " on View \""

    .line 8
    .line 9
    const-string v4, "CustomSupport"

    .line 10
    .line 11
    const-string v5, "unable to interpolate strings "

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v8, "set"

    .line 20
    .line 21
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    :try_start_0
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 34
    .line 35
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/4 v9, 0x3

    .line 40
    const/4 v10, 0x2

    .line 41
    const-wide v11, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/high16 v13, 0x437f0000    # 255.0f

    .line 47
    .line 48
    const/4 v14, 0x1

    .line 49
    const/4 v15, 0x0

    .line 50
    packed-switch v8, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :pswitch_0
    new-array v0, v14, [Ljava/lang/Class;

    .line 56
    .line 57
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    aput-object v5, v0, v15

    .line 60
    .line 61
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    aget v5, p2, v15

    .line 66
    .line 67
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :catch_0
    move-exception v0

    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :catch_1
    move-exception v0

    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :catch_2
    move-exception v0

    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :pswitch_1
    new-array v0, v14, [Ljava/lang/Class;

    .line 90
    .line 91
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 92
    .line 93
    aput-object v5, v0, v15

    .line 94
    .line 95
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    aget v5, p2, v15

    .line 100
    .line 101
    const/high16 v6, 0x3f000000    # 0.5f

    .line 102
    .line 103
    cmpl-float v5, v5, v6

    .line 104
    .line 105
    if-lez v5, :cond_0

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    move v14, v15

    .line 109
    :goto_0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :pswitch_2
    new-instance v6, Ljava/lang/RuntimeException;

    .line 123
    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v6

    .line 142
    :pswitch_3
    new-array v0, v14, [Ljava/lang/Class;

    .line 143
    .line 144
    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 145
    .line 146
    aput-object v5, v0, v15

    .line 147
    .line 148
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    aget v5, p2, v15

    .line 153
    .line 154
    float-to-double v5, v5

    .line 155
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 156
    .line 157
    .line 158
    move-result-wide v5

    .line 159
    double-to-float v5, v5

    .line 160
    mul-float/2addr v5, v13

    .line 161
    float-to-int v5, v5

    .line 162
    invoke-static {v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    aget v6, p2, v14

    .line 167
    .line 168
    float-to-double v14, v6

    .line 169
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 170
    .line 171
    .line 172
    move-result-wide v14

    .line 173
    double-to-float v6, v14

    .line 174
    mul-float/2addr v6, v13

    .line 175
    float-to-int v6, v6

    .line 176
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    aget v8, p2, v10

    .line 181
    .line 182
    float-to-double v14, v8

    .line 183
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 184
    .line 185
    .line 186
    move-result-wide v10

    .line 187
    double-to-float v8, v10

    .line 188
    mul-float/2addr v8, v13

    .line 189
    float-to-int v8, v8

    .line 190
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    aget v9, p2, v9

    .line 195
    .line 196
    mul-float/2addr v9, v13

    .line 197
    float-to-int v9, v9

    .line 198
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    shl-int/lit8 v9, v9, 0x18

    .line 203
    .line 204
    shl-int/lit8 v5, v5, 0x10

    .line 205
    .line 206
    or-int/2addr v5, v9

    .line 207
    shl-int/lit8 v6, v6, 0x8

    .line 208
    .line 209
    or-int/2addr v5, v6

    .line 210
    or-int/2addr v5, v8

    .line 211
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 212
    .line 213
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 217
    .line 218
    .line 219
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    goto/16 :goto_4

    .line 227
    .line 228
    :pswitch_4
    new-array v0, v14, [Ljava/lang/Class;

    .line 229
    .line 230
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 231
    .line 232
    aput-object v5, v0, v15

    .line 233
    .line 234
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    aget v5, p2, v15

    .line 239
    .line 240
    float-to-double v5, v5

    .line 241
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 242
    .line 243
    .line 244
    move-result-wide v5

    .line 245
    double-to-float v5, v5

    .line 246
    mul-float/2addr v5, v13

    .line 247
    float-to-int v5, v5

    .line 248
    invoke-static {v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    aget v6, p2, v14

    .line 253
    .line 254
    float-to-double v14, v6

    .line 255
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 256
    .line 257
    .line 258
    move-result-wide v14

    .line 259
    double-to-float v6, v14

    .line 260
    mul-float/2addr v6, v13

    .line 261
    float-to-int v6, v6

    .line 262
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    aget v8, p2, v10

    .line 267
    .line 268
    float-to-double v14, v8

    .line 269
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 270
    .line 271
    .line 272
    move-result-wide v10

    .line 273
    double-to-float v8, v10

    .line 274
    mul-float/2addr v8, v13

    .line 275
    float-to-int v8, v8

    .line 276
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    aget v9, p2, v9

    .line 281
    .line 282
    mul-float/2addr v9, v13

    .line 283
    float-to-int v9, v9

    .line 284
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    shl-int/lit8 v9, v9, 0x18

    .line 289
    .line 290
    shl-int/lit8 v5, v5, 0x10

    .line 291
    .line 292
    or-int/2addr v5, v9

    .line 293
    shl-int/lit8 v6, v6, 0x8

    .line 294
    .line 295
    or-int/2addr v5, v6

    .line 296
    or-int/2addr v5, v8

    .line 297
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    goto/16 :goto_4

    .line 309
    .line 310
    :pswitch_5
    new-array v0, v14, [Ljava/lang/Class;

    .line 311
    .line 312
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 313
    .line 314
    aput-object v5, v0, v15

    .line 315
    .line 316
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    aget v5, p2, v15

    .line 321
    .line 322
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    goto :goto_4

    .line 334
    :pswitch_6
    new-array v0, v14, [Ljava/lang/Class;

    .line 335
    .line 336
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 337
    .line 338
    aput-object v5, v0, v15

    .line 339
    .line 340
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    aget v5, p2, v15

    .line 345
    .line 346
    float-to-int v5, v5

    .line 347
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .line 357
    .line 358
    goto :goto_4

    .line 359
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v6, "Cannot invoke method "

    .line 362
    .line 363
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .line 388
    .line 389
    goto :goto_4

    .line 390
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    const-string v6, "Cannot access method "

    .line 393
    .line 394
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    .line 419
    .line 420
    goto :goto_4

    .line 421
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string v6, "No method "

    .line 424
    .line 425
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .line 450
    .line 451
    :goto_4
    return-void

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
