.class public abstract Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# direct methods
.method public static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    move/from16 v10, p6

    .line 8
    .line 9
    move-object/from16 v11, p7

    .line 10
    .line 11
    const-string v3, "Failed requirement."

    .line 12
    .line 13
    if-ge v2, v10, :cond_12

    .line 14
    .line 15
    move v4, v2

    .line 16
    :goto_0
    if-ge v4, v10, :cond_1

    .line 17
    .line 18
    move-object/from16 v5, p4

    .line 19
    .line 20
    check-cast v5, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lokio/ByteString;

    .line 27
    .line 28
    invoke-virtual {v5}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-lt v5, v1, :cond_0

    .line 33
    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    move-object/from16 v12, p4

    .line 48
    .line 49
    check-cast v12, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lokio/ByteString;

    .line 56
    .line 57
    add-int/lit8 v4, v10, -0x1

    .line 58
    .line 59
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lokio/ByteString;

    .line 64
    .line 65
    invoke-virtual {v3}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const/4 v13, -0x1

    .line 70
    if-ne v1, v5, :cond_2

    .line 71
    .line 72
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Lokio/ByteString;

    .line 89
    .line 90
    move v6, v2

    .line 91
    move v2, v3

    .line 92
    move-object v3, v5

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move v6, v2

    .line 95
    move v2, v13

    .line 96
    :goto_1
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {v4, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    const/4 v8, 0x4

    .line 105
    const/4 v9, 0x2

    .line 106
    if-eq v5, v7, :cond_c

    .line 107
    .line 108
    add-int/lit8 v3, v6, 0x1

    .line 109
    .line 110
    const/4 v4, 0x1

    .line 111
    :goto_2
    if-ge v3, v10, :cond_4

    .line 112
    .line 113
    add-int/lit8 v5, v3, -0x1

    .line 114
    .line 115
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lokio/ByteString;

    .line 120
    .line 121
    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    check-cast v7, Lokio/ByteString;

    .line 130
    .line 131
    invoke-virtual {v7, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eq v5, v7, :cond_3

    .line 136
    .line 137
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    iget-wide v14, v0, Lokio/Buffer;->size:J

    .line 143
    .line 144
    int-to-long v7, v8

    .line 145
    div-long/2addr v14, v7

    .line 146
    add-long v14, v14, p0

    .line 147
    .line 148
    move-wide/from16 v16, v7

    .line 149
    .line 150
    int-to-long v7, v9

    .line 151
    add-long/2addr v14, v7

    .line 152
    mul-int/lit8 v3, v4, 0x2

    .line 153
    .line 154
    int-to-long v7, v3

    .line 155
    add-long/2addr v14, v7

    .line 156
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 160
    .line 161
    .line 162
    move v2, v6

    .line 163
    :goto_3
    if-ge v2, v10, :cond_7

    .line 164
    .line 165
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Lokio/ByteString;

    .line 170
    .line 171
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eq v2, v6, :cond_5

    .line 176
    .line 177
    add-int/lit8 v4, v2, -0x1

    .line 178
    .line 179
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    check-cast v4, Lokio/ByteString;

    .line 184
    .line 185
    invoke-virtual {v4, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-eq v3, v4, :cond_6

    .line 190
    .line 191
    :cond_5
    and-int/lit16 v3, v3, 0xff

    .line 192
    .line 193
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)V

    .line 194
    .line 195
    .line 196
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    new-instance v9, Lokio/Buffer;

    .line 200
    .line 201
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 202
    .line 203
    .line 204
    move v7, v6

    .line 205
    :goto_4
    if-ge v7, v10, :cond_b

    .line 206
    .line 207
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Lokio/ByteString;

    .line 212
    .line 213
    invoke-virtual {v2, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    add-int/lit8 v3, v7, 0x1

    .line 218
    .line 219
    move v4, v3

    .line 220
    :goto_5
    if-ge v4, v10, :cond_9

    .line 221
    .line 222
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    check-cast v5, Lokio/ByteString;

    .line 227
    .line 228
    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eq v2, v5, :cond_8

    .line 233
    .line 234
    move v8, v4

    .line 235
    goto :goto_6

    .line 236
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_9
    move v8, v10

    .line 240
    :goto_6
    if-ne v3, v8, :cond_a

    .line 241
    .line 242
    add-int/lit8 v2, v1, 0x1

    .line 243
    .line 244
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Lokio/ByteString;

    .line 249
    .line 250
    invoke-virtual {v3}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-ne v2, v3, :cond_a

    .line 255
    .line 256
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    check-cast v2, Ljava/lang/Number;

    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 267
    .line 268
    .line 269
    move/from16 p5, v8

    .line 270
    .line 271
    move-wide/from16 p0, v14

    .line 272
    .line 273
    const-wide/16 v13, 0x2000

    .line 274
    .line 275
    move-object v15, v9

    .line 276
    goto :goto_7

    .line 277
    :cond_a
    iget-wide v2, v9, Lokio/Buffer;->size:J

    .line 278
    .line 279
    div-long v2, v2, v16

    .line 280
    .line 281
    add-long/2addr v2, v14

    .line 282
    long-to-int v2, v2

    .line 283
    mul-int/2addr v2, v13

    .line 284
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 285
    .line 286
    .line 287
    add-int/lit8 v5, v1, 0x1

    .line 288
    .line 289
    move-wide v2, v14

    .line 290
    move-object v4, v9

    .line 291
    move-object/from16 v6, p4

    .line 292
    .line 293
    move-wide/from16 p0, v14

    .line 294
    .line 295
    const-wide/16 v13, 0x2000

    .line 296
    .line 297
    move v15, v8

    .line 298
    move/from16 p5, v15

    .line 299
    .line 300
    move-object v15, v9

    .line 301
    move-object/from16 v9, p7

    .line 302
    .line 303
    invoke-static/range {v2 .. v9}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 304
    .line 305
    .line 306
    :goto_7
    move/from16 v7, p5

    .line 307
    .line 308
    move-object v9, v15

    .line 309
    const/4 v13, -0x1

    .line 310
    move-wide/from16 v14, p0

    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_b
    move-object v15, v9

    .line 314
    const-wide/16 v13, 0x2000

    .line 315
    .line 316
    :goto_8
    invoke-virtual {v15, v0, v13, v14}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    .line 317
    .line 318
    .line 319
    move-result-wide v1

    .line 320
    const-wide/16 v3, -0x1

    .line 321
    .line 322
    cmp-long v1, v1, v3

    .line 323
    .line 324
    if-eqz v1, :cond_11

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_c
    const-wide/16 v13, 0x2000

    .line 328
    .line 329
    invoke-virtual {v3}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    invoke-virtual {v4}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    const/4 v7, 0x0

    .line 342
    move v15, v1

    .line 343
    :goto_9
    if-ge v15, v5, :cond_d

    .line 344
    .line 345
    invoke-virtual {v3, v15}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 346
    .line 347
    .line 348
    move-result v13

    .line 349
    invoke-virtual {v4, v15}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    if-ne v13, v14, :cond_d

    .line 354
    .line 355
    add-int/lit8 v7, v7, 0x1

    .line 356
    .line 357
    add-int/lit8 v15, v15, 0x1

    .line 358
    .line 359
    const-wide/16 v13, 0x2000

    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_d
    iget-wide v4, v0, Lokio/Buffer;->size:J

    .line 363
    .line 364
    int-to-long v13, v8

    .line 365
    div-long/2addr v4, v13

    .line 366
    add-long v4, v4, p0

    .line 367
    .line 368
    int-to-long v8, v9

    .line 369
    add-long/2addr v4, v8

    .line 370
    int-to-long v8, v7

    .line 371
    add-long/2addr v4, v8

    .line 372
    const-wide/16 v8, 0x1

    .line 373
    .line 374
    add-long/2addr v4, v8

    .line 375
    neg-int v8, v7

    .line 376
    invoke-virtual {v0, v8}, Lokio/Buffer;->writeInt(I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 380
    .line 381
    .line 382
    add-int/2addr v7, v1

    .line 383
    :goto_a
    if-ge v1, v7, :cond_e

    .line 384
    .line 385
    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    and-int/lit16 v2, v2, 0xff

    .line 390
    .line 391
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    .line 392
    .line 393
    .line 394
    add-int/lit8 v1, v1, 0x1

    .line 395
    .line 396
    goto :goto_a

    .line 397
    :cond_e
    add-int/lit8 v1, v6, 0x1

    .line 398
    .line 399
    if-ne v1, v10, :cond_10

    .line 400
    .line 401
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    check-cast v1, Lokio/ByteString;

    .line 406
    .line 407
    invoke-virtual {v1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-ne v7, v1, :cond_f

    .line 412
    .line 413
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    check-cast v1, Ljava/lang/Number;

    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    .line 424
    .line 425
    .line 426
    goto :goto_c

    .line 427
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 428
    .line 429
    const-string v1, "Check failed."

    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw v0

    .line 439
    :cond_10
    new-instance v9, Lokio/Buffer;

    .line 440
    .line 441
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 442
    .line 443
    .line 444
    iget-wide v1, v9, Lokio/Buffer;->size:J

    .line 445
    .line 446
    div-long/2addr v1, v13

    .line 447
    add-long/2addr v1, v4

    .line 448
    long-to-int v1, v1

    .line 449
    const/4 v2, -0x1

    .line 450
    mul-int/2addr v1, v2

    .line 451
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    .line 452
    .line 453
    .line 454
    move-wide v1, v4

    .line 455
    move-object v3, v9

    .line 456
    move v4, v7

    .line 457
    move-object/from16 v5, p4

    .line 458
    .line 459
    move/from16 v7, p6

    .line 460
    .line 461
    move-object/from16 v8, p7

    .line 462
    .line 463
    invoke-static/range {v1 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 464
    .line 465
    .line 466
    const-wide/16 v1, 0x2000

    .line 467
    .line 468
    :goto_b
    invoke-virtual {v9, v0, v1, v2}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    .line 469
    .line 470
    .line 471
    move-result-wide v3

    .line 472
    const-wide/16 v5, -0x1

    .line 473
    .line 474
    cmp-long v3, v3, v5

    .line 475
    .line 476
    if-eqz v3, :cond_11

    .line 477
    .line 478
    goto :goto_b

    .line 479
    :cond_11
    :goto_c
    return-void

    .line 480
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 481
    .line 482
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw v0
.end method
