.class public final Lokio/Options;
.super Lkotlin/collections/AbstractList;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final byteStrings:[Lokio/ByteString;

.field public final trie:[I


# direct methods
.method public constructor <init>([Lokio/ByteString;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 5
    .line 6
    iput-object p2, p0, Lokio/Options;->trie:[I

    .line 7
    .line 8
    return-void
.end method

.method public static final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 14

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance p0, Lokio/Options;

    .line 7
    .line 8
    new-array v0, v1, [Lokio/ByteString;

    .line 9
    .line 10
    filled-new-array {v1, v2}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_8

    .line 18
    .line 19
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v0, Lkotlin/collections/ArrayAsCollection;

    .line 22
    .line 23
    invoke-direct {v0, p0, v1}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-le v0, v3, :cond_1

    .line 35
    .line 36
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    array-length v4, p0

    .line 42
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    array-length v4, p0

    .line 46
    move v5, v1

    .line 47
    :goto_0
    if-ge v5, v4, :cond_2

    .line 48
    .line 49
    aget-object v7, p0, v5

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    new-array v4, v1, [Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, [Ljava/lang/Integer;

    .line 68
    .line 69
    array-length v4, v0

    .line 70
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v4, "elements"

    .line 75
    .line 76
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    array-length v4, v0

    .line 80
    if-nez v4, :cond_3

    .line 81
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    move-object v9, v0

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 90
    .line 91
    new-instance v5, Lkotlin/collections/ArrayAsCollection;

    .line 92
    .line 93
    invoke-direct {v5, v0, v3}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    .line 98
    .line 99
    move-object v9, v4

    .line 100
    :goto_1
    array-length v0, p0

    .line 101
    move v4, v1

    .line 102
    move v5, v4

    .line 103
    :goto_2
    if-ge v4, v0, :cond_c

    .line 104
    .line 105
    aget-object v7, p0, v4

    .line 106
    .line 107
    add-int/lit8 v8, v5, 0x1

    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    const-string v12, ")."

    .line 118
    .line 119
    if-ltz v10, :cond_b

    .line 120
    .line 121
    if-gt v10, v11, :cond_a

    .line 122
    .line 123
    add-int/lit8 v10, v10, -0x1

    .line 124
    .line 125
    move v11, v1

    .line 126
    :goto_3
    if-gt v11, v10, :cond_8

    .line 127
    .line 128
    add-int v12, v11, v10

    .line 129
    .line 130
    ushr-int/2addr v12, v3

    .line 131
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    check-cast v13, Ljava/lang/Comparable;

    .line 136
    .line 137
    if-ne v13, v7, :cond_4

    .line 138
    .line 139
    move v13, v1

    .line 140
    goto :goto_4

    .line 141
    :cond_4
    if-nez v13, :cond_5

    .line 142
    .line 143
    move v13, v2

    .line 144
    goto :goto_4

    .line 145
    :cond_5
    if-nez v7, :cond_6

    .line 146
    .line 147
    move v13, v3

    .line 148
    goto :goto_4

    .line 149
    :cond_6
    invoke-interface {v13, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    :goto_4
    if-gez v13, :cond_7

    .line 154
    .line 155
    add-int/lit8 v11, v12, 0x1

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    if-lez v13, :cond_9

    .line 159
    .line 160
    add-int/lit8 v10, v12, -0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 164
    .line 165
    neg-int v12, v11

    .line 166
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-interface {v9, v12, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    add-int/lit8 v4, v4, 0x1

    .line 174
    .line 175
    move v5, v8

    .line 176
    goto :goto_2

    .line 177
    :cond_a
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v1, "toIndex ("

    .line 182
    .line 183
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v1, ") is greater than size ("

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p0

    .line 208
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v1, "fromIndex (0) is greater than toIndex ("

    .line 213
    .line 214
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p0

    .line 231
    :cond_c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Lokio/ByteString;

    .line 236
    .line 237
    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-lez v0, :cond_15

    .line 242
    .line 243
    move v0, v1

    .line 244
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-ge v0, v2, :cond_10

    .line 249
    .line 250
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lokio/ByteString;

    .line 255
    .line 256
    add-int/lit8 v3, v0, 0x1

    .line 257
    .line 258
    move v4, v3

    .line 259
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-ge v4, v5, :cond_f

    .line 264
    .line 265
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Lokio/ByteString;

    .line 270
    .line 271
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    const-string v7, "prefix"

    .line 275
    .line 276
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    invoke-virtual {v5, v2, v7}, Lokio/ByteString;->rangeEquals(Lokio/ByteString;I)Z

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_f

    .line 288
    .line 289
    invoke-virtual {v5}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    invoke-virtual {v2}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-eq v7, v8, :cond_e

    .line 298
    .line 299
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    check-cast v5, Ljava/lang/Number;

    .line 304
    .line 305
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    check-cast v7, Ljava/lang/Number;

    .line 314
    .line 315
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-le v5, v7, :cond_d

    .line 320
    .line 321
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v0, "duplicate option: "

    .line 334
    .line 335
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 346
    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v0

    .line 355
    :cond_f
    move v0, v3

    .line 356
    goto :goto_5

    .line 357
    :cond_10
    new-instance v0, Lokio/Buffer;

    .line 358
    .line 359
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    const/4 v7, 0x0

    .line 367
    const-wide/16 v2, 0x0

    .line 368
    .line 369
    const/4 v5, 0x0

    .line 370
    move-object v4, v0

    .line 371
    invoke-static/range {v2 .. v9}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 372
    .line 373
    .line 374
    iget-wide v2, v0, Lokio/Buffer;->size:J

    .line 375
    .line 376
    const/4 v4, 0x4

    .line 377
    int-to-long v4, v4

    .line 378
    div-long/2addr v2, v4

    .line 379
    long-to-int v2, v2

    .line 380
    new-array v2, v2, [I

    .line 381
    .line 382
    :goto_7
    iget-wide v3, v0, Lokio/Buffer;->size:J

    .line 383
    .line 384
    const-wide/16 v5, 0x0

    .line 385
    .line 386
    cmp-long v5, v3, v5

    .line 387
    .line 388
    if-nez v5, :cond_11

    .line 389
    .line 390
    new-instance v0, Lokio/Options;

    .line 391
    .line 392
    array-length v1, p0

    .line 393
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    const-string v1, "copyOf(...)"

    .line 398
    .line 399
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    check-cast p0, [Lokio/ByteString;

    .line 403
    .line 404
    invoke-direct {v0, p0, v2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    .line 405
    .line 406
    .line 407
    move-object p0, v0

    .line 408
    :goto_8
    return-object p0

    .line 409
    :cond_11
    add-int/lit8 v5, v1, 0x1

    .line 410
    .line 411
    const-wide/16 v6, 0x4

    .line 412
    .line 413
    cmp-long v3, v3, v6

    .line 414
    .line 415
    if-ltz v3, :cond_14

    .line 416
    .line 417
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 418
    .line 419
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    iget v4, v3, Lokio/Segment;->pos:I

    .line 423
    .line 424
    iget v8, v3, Lokio/Segment;->limit:I

    .line 425
    .line 426
    sub-int v9, v8, v4

    .line 427
    .line 428
    int-to-long v9, v9

    .line 429
    cmp-long v9, v9, v6

    .line 430
    .line 431
    if-gez v9, :cond_12

    .line 432
    .line 433
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    and-int/lit16 v3, v3, 0xff

    .line 438
    .line 439
    shl-int/lit8 v3, v3, 0x18

    .line 440
    .line 441
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    and-int/lit16 v4, v4, 0xff

    .line 446
    .line 447
    shl-int/lit8 v4, v4, 0x10

    .line 448
    .line 449
    or-int/2addr v3, v4

    .line 450
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    and-int/lit16 v4, v4, 0xff

    .line 455
    .line 456
    shl-int/lit8 v4, v4, 0x8

    .line 457
    .line 458
    or-int/2addr v3, v4

    .line 459
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    and-int/lit16 v4, v4, 0xff

    .line 464
    .line 465
    or-int/2addr v3, v4

    .line 466
    goto :goto_a

    .line 467
    :cond_12
    add-int/lit8 v9, v4, 0x1

    .line 468
    .line 469
    iget-object v10, v3, Lokio/Segment;->data:[B

    .line 470
    .line 471
    aget-byte v11, v10, v4

    .line 472
    .line 473
    and-int/lit16 v11, v11, 0xff

    .line 474
    .line 475
    shl-int/lit8 v11, v11, 0x18

    .line 476
    .line 477
    add-int/lit8 v12, v4, 0x2

    .line 478
    .line 479
    aget-byte v9, v10, v9

    .line 480
    .line 481
    and-int/lit16 v9, v9, 0xff

    .line 482
    .line 483
    shl-int/lit8 v9, v9, 0x10

    .line 484
    .line 485
    or-int/2addr v9, v11

    .line 486
    add-int/lit8 v11, v4, 0x3

    .line 487
    .line 488
    aget-byte v12, v10, v12

    .line 489
    .line 490
    and-int/lit16 v12, v12, 0xff

    .line 491
    .line 492
    shl-int/lit8 v12, v12, 0x8

    .line 493
    .line 494
    or-int/2addr v9, v12

    .line 495
    add-int/lit8 v4, v4, 0x4

    .line 496
    .line 497
    aget-byte v10, v10, v11

    .line 498
    .line 499
    and-int/lit16 v10, v10, 0xff

    .line 500
    .line 501
    or-int/2addr v9, v10

    .line 502
    iget-wide v10, v0, Lokio/Buffer;->size:J

    .line 503
    .line 504
    sub-long/2addr v10, v6

    .line 505
    iput-wide v10, v0, Lokio/Buffer;->size:J

    .line 506
    .line 507
    if-ne v4, v8, :cond_13

    .line 508
    .line 509
    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    iput-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 514
    .line 515
    invoke-static {v3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 516
    .line 517
    .line 518
    goto :goto_9

    .line 519
    :cond_13
    iput v4, v3, Lokio/Segment;->pos:I

    .line 520
    .line 521
    :goto_9
    move v3, v9

    .line 522
    :goto_a
    aput v3, v2, v1

    .line 523
    .line 524
    move v1, v5

    .line 525
    goto/16 :goto_7

    .line 526
    .line 527
    :cond_14
    new-instance p0, Ljava/io/EOFException;

    .line 528
    .line 529
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 530
    .line 531
    .line 532
    throw p0

    .line 533
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 534
    .line 535
    const-string v0, "the empty byte string is not a supported option"

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    throw p0
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lokio/ByteString;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lkotlin/collections/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    return-object p0
.end method

.method public final getSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lokio/ByteString;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lkotlin/collections/AbstractList;->indexOf(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lokio/ByteString;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lokio/ByteString;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lkotlin/collections/AbstractList;->lastIndexOf(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
