.class public Landroidx/constraintlayout/core/motion/utils/Easing;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final NAMED_EASING:[Ljava/lang/String;

.field public static final sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;


# instance fields
.field public mStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 7
    .line 8
    const-string v0, "decelerate"

    .line 9
    .line 10
    const-string v1, "linear"

    .line 11
    .line 12
    const-string v2, "standard"

    .line 13
    .line 14
    const-string v3, "accelerate"

    .line 15
    .line 16
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "identity"

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing;->mStr:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v6, "cubic"

    .line 13
    .line 14
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    const-string v6, "spline"

    .line 27
    .line 28
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const/16 v7, 0x2c

    .line 33
    .line 34
    const/16 v8, 0x28

    .line 35
    .line 36
    if-eqz v6, :cond_5

    .line 37
    .line 38
    new-instance v6, Landroidx/constraintlayout/core/motion/utils/StepCurve;

    .line 39
    .line 40
    invoke-direct {v6}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, v6, Landroidx/constraintlayout/core/motion/utils/Easing;->mStr:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    div-int/2addr v9, v4

    .line 50
    new-array v9, v9, [D

    .line 51
    .line 52
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    add-int/2addr v8, v5

    .line 57
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    move v11, v3

    .line 62
    :goto_0
    if-eq v10, v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    add-int/lit8 v12, v11, 0x1

    .line 73
    .line 74
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 75
    .line 76
    .line 77
    move-result-wide v13

    .line 78
    aput-wide v13, v9, v11

    .line 79
    .line 80
    add-int/lit8 v8, v10, 0x1

    .line 81
    .line 82
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    move v11, v12

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/16 v2, 0x29

    .line 89
    .line 90
    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->indexOf(II)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    add-int/lit8 v2, v11, 0x1

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 105
    .line 106
    .line 107
    move-result-wide v7

    .line 108
    aput-wide v7, v9, v11

    .line 109
    .line 110
    invoke-static {v9, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    array-length v2, v0

    .line 115
    mul-int/2addr v2, v1

    .line 116
    sub-int/2addr v2, v4

    .line 117
    array-length v1, v0

    .line 118
    sub-int/2addr v1, v5

    .line 119
    int-to-double v7, v1

    .line 120
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 121
    .line 122
    div-double v7, v9, v7

    .line 123
    .line 124
    new-array v11, v4, [I

    .line 125
    .line 126
    aput v5, v11, v5

    .line 127
    .line 128
    aput v2, v11, v3

    .line 129
    .line 130
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 131
    .line 132
    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    check-cast v11, [[D

    .line 137
    .line 138
    new-array v2, v2, [D

    .line 139
    .line 140
    move v12, v3

    .line 141
    :goto_1
    array-length v13, v0

    .line 142
    if-ge v12, v13, :cond_4

    .line 143
    .line 144
    aget-wide v13, v0, v12

    .line 145
    .line 146
    add-int v15, v12, v1

    .line 147
    .line 148
    aget-object v16, v11, v15

    .line 149
    .line 150
    aput-wide v13, v16, v3

    .line 151
    .line 152
    move-object/from16 v17, v6

    .line 153
    .line 154
    int-to-double v5, v12

    .line 155
    mul-double/2addr v5, v7

    .line 156
    aput-wide v5, v2, v15

    .line 157
    .line 158
    if-lez v12, :cond_3

    .line 159
    .line 160
    mul-int/lit8 v15, v1, 0x2

    .line 161
    .line 162
    add-int/2addr v15, v12

    .line 163
    aget-object v18, v11, v15

    .line 164
    .line 165
    add-double v19, v13, v9

    .line 166
    .line 167
    aput-wide v19, v18, v3

    .line 168
    .line 169
    add-double v18, v5, v9

    .line 170
    .line 171
    aput-wide v18, v2, v15

    .line 172
    .line 173
    const/4 v15, 0x1

    .line 174
    add-int/lit8 v16, v12, -0x1

    .line 175
    .line 176
    aget-object v18, v11, v16

    .line 177
    .line 178
    sub-double/2addr v13, v9

    .line 179
    sub-double/2addr v13, v7

    .line 180
    aput-wide v13, v18, v3

    .line 181
    .line 182
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 183
    .line 184
    add-double/2addr v5, v13

    .line 185
    sub-double/2addr v5, v7

    .line 186
    aput-wide v5, v2, v16

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_3
    const/4 v15, 0x1

    .line 190
    :goto_2
    add-int/2addr v12, v15

    .line 191
    move v5, v15

    .line 192
    move-object/from16 v6, v17

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    move-object/from16 v17, v6

    .line 196
    .line 197
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 198
    .line 199
    invoke-direct {v0, v2, v11}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    .line 200
    .line 201
    .line 202
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v3, " 0 "

    .line 207
    .line 208
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-wide/16 v3, 0x0

    .line 212
    .line 213
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(D)D

    .line 214
    .line 215
    .line 216
    move-result-wide v3

    .line 217
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v3, " 1 "

    .line 230
    .line 231
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v9, v10}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(D)D

    .line 235
    .line 236
    .line 237
    move-result-wide v3

    .line 238
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v1, v17

    .line 249
    .line 250
    iput-object v0, v1, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 251
    .line 252
    return-object v1

    .line 253
    :cond_5
    const-string v5, "Schlick"

    .line 254
    .line 255
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_6

    .line 260
    .line 261
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/Schlick;

    .line 262
    .line 263
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    .line 264
    .line 265
    .line 266
    iput-object v0, v1, Landroidx/constraintlayout/core/motion/utils/Easing;->mStr:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->indexOf(II)I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    const/4 v5, 0x1

    .line 277
    add-int/2addr v2, v5

    .line 278
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 287
    .line 288
    .line 289
    move-result-wide v8

    .line 290
    iput-wide v8, v1, Landroidx/constraintlayout/core/motion/utils/Schlick;->mS:D

    .line 291
    .line 292
    add-int/2addr v3, v5

    .line 293
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 306
    .line 307
    .line 308
    move-result-wide v2

    .line 309
    iput-wide v2, v1, Landroidx/constraintlayout/core/motion/utils/Schlick;->mT:D

    .line 310
    .line 311
    return-object v1

    .line 312
    :cond_6
    const/4 v5, 0x1

    .line 313
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 314
    .line 315
    .line 316
    move-result v6

    .line 317
    sparse-switch v6, :sswitch_data_0

    .line 318
    .line 319
    .line 320
    :goto_3
    move v1, v2

    .line 321
    goto :goto_4

    .line 322
    :sswitch_0
    const-string v1, "standard"

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_7

    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_7
    const/4 v1, 0x5

    .line 332
    goto :goto_4

    .line 333
    :sswitch_1
    const-string v1, "overshoot"

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-nez v0, :cond_8

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_8
    const/4 v1, 0x4

    .line 343
    goto :goto_4

    .line 344
    :sswitch_2
    const-string v3, "linear"

    .line 345
    .line 346
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_c

    .line 351
    .line 352
    goto :goto_3

    .line 353
    :sswitch_3
    const-string v1, "anticipate"

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-nez v0, :cond_9

    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_9
    move v1, v4

    .line 363
    goto :goto_4

    .line 364
    :sswitch_4
    const-string v1, "decelerate"

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-nez v0, :cond_a

    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_a
    move v1, v5

    .line 374
    goto :goto_4

    .line 375
    :sswitch_5
    const-string v1, "accelerate"

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_b

    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_b
    move v1, v3

    .line 385
    :cond_c
    :goto_4
    packed-switch v1, :pswitch_data_0

    .line 386
    .line 387
    .line 388
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 389
    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    const-string v2, "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or "

    .line 393
    .line 394
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    sget-object v2, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 398
    .line 399
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    sget-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 414
    .line 415
    return-object v0

    .line 416
    :pswitch_0
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 417
    .line 418
    const-string v1, "cubic(0.4, 0.0, 0.2, 1)"

    .line 419
    .line 420
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    return-object v0

    .line 424
    :pswitch_1
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 425
    .line 426
    const-string v1, "cubic(0.34, 1.56, 0.64, 1)"

    .line 427
    .line 428
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    return-object v0

    .line 432
    :pswitch_2
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 433
    .line 434
    const-string v1, "cubic(1, 1, 0, 0)"

    .line 435
    .line 436
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    return-object v0

    .line 440
    :pswitch_3
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 441
    .line 442
    const-string v1, "cubic(0.36, 0, 0.66, -0.56)"

    .line 443
    .line 444
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    return-object v0

    .line 448
    :pswitch_4
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 449
    .line 450
    const-string v1, "cubic(0.0, 0.0, 0.2, 0.95)"

    .line 451
    .line 452
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    return-object v0

    .line 456
    :pswitch_5
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 457
    .line 458
    const-string v1, "cubic(0.4, 0.05, 0.8, 0.7)"

    .line 459
    .line 460
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    return-object v0

    .line 464
    nop

    .line 465
    :sswitch_data_0
    .sparse-switch
        -0x50bb8523 -> :sswitch_5
        -0x4b5653c4 -> :sswitch_4
        -0x47620096 -> :sswitch_3
        -0x41b970db -> :sswitch_2
        -0x2ca5d435 -> :sswitch_1
        0x4e3d1ebd -> :sswitch_0
    .end sparse-switch

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get(D)D
    .locals 0

    .line 1
    return-wide p1
.end method

.method public getDiff(D)D
    .locals 0

    .line 1
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    return-wide p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/Easing;->mStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
