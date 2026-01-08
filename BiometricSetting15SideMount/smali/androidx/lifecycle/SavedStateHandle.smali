.class public final Landroidx/lifecycle/SavedStateHandle;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final ACCEPTABLE_CLASSES:[Ljava/lang/Class;


# instance fields
.field public final flows:Ljava/util/Map;

.field public final liveDatas:Ljava/util/Map;

.field public final regular:Ljava/util/Map;

.field public final savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

.field public final savedStateProviders:Ljava/util/Map;


# direct methods
.method public static $r8$lambda$eeLDsk5Qp_lgSAYrhUViF2PFB0k(Landroidx/lifecycle/SavedStateHandle;)Landroid/os/Bundle;
    .locals 10

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProviders:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "<this>"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "<this>"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v0, "with(...)"

    .line 60
    .line 61
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    if-eqz v1, :cond_8

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 102
    .line 103
    invoke-interface {v1}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v5, "key"

    .line 108
    .line 109
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    if-nez v1, :cond_2

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_2
    sget-object v5, Landroidx/lifecycle/SavedStateHandle;->ACCEPTABLE_CLASSES:[Ljava/lang/Class;

    .line 116
    .line 117
    array-length v6, v5

    .line 118
    :goto_2
    if-ge v3, v6, :cond_7

    .line 119
    .line 120
    aget-object v7, v5, v3

    .line 121
    .line 122
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_6

    .line 130
    .line 131
    :goto_3
    iget-object v3, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    .line 132
    .line 133
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    instance-of v5, v3, Landroidx/lifecycle/MutableLiveData;

    .line 140
    .line 141
    if-eqz v5, :cond_3

    .line 142
    .line 143
    move-object v2, v3

    .line 144
    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    .line 145
    .line 146
    :cond_3
    if-eqz v2, :cond_4

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_4
    iget-object v2, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    .line 153
    .line 154
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    :goto_4
    iget-object v2, p0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    .line 158
    .line 159
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 160
    .line 161
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 166
    .line 167
    if-nez v2, :cond_5

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v2, "Can\'t put value with type "

    .line 182
    .line 183
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, " into saved state"

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    :cond_8
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    .line 207
    .line 208
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .line 222
    .line 223
    new-instance v4, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    .line 231
    .line 232
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_9

    .line 241
    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    check-cast v5, Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    iget-object v6, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    .line 252
    .line 253
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 254
    .line 255
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_9
    new-instance p0, Lkotlin/Pair;

    .line 264
    .line 265
    const-string v0, "keys"

    .line 266
    .line 267
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    new-instance v0, Lkotlin/Pair;

    .line 271
    .line 272
    const-string v1, "values"

    .line 273
    .line 274
    invoke-direct {v0, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    filled-new-array {p0, v0}, [Lkotlin/Pair;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    new-instance v0, Landroid/os/Bundle;

    .line 282
    .line 283
    const/4 v1, 0x2

    .line 284
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 285
    .line 286
    .line 287
    :goto_6
    if-ge v3, v1, :cond_27

    .line 288
    .line 289
    aget-object v4, p0, v3

    .line 290
    .line 291
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    check-cast v5, Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    if-nez v4, :cond_a

    .line 302
    .line 303
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_7

    .line 307
    .line 308
    :cond_a
    instance-of v6, v4, Ljava/lang/Boolean;

    .line 309
    .line 310
    if-eqz v6, :cond_b

    .line 311
    .line 312
    check-cast v4, Ljava/lang/Boolean;

    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_7

    .line 322
    .line 323
    :cond_b
    instance-of v6, v4, Ljava/lang/Byte;

    .line 324
    .line 325
    if-eqz v6, :cond_c

    .line 326
    .line 327
    check-cast v4, Ljava/lang/Number;

    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_7

    .line 337
    .line 338
    :cond_c
    instance-of v6, v4, Ljava/lang/Character;

    .line 339
    .line 340
    if-eqz v6, :cond_d

    .line 341
    .line 342
    check-cast v4, Ljava/lang/Character;

    .line 343
    .line 344
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_7

    .line 352
    .line 353
    :cond_d
    instance-of v6, v4, Ljava/lang/Double;

    .line 354
    .line 355
    if-eqz v6, :cond_e

    .line 356
    .line 357
    check-cast v4, Ljava/lang/Number;

    .line 358
    .line 359
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 360
    .line 361
    .line 362
    move-result-wide v6

    .line 363
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_7

    .line 367
    .line 368
    :cond_e
    instance-of v6, v4, Ljava/lang/Float;

    .line 369
    .line 370
    if-eqz v6, :cond_f

    .line 371
    .line 372
    check-cast v4, Ljava/lang/Number;

    .line 373
    .line 374
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_7

    .line 382
    .line 383
    :cond_f
    instance-of v6, v4, Ljava/lang/Integer;

    .line 384
    .line 385
    if-eqz v6, :cond_10

    .line 386
    .line 387
    check-cast v4, Ljava/lang/Number;

    .line 388
    .line 389
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_7

    .line 397
    .line 398
    :cond_10
    instance-of v6, v4, Ljava/lang/Long;

    .line 399
    .line 400
    if-eqz v6, :cond_11

    .line 401
    .line 402
    check-cast v4, Ljava/lang/Number;

    .line 403
    .line 404
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 405
    .line 406
    .line 407
    move-result-wide v6

    .line 408
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_7

    .line 412
    .line 413
    :cond_11
    instance-of v6, v4, Ljava/lang/Short;

    .line 414
    .line 415
    if-eqz v6, :cond_12

    .line 416
    .line 417
    check-cast v4, Ljava/lang/Number;

    .line 418
    .line 419
    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_7

    .line 427
    .line 428
    :cond_12
    instance-of v6, v4, Landroid/os/Bundle;

    .line 429
    .line 430
    if-eqz v6, :cond_13

    .line 431
    .line 432
    check-cast v4, Landroid/os/Bundle;

    .line 433
    .line 434
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_7

    .line 438
    .line 439
    :cond_13
    instance-of v6, v4, Ljava/lang/CharSequence;

    .line 440
    .line 441
    if-eqz v6, :cond_14

    .line 442
    .line 443
    check-cast v4, Ljava/lang/CharSequence;

    .line 444
    .line 445
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_7

    .line 449
    .line 450
    :cond_14
    instance-of v6, v4, Landroid/os/Parcelable;

    .line 451
    .line 452
    if-eqz v6, :cond_15

    .line 453
    .line 454
    check-cast v4, Landroid/os/Parcelable;

    .line 455
    .line 456
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_7

    .line 460
    .line 461
    :cond_15
    instance-of v6, v4, [Z

    .line 462
    .line 463
    if-eqz v6, :cond_16

    .line 464
    .line 465
    check-cast v4, [Z

    .line 466
    .line 467
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_7

    .line 471
    .line 472
    :cond_16
    instance-of v6, v4, [B

    .line 473
    .line 474
    if-eqz v6, :cond_17

    .line 475
    .line 476
    check-cast v4, [B

    .line 477
    .line 478
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_7

    .line 482
    .line 483
    :cond_17
    instance-of v6, v4, [C

    .line 484
    .line 485
    if-eqz v6, :cond_18

    .line 486
    .line 487
    check-cast v4, [C

    .line 488
    .line 489
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_7

    .line 493
    .line 494
    :cond_18
    instance-of v6, v4, [D

    .line 495
    .line 496
    if-eqz v6, :cond_19

    .line 497
    .line 498
    check-cast v4, [D

    .line 499
    .line 500
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_7

    .line 504
    .line 505
    :cond_19
    instance-of v6, v4, [F

    .line 506
    .line 507
    if-eqz v6, :cond_1a

    .line 508
    .line 509
    check-cast v4, [F

    .line 510
    .line 511
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_7

    .line 515
    .line 516
    :cond_1a
    instance-of v6, v4, [I

    .line 517
    .line 518
    if-eqz v6, :cond_1b

    .line 519
    .line 520
    check-cast v4, [I

    .line 521
    .line 522
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_7

    .line 526
    .line 527
    :cond_1b
    instance-of v6, v4, [J

    .line 528
    .line 529
    if-eqz v6, :cond_1c

    .line 530
    .line 531
    check-cast v4, [J

    .line 532
    .line 533
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 534
    .line 535
    .line 536
    goto/16 :goto_7

    .line 537
    .line 538
    :cond_1c
    instance-of v6, v4, [S

    .line 539
    .line 540
    if-eqz v6, :cond_1d

    .line 541
    .line 542
    check-cast v4, [S

    .line 543
    .line 544
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_7

    .line 548
    .line 549
    :cond_1d
    instance-of v6, v4, [Ljava/lang/Object;

    .line 550
    .line 551
    const/16 v7, 0x22

    .line 552
    .line 553
    const-string v8, " for key \""

    .line 554
    .line 555
    if-eqz v6, :cond_22

    .line 556
    .line 557
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    const-class v9, Landroid/os/Parcelable;

    .line 569
    .line 570
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 571
    .line 572
    .line 573
    move-result v9

    .line 574
    if-eqz v9, :cond_1e

    .line 575
    .line 576
    check-cast v4, [Landroid/os/Parcelable;

    .line 577
    .line 578
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_7

    .line 582
    .line 583
    :cond_1e
    const-class v9, Ljava/lang/String;

    .line 584
    .line 585
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 586
    .line 587
    .line 588
    move-result v9

    .line 589
    if-eqz v9, :cond_1f

    .line 590
    .line 591
    check-cast v4, [Ljava/lang/String;

    .line 592
    .line 593
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    goto :goto_7

    .line 597
    :cond_1f
    const-class v9, Ljava/lang/CharSequence;

    .line 598
    .line 599
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 600
    .line 601
    .line 602
    move-result v9

    .line 603
    if-eqz v9, :cond_20

    .line 604
    .line 605
    check-cast v4, [Ljava/lang/CharSequence;

    .line 606
    .line 607
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 608
    .line 609
    .line 610
    goto :goto_7

    .line 611
    :cond_20
    const-class v9, Ljava/io/Serializable;

    .line 612
    .line 613
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 614
    .line 615
    .line 616
    move-result v9

    .line 617
    if-eqz v9, :cond_21

    .line 618
    .line 619
    check-cast v4, Ljava/io/Serializable;

    .line 620
    .line 621
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 622
    .line 623
    .line 624
    goto :goto_7

    .line 625
    :cond_21
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object p0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 630
    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    const-string v2, "Illegal value array type "

    .line 634
    .line 635
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object p0

    .line 654
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    throw v0

    .line 658
    :cond_22
    instance-of v6, v4, Ljava/io/Serializable;

    .line 659
    .line 660
    if-eqz v6, :cond_23

    .line 661
    .line 662
    check-cast v4, Ljava/io/Serializable;

    .line 663
    .line 664
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 665
    .line 666
    .line 667
    goto :goto_7

    .line 668
    :cond_23
    instance-of v6, v4, Landroid/os/IBinder;

    .line 669
    .line 670
    if-eqz v6, :cond_24

    .line 671
    .line 672
    check-cast v4, Landroid/os/IBinder;

    .line 673
    .line 674
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 675
    .line 676
    .line 677
    goto :goto_7

    .line 678
    :cond_24
    instance-of v6, v4, Landroid/util/Size;

    .line 679
    .line 680
    if-eqz v6, :cond_25

    .line 681
    .line 682
    check-cast v4, Landroid/util/Size;

    .line 683
    .line 684
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    .line 685
    .line 686
    .line 687
    goto :goto_7

    .line 688
    :cond_25
    instance-of v6, v4, Landroid/util/SizeF;

    .line 689
    .line 690
    if-eqz v6, :cond_26

    .line 691
    .line 692
    check-cast v4, Landroid/util/SizeF;

    .line 693
    .line 694
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    .line 695
    .line 696
    .line 697
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 698
    .line 699
    goto/16 :goto_6

    .line 700
    .line 701
    :cond_26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    move-result-object p0

    .line 705
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object p0

    .line 709
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 710
    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    const-string v2, "Illegal value type "

    .line 714
    .line 715
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object p0

    .line 734
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    throw v0

    .line 738
    :cond_27
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const-class v2, [Z

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    const-class v2, [D

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    const-class v2, [I

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    const-class v2, [J

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    const-class v2, Ljava/lang/String;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    const-class v2, [Ljava/lang/String;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    const-class v2, Landroid/os/Binder;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    const-class v2, Landroid/os/Bundle;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0xc

    .line 70
    .line 71
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    const/16 v1, 0xd

    .line 76
    .line 77
    const-class v2, [B

    .line 78
    .line 79
    aput-object v2, v0, v1

    .line 80
    .line 81
    const/16 v1, 0xe

    .line 82
    .line 83
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 84
    .line 85
    aput-object v2, v0, v1

    .line 86
    .line 87
    const/16 v1, 0xf

    .line 88
    .line 89
    const-class v2, [C

    .line 90
    .line 91
    aput-object v2, v0, v1

    .line 92
    .line 93
    const/16 v1, 0x10

    .line 94
    .line 95
    const-class v2, Ljava/lang/CharSequence;

    .line 96
    .line 97
    aput-object v2, v0, v1

    .line 98
    .line 99
    const/16 v1, 0x11

    .line 100
    .line 101
    const-class v2, [Ljava/lang/CharSequence;

    .line 102
    .line 103
    aput-object v2, v0, v1

    .line 104
    .line 105
    const/16 v1, 0x12

    .line 106
    .line 107
    const-class v2, Ljava/util/ArrayList;

    .line 108
    .line 109
    aput-object v2, v0, v1

    .line 110
    .line 111
    const/16 v1, 0x13

    .line 112
    .line 113
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 114
    .line 115
    aput-object v2, v0, v1

    .line 116
    .line 117
    const/16 v1, 0x14

    .line 118
    .line 119
    const-class v2, [F

    .line 120
    .line 121
    aput-object v2, v0, v1

    .line 122
    .line 123
    const/16 v1, 0x15

    .line 124
    .line 125
    const-class v2, Landroid/os/Parcelable;

    .line 126
    .line 127
    aput-object v2, v0, v1

    .line 128
    .line 129
    const/16 v1, 0x16

    .line 130
    .line 131
    const-class v2, [Landroid/os/Parcelable;

    .line 132
    .line 133
    aput-object v2, v0, v1

    .line 134
    .line 135
    const/16 v1, 0x17

    .line 136
    .line 137
    const-class v2, Ljava/io/Serializable;

    .line 138
    .line 139
    aput-object v2, v0, v1

    .line 140
    .line 141
    const/16 v1, 0x18

    .line 142
    .line 143
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 144
    .line 145
    aput-object v2, v0, v1

    .line 146
    .line 147
    const/16 v1, 0x19

    .line 148
    .line 149
    const-class v2, [S

    .line 150
    .line 151
    aput-object v2, v0, v1

    .line 152
    .line 153
    const/16 v1, 0x1a

    .line 154
    .line 155
    const-class v2, Landroid/util/SparseArray;

    .line 156
    .line 157
    aput-object v2, v0, v1

    .line 158
    .line 159
    const-class v1, Landroid/util/Size;

    .line 160
    .line 161
    const/16 v2, 0x1b

    .line 162
    .line 163
    aput-object v1, v0, v2

    .line 164
    .line 165
    const-class v1, Landroid/util/SizeF;

    .line 166
    .line 167
    const/16 v2, 0x1c

    .line 168
    .line 169
    aput-object v1, v0, v2

    .line 170
    .line 171
    sput-object v0, Landroidx/lifecycle/SavedStateHandle;->ACCEPTABLE_CLASSES:[Ljava/lang/Class;

    .line 172
    .line 173
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProviders:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    .line 13
    new-instance v0, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProviders:Ljava/util/Map;

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->liveDatas:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    .line 6
    new-instance v1, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/lifecycle/SavedStateHandle$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandle;->savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
