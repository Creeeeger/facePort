.class public final Landroidx/constraintlayout/widget/ConstraintSet;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final VISIBILITY_FLAGS:[I

.field public static final sMapToConstant:Landroid/util/SparseIntArray;

.field public static final sOverrideMapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public derivedState:Ljava/lang/String;

.field public final mConstraints:Ljava/util/HashMap;

.field public mForceId:Z

.field public mIdString:Ljava/lang/String;

.field public mMatchLabels:[Ljava/lang/String;

.field public mRotate:I

.field public final mSavedAttributes:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    filled-new-array {v0, v1, v2}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    new-instance v3, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->sOverrideMapToConstant:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    const/16 v4, 0x19

    .line 26
    .line 27
    const/16 v5, 0x52

    .line 28
    .line 29
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    .line 31
    .line 32
    const/16 v4, 0x1a

    .line 33
    .line 34
    const/16 v6, 0x53

    .line 35
    .line 36
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    .line 38
    .line 39
    const/16 v4, 0x1d

    .line 40
    .line 41
    const/16 v7, 0x55

    .line 42
    .line 43
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 44
    .line 45
    .line 46
    const/16 v4, 0x56

    .line 47
    .line 48
    const/16 v8, 0x1e

    .line 49
    .line 50
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    .line 52
    .line 53
    const/16 v4, 0x5c

    .line 54
    .line 55
    const/16 v8, 0x24

    .line 56
    .line 57
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 58
    .line 59
    .line 60
    const/16 v4, 0x5b

    .line 61
    .line 62
    const/16 v8, 0x23

    .line 63
    .line 64
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 65
    .line 66
    .line 67
    const/16 v4, 0x3f

    .line 68
    .line 69
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 70
    .line 71
    .line 72
    const/16 v4, 0x3e

    .line 73
    .line 74
    const/4 v8, 0x3

    .line 75
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 76
    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    const/16 v8, 0x3a

    .line 80
    .line 81
    invoke-virtual {v0, v8, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 82
    .line 83
    .line 84
    const/16 v4, 0x5b

    .line 85
    .line 86
    const/16 v9, 0x3c

    .line 87
    .line 88
    invoke-virtual {v0, v9, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 89
    .line 90
    .line 91
    const/16 v4, 0x5c

    .line 92
    .line 93
    const/16 v10, 0x3b

    .line 94
    .line 95
    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 96
    .line 97
    .line 98
    const/16 v4, 0x65

    .line 99
    .line 100
    const/4 v11, 0x6

    .line 101
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 102
    .line 103
    .line 104
    const/16 v4, 0x66

    .line 105
    .line 106
    const/4 v12, 0x7

    .line 107
    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    .line 109
    .line 110
    const/16 v4, 0x11

    .line 111
    .line 112
    const/16 v13, 0x46

    .line 113
    .line 114
    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 115
    .line 116
    .line 117
    const/16 v4, 0x12

    .line 118
    .line 119
    const/16 v14, 0x47

    .line 120
    .line 121
    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 122
    .line 123
    .line 124
    const/16 v4, 0x13

    .line 125
    .line 126
    const/16 v15, 0x48

    .line 127
    .line 128
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 129
    .line 130
    .line 131
    const/16 v4, 0x63

    .line 132
    .line 133
    const/16 v7, 0x36

    .line 134
    .line 135
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 136
    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    const/16 v6, 0x1b

    .line 140
    .line 141
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 142
    .line 143
    .line 144
    const/16 v4, 0x20

    .line 145
    .line 146
    const/16 v6, 0x57

    .line 147
    .line 148
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 149
    .line 150
    .line 151
    const/16 v4, 0x58

    .line 152
    .line 153
    const/16 v5, 0x21

    .line 154
    .line 155
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 156
    .line 157
    .line 158
    const/16 v4, 0xa

    .line 159
    .line 160
    const/16 v5, 0x45

    .line 161
    .line 162
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 163
    .line 164
    .line 165
    const/16 v4, 0x9

    .line 166
    .line 167
    const/16 v15, 0x44

    .line 168
    .line 169
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 170
    .line 171
    .line 172
    const/16 v4, 0x6a

    .line 173
    .line 174
    const/16 v14, 0xd

    .line 175
    .line 176
    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 177
    .line 178
    .line 179
    const/16 v4, 0x6d

    .line 180
    .line 181
    const/16 v13, 0x10

    .line 182
    .line 183
    invoke-virtual {v0, v4, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 184
    .line 185
    .line 186
    const/16 v4, 0x6b

    .line 187
    .line 188
    const/16 v5, 0xe

    .line 189
    .line 190
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 191
    .line 192
    .line 193
    const/16 v4, 0x68

    .line 194
    .line 195
    const/16 v15, 0xb

    .line 196
    .line 197
    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 198
    .line 199
    .line 200
    const/16 v4, 0x6c

    .line 201
    .line 202
    const/16 v15, 0xf

    .line 203
    .line 204
    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 205
    .line 206
    .line 207
    const/16 v4, 0x69

    .line 208
    .line 209
    const/16 v10, 0xc

    .line 210
    .line 211
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 212
    .line 213
    .line 214
    const/16 v4, 0x28

    .line 215
    .line 216
    const/16 v10, 0x5f

    .line 217
    .line 218
    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 219
    .line 220
    .line 221
    const/16 v4, 0x50

    .line 222
    .line 223
    const/16 v8, 0x27

    .line 224
    .line 225
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 226
    .line 227
    .line 228
    const/16 v4, 0x4f

    .line 229
    .line 230
    const/16 v8, 0x29

    .line 231
    .line 232
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 233
    .line 234
    .line 235
    const/16 v4, 0x5e

    .line 236
    .line 237
    const/16 v8, 0x2a

    .line 238
    .line 239
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 240
    .line 241
    .line 242
    const/16 v4, 0x4e

    .line 243
    .line 244
    const/16 v8, 0x14

    .line 245
    .line 246
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 247
    .line 248
    .line 249
    const/16 v4, 0x5d

    .line 250
    .line 251
    const/16 v8, 0x25

    .line 252
    .line 253
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 254
    .line 255
    .line 256
    const/16 v4, 0x43

    .line 257
    .line 258
    const/4 v8, 0x5

    .line 259
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 260
    .line 261
    .line 262
    const/16 v4, 0x51

    .line 263
    .line 264
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 265
    .line 266
    .line 267
    const/16 v4, 0x5a

    .line 268
    .line 269
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 270
    .line 271
    .line 272
    const/16 v4, 0x54

    .line 273
    .line 274
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    .line 276
    .line 277
    const/16 v4, 0x3d

    .line 278
    .line 279
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    .line 281
    .line 282
    const/16 v4, 0x39

    .line 283
    .line 284
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    .line 286
    .line 287
    const/4 v4, 0x5

    .line 288
    const/16 v8, 0x18

    .line 289
    .line 290
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    .line 292
    .line 293
    const/16 v4, 0x1c

    .line 294
    .line 295
    invoke-virtual {v0, v12, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    .line 297
    .line 298
    const/16 v4, 0x17

    .line 299
    .line 300
    const/16 v8, 0x1f

    .line 301
    .line 302
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    .line 304
    .line 305
    const/16 v4, 0x18

    .line 306
    .line 307
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    .line 309
    .line 310
    const/16 v4, 0x22

    .line 311
    .line 312
    invoke-virtual {v0, v11, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    .line 314
    .line 315
    const/4 v4, 0x2

    .line 316
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    .line 318
    .line 319
    const/4 v4, 0x3

    .line 320
    const/16 v8, 0x17

    .line 321
    .line 322
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    .line 324
    .line 325
    const/16 v4, 0x15

    .line 326
    .line 327
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    .line 329
    .line 330
    const/16 v4, 0x60

    .line 331
    .line 332
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    .line 334
    .line 335
    const/16 v4, 0x49

    .line 336
    .line 337
    const/16 v8, 0x60

    .line 338
    .line 339
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    .line 341
    .line 342
    const/4 v4, 0x2

    .line 343
    const/16 v8, 0x16

    .line 344
    .line 345
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    .line 347
    .line 348
    const/16 v4, 0x2b

    .line 349
    .line 350
    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    .line 352
    .line 353
    const/16 v4, 0x1a

    .line 354
    .line 355
    const/16 v8, 0x2c

    .line 356
    .line 357
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 358
    .line 359
    .line 360
    const/16 v4, 0x15

    .line 361
    .line 362
    const/16 v8, 0x2d

    .line 363
    .line 364
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 365
    .line 366
    .line 367
    const/16 v4, 0x16

    .line 368
    .line 369
    const/16 v8, 0x2e

    .line 370
    .line 371
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 372
    .line 373
    .line 374
    const/16 v4, 0x14

    .line 375
    .line 376
    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 377
    .line 378
    .line 379
    const/16 v4, 0x12

    .line 380
    .line 381
    const/16 v8, 0x2f

    .line 382
    .line 383
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 384
    .line 385
    .line 386
    const/16 v4, 0x13

    .line 387
    .line 388
    const/16 v8, 0x30

    .line 389
    .line 390
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 391
    .line 392
    .line 393
    const/16 v4, 0x31

    .line 394
    .line 395
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 396
    .line 397
    .line 398
    const/16 v4, 0x32

    .line 399
    .line 400
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 401
    .line 402
    .line 403
    const/16 v4, 0x33

    .line 404
    .line 405
    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 406
    .line 407
    .line 408
    const/16 v4, 0x11

    .line 409
    .line 410
    const/16 v8, 0x34

    .line 411
    .line 412
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 413
    .line 414
    .line 415
    const/16 v4, 0x19

    .line 416
    .line 417
    const/16 v8, 0x35

    .line 418
    .line 419
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 420
    .line 421
    .line 422
    const/16 v4, 0x61

    .line 423
    .line 424
    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 425
    .line 426
    .line 427
    const/16 v4, 0x4a

    .line 428
    .line 429
    const/16 v8, 0x37

    .line 430
    .line 431
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 432
    .line 433
    .line 434
    const/16 v4, 0x62

    .line 435
    .line 436
    const/16 v8, 0x38

    .line 437
    .line 438
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 439
    .line 440
    .line 441
    const/16 v4, 0x4b

    .line 442
    .line 443
    const/16 v8, 0x39

    .line 444
    .line 445
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 446
    .line 447
    .line 448
    const/16 v4, 0x63

    .line 449
    .line 450
    const/16 v8, 0x3a

    .line 451
    .line 452
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 453
    .line 454
    .line 455
    const/16 v4, 0x4c

    .line 456
    .line 457
    const/16 v8, 0x3b

    .line 458
    .line 459
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 460
    .line 461
    .line 462
    const/16 v4, 0x40

    .line 463
    .line 464
    const/16 v8, 0x3d

    .line 465
    .line 466
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 467
    .line 468
    .line 469
    const/16 v4, 0x42

    .line 470
    .line 471
    const/16 v8, 0x3e

    .line 472
    .line 473
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 474
    .line 475
    .line 476
    const/16 v4, 0x41

    .line 477
    .line 478
    const/16 v8, 0x3f

    .line 479
    .line 480
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 481
    .line 482
    .line 483
    const/16 v4, 0x1c

    .line 484
    .line 485
    const/16 v8, 0x40

    .line 486
    .line 487
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 488
    .line 489
    .line 490
    const/16 v4, 0x79

    .line 491
    .line 492
    const/16 v8, 0x41

    .line 493
    .line 494
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 495
    .line 496
    .line 497
    const/16 v4, 0x23

    .line 498
    .line 499
    const/16 v8, 0x42

    .line 500
    .line 501
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 502
    .line 503
    .line 504
    const/16 v4, 0x7a

    .line 505
    .line 506
    const/16 v8, 0x43

    .line 507
    .line 508
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 509
    .line 510
    .line 511
    const/16 v4, 0x71

    .line 512
    .line 513
    const/16 v8, 0x4f

    .line 514
    .line 515
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 516
    .line 517
    .line 518
    const/4 v4, 0x1

    .line 519
    const/16 v8, 0x26

    .line 520
    .line 521
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 522
    .line 523
    .line 524
    const/16 v4, 0x70

    .line 525
    .line 526
    const/16 v8, 0x44

    .line 527
    .line 528
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 529
    .line 530
    .line 531
    const/16 v4, 0x64

    .line 532
    .line 533
    const/16 v8, 0x45

    .line 534
    .line 535
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 536
    .line 537
    .line 538
    const/16 v4, 0x4d

    .line 539
    .line 540
    const/16 v8, 0x46

    .line 541
    .line 542
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 543
    .line 544
    .line 545
    const/16 v4, 0x6f

    .line 546
    .line 547
    const/16 v8, 0x61

    .line 548
    .line 549
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 550
    .line 551
    .line 552
    const/16 v4, 0x20

    .line 553
    .line 554
    const/16 v8, 0x47

    .line 555
    .line 556
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 557
    .line 558
    .line 559
    const/16 v4, 0x1e

    .line 560
    .line 561
    const/16 v8, 0x48

    .line 562
    .line 563
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 564
    .line 565
    .line 566
    const/16 v4, 0x1f

    .line 567
    .line 568
    const/16 v8, 0x49

    .line 569
    .line 570
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 571
    .line 572
    .line 573
    const/16 v4, 0x21

    .line 574
    .line 575
    const/16 v8, 0x4a

    .line 576
    .line 577
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 578
    .line 579
    .line 580
    const/16 v4, 0x1d

    .line 581
    .line 582
    const/16 v8, 0x4b

    .line 583
    .line 584
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 585
    .line 586
    .line 587
    const/16 v4, 0x72

    .line 588
    .line 589
    const/16 v8, 0x4c

    .line 590
    .line 591
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 592
    .line 593
    .line 594
    const/16 v4, 0x59

    .line 595
    .line 596
    const/16 v8, 0x4d

    .line 597
    .line 598
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 599
    .line 600
    .line 601
    const/16 v4, 0x7b

    .line 602
    .line 603
    const/16 v8, 0x4e

    .line 604
    .line 605
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 606
    .line 607
    .line 608
    const/16 v4, 0x38

    .line 609
    .line 610
    const/16 v8, 0x50

    .line 611
    .line 612
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 613
    .line 614
    .line 615
    const/16 v4, 0x37

    .line 616
    .line 617
    const/16 v8, 0x51

    .line 618
    .line 619
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 620
    .line 621
    .line 622
    const/16 v4, 0x74

    .line 623
    .line 624
    const/16 v8, 0x52

    .line 625
    .line 626
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 627
    .line 628
    .line 629
    const/16 v4, 0x78

    .line 630
    .line 631
    const/16 v8, 0x53

    .line 632
    .line 633
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 634
    .line 635
    .line 636
    const/16 v4, 0x77

    .line 637
    .line 638
    const/16 v8, 0x54

    .line 639
    .line 640
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 641
    .line 642
    .line 643
    const/16 v4, 0x76

    .line 644
    .line 645
    const/16 v8, 0x55

    .line 646
    .line 647
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 648
    .line 649
    .line 650
    const/16 v4, 0x75

    .line 651
    .line 652
    const/16 v7, 0x56

    .line 653
    .line 654
    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v3, v8, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v3, v8, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 661
    .line 662
    .line 663
    const/4 v0, 0x0

    .line 664
    const/16 v4, 0x1b

    .line 665
    .line 666
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 667
    .line 668
    .line 669
    const/16 v0, 0x59

    .line 670
    .line 671
    invoke-virtual {v3, v0, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 672
    .line 673
    .line 674
    const/16 v0, 0x5c

    .line 675
    .line 676
    invoke-virtual {v3, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 677
    .line 678
    .line 679
    const/16 v0, 0x5a

    .line 680
    .line 681
    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 682
    .line 683
    .line 684
    const/16 v0, 0xb

    .line 685
    .line 686
    invoke-virtual {v3, v6, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 687
    .line 688
    .line 689
    const/16 v0, 0x5b

    .line 690
    .line 691
    invoke-virtual {v3, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 692
    .line 693
    .line 694
    const/16 v0, 0x58

    .line 695
    .line 696
    const/16 v4, 0xc

    .line 697
    .line 698
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 699
    .line 700
    .line 701
    const/16 v0, 0x4e

    .line 702
    .line 703
    const/16 v4, 0x28

    .line 704
    .line 705
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 706
    .line 707
    .line 708
    const/16 v0, 0x27

    .line 709
    .line 710
    const/16 v4, 0x47

    .line 711
    .line 712
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 713
    .line 714
    .line 715
    const/16 v0, 0x29

    .line 716
    .line 717
    const/16 v4, 0x46

    .line 718
    .line 719
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 720
    .line 721
    .line 722
    const/16 v0, 0x4d

    .line 723
    .line 724
    const/16 v4, 0x2a

    .line 725
    .line 726
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 727
    .line 728
    .line 729
    const/16 v0, 0x14

    .line 730
    .line 731
    const/16 v4, 0x45

    .line 732
    .line 733
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 734
    .line 735
    .line 736
    const/16 v0, 0x4c

    .line 737
    .line 738
    const/16 v4, 0x25

    .line 739
    .line 740
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 741
    .line 742
    .line 743
    const/4 v0, 0x5

    .line 744
    invoke-virtual {v3, v9, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 745
    .line 746
    .line 747
    const/16 v0, 0x48

    .line 748
    .line 749
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 750
    .line 751
    .line 752
    const/16 v0, 0x4b

    .line 753
    .line 754
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 755
    .line 756
    .line 757
    const/16 v0, 0x49

    .line 758
    .line 759
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 760
    .line 761
    .line 762
    const/16 v0, 0x39

    .line 763
    .line 764
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 765
    .line 766
    .line 767
    const/16 v0, 0x38

    .line 768
    .line 769
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 770
    .line 771
    .line 772
    const/4 v0, 0x5

    .line 773
    const/16 v4, 0x18

    .line 774
    .line 775
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 776
    .line 777
    .line 778
    const/16 v0, 0x1c

    .line 779
    .line 780
    invoke-virtual {v3, v12, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 781
    .line 782
    .line 783
    const/16 v0, 0x17

    .line 784
    .line 785
    const/16 v4, 0x1f

    .line 786
    .line 787
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 788
    .line 789
    .line 790
    const/16 v0, 0x18

    .line 791
    .line 792
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 793
    .line 794
    .line 795
    const/16 v0, 0x22

    .line 796
    .line 797
    invoke-virtual {v3, v11, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 798
    .line 799
    .line 800
    const/4 v0, 0x2

    .line 801
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 802
    .line 803
    .line 804
    const/4 v0, 0x3

    .line 805
    const/16 v2, 0x17

    .line 806
    .line 807
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 808
    .line 809
    .line 810
    const/16 v0, 0x15

    .line 811
    .line 812
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 813
    .line 814
    .line 815
    const/16 v0, 0x4f

    .line 816
    .line 817
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 818
    .line 819
    .line 820
    const/16 v0, 0x40

    .line 821
    .line 822
    const/16 v1, 0x60

    .line 823
    .line 824
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 825
    .line 826
    .line 827
    const/4 v0, 0x2

    .line 828
    const/16 v1, 0x16

    .line 829
    .line 830
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 831
    .line 832
    .line 833
    const/16 v0, 0x2b

    .line 834
    .line 835
    invoke-virtual {v3, v14, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 836
    .line 837
    .line 838
    const/16 v0, 0x1a

    .line 839
    .line 840
    const/16 v1, 0x2c

    .line 841
    .line 842
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 843
    .line 844
    .line 845
    const/16 v0, 0x15

    .line 846
    .line 847
    const/16 v1, 0x2d

    .line 848
    .line 849
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 850
    .line 851
    .line 852
    const/16 v0, 0x16

    .line 853
    .line 854
    const/16 v1, 0x2e

    .line 855
    .line 856
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 857
    .line 858
    .line 859
    const/16 v0, 0x14

    .line 860
    .line 861
    invoke-virtual {v3, v0, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 862
    .line 863
    .line 864
    const/16 v0, 0x12

    .line 865
    .line 866
    const/16 v1, 0x2f

    .line 867
    .line 868
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 869
    .line 870
    .line 871
    const/16 v0, 0x13

    .line 872
    .line 873
    const/16 v1, 0x30

    .line 874
    .line 875
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 876
    .line 877
    .line 878
    const/16 v0, 0x31

    .line 879
    .line 880
    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 881
    .line 882
    .line 883
    const/16 v0, 0x32

    .line 884
    .line 885
    invoke-virtual {v3, v15, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 886
    .line 887
    .line 888
    const/16 v0, 0x33

    .line 889
    .line 890
    invoke-virtual {v3, v13, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 891
    .line 892
    .line 893
    const/16 v0, 0x11

    .line 894
    .line 895
    const/16 v1, 0x34

    .line 896
    .line 897
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 898
    .line 899
    .line 900
    const/16 v0, 0x19

    .line 901
    .line 902
    const/16 v1, 0x35

    .line 903
    .line 904
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 905
    .line 906
    .line 907
    const/16 v0, 0x50

    .line 908
    .line 909
    const/16 v1, 0x36

    .line 910
    .line 911
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 912
    .line 913
    .line 914
    const/16 v0, 0x41

    .line 915
    .line 916
    const/16 v1, 0x37

    .line 917
    .line 918
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 919
    .line 920
    .line 921
    const/16 v0, 0x51

    .line 922
    .line 923
    const/16 v1, 0x38

    .line 924
    .line 925
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 926
    .line 927
    .line 928
    const/16 v0, 0x42

    .line 929
    .line 930
    const/16 v1, 0x39

    .line 931
    .line 932
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 933
    .line 934
    .line 935
    const/16 v0, 0x52

    .line 936
    .line 937
    const/16 v1, 0x3a

    .line 938
    .line 939
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 940
    .line 941
    .line 942
    const/16 v0, 0x43

    .line 943
    .line 944
    const/16 v2, 0x3b

    .line 945
    .line 946
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 947
    .line 948
    .line 949
    const/16 v0, 0x3e

    .line 950
    .line 951
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 952
    .line 953
    .line 954
    const/16 v0, 0x3f

    .line 955
    .line 956
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 957
    .line 958
    .line 959
    const/16 v0, 0x1c

    .line 960
    .line 961
    const/16 v1, 0x40

    .line 962
    .line 963
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 964
    .line 965
    .line 966
    const/16 v0, 0x69

    .line 967
    .line 968
    const/16 v1, 0x41

    .line 969
    .line 970
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 971
    .line 972
    .line 973
    const/16 v0, 0x22

    .line 974
    .line 975
    const/16 v1, 0x42

    .line 976
    .line 977
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 978
    .line 979
    .line 980
    const/16 v0, 0x6a

    .line 981
    .line 982
    const/16 v1, 0x43

    .line 983
    .line 984
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 985
    .line 986
    .line 987
    const/16 v0, 0x60

    .line 988
    .line 989
    const/16 v1, 0x4f

    .line 990
    .line 991
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 992
    .line 993
    .line 994
    const/4 v0, 0x1

    .line 995
    const/16 v1, 0x26

    .line 996
    .line 997
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 998
    .line 999
    .line 1000
    const/16 v0, 0x61

    .line 1001
    .line 1002
    const/16 v1, 0x62

    .line 1003
    .line 1004
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1005
    .line 1006
    .line 1007
    const/16 v0, 0x44

    .line 1008
    .line 1009
    invoke-virtual {v3, v10, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1010
    .line 1011
    .line 1012
    const/16 v1, 0x53

    .line 1013
    .line 1014
    const/16 v2, 0x45

    .line 1015
    .line 1016
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1017
    .line 1018
    .line 1019
    const/16 v1, 0x46

    .line 1020
    .line 1021
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1022
    .line 1023
    .line 1024
    const/16 v0, 0x20

    .line 1025
    .line 1026
    const/16 v1, 0x47

    .line 1027
    .line 1028
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1029
    .line 1030
    .line 1031
    const/16 v0, 0x1e

    .line 1032
    .line 1033
    const/16 v1, 0x48

    .line 1034
    .line 1035
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1036
    .line 1037
    .line 1038
    const/16 v0, 0x1f

    .line 1039
    .line 1040
    const/16 v1, 0x49

    .line 1041
    .line 1042
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1043
    .line 1044
    .line 1045
    const/16 v0, 0x21

    .line 1046
    .line 1047
    const/16 v1, 0x4a

    .line 1048
    .line 1049
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1050
    .line 1051
    .line 1052
    const/16 v0, 0x1d

    .line 1053
    .line 1054
    const/16 v1, 0x4b

    .line 1055
    .line 1056
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1057
    .line 1058
    .line 1059
    const/16 v0, 0x62

    .line 1060
    .line 1061
    const/16 v1, 0x4c

    .line 1062
    .line 1063
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1064
    .line 1065
    .line 1066
    const/16 v0, 0x4a

    .line 1067
    .line 1068
    const/16 v1, 0x4d

    .line 1069
    .line 1070
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1071
    .line 1072
    .line 1073
    const/16 v0, 0x6b

    .line 1074
    .line 1075
    const/16 v1, 0x4e

    .line 1076
    .line 1077
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1078
    .line 1079
    .line 1080
    const/16 v0, 0x37

    .line 1081
    .line 1082
    const/16 v1, 0x50

    .line 1083
    .line 1084
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1085
    .line 1086
    .line 1087
    const/16 v0, 0x51

    .line 1088
    .line 1089
    const/16 v1, 0x36

    .line 1090
    .line 1091
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1092
    .line 1093
    .line 1094
    const/16 v0, 0x64

    .line 1095
    .line 1096
    const/16 v1, 0x52

    .line 1097
    .line 1098
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1099
    .line 1100
    .line 1101
    const/16 v0, 0x68

    .line 1102
    .line 1103
    const/16 v1, 0x53

    .line 1104
    .line 1105
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1106
    .line 1107
    .line 1108
    const/16 v0, 0x67

    .line 1109
    .line 1110
    const/16 v1, 0x54

    .line 1111
    .line 1112
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1113
    .line 1114
    .line 1115
    const/16 v0, 0x66

    .line 1116
    .line 1117
    const/16 v1, 0x55

    .line 1118
    .line 1119
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1120
    .line 1121
    .line 1122
    const/16 v0, 0x65

    .line 1123
    .line 1124
    const/16 v1, 0x56

    .line 1125
    .line 1126
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1127
    .line 1128
    .line 1129
    const/16 v0, 0x5e

    .line 1130
    .line 1131
    const/16 v1, 0x61

    .line 1132
    .line 1133
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1134
    .line 1135
    .line 1136
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mMatchLabels:[Ljava/lang/String;

    .line 12
    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 31
    .line 32
    return-void
.end method

.method public static buildDelta(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride:[I

    .line 11
    .line 12
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->populateOverride(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I
    .locals 10

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, p1

    .line 12
    new-array v1, v1, [I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    :goto_0
    array-length v5, p1

    .line 18
    if-ge v3, v5, :cond_3

    .line 19
    .line 20
    aget-object v5, p1, v3

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    :try_start_0
    const-class v7, Landroidx/constraintlayout/widget/R$id;

    .line 28
    .line 29
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move v7, v2

    .line 39
    :goto_1
    if-nez v7, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v8, "id"

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    :cond_0
    if-nez v7, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    .line 69
    if-eqz v8, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 76
    .line 77
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    instance-of v9, v5, Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v9, :cond_1

    .line 83
    .line 84
    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 85
    .line 86
    if-eqz v9, :cond_1

    .line 87
    .line 88
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eqz v9, :cond_1

    .line 93
    .line 94
    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    :cond_1
    if-eqz v6, :cond_2

    .line 101
    .line 102
    instance-of v5, v6, Ljava/lang/Integer;

    .line 103
    .line 104
    if-eqz v5, :cond_2

    .line 105
    .line 106
    check-cast v6, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .line 113
    .line 114
    aput v7, v1, v4

    .line 115
    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    move v4, v5

    .line 119
    goto :goto_0

    .line 120
    :cond_3
    array-length p0, p1

    .line 121
    if-eq v4, p0, :cond_4

    .line 122
    .line 123
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_4
    return-object v1
.end method

.method public static fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 16

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride:[I

    .line 9
    .line 10
    :goto_0
    move-object/from16 v2, p0

    .line 11
    .line 12
    move-object/from16 v3, p1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint:[I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->populateOverride(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    move v4, v3

    .line 35
    :goto_2
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 36
    .line 37
    if-ge v4, v2, :cond_8

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const/4 v7, 0x1

    .line 44
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 45
    .line 46
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 47
    .line 48
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 49
    .line 50
    if-eq v6, v7, :cond_2

    .line 51
    .line 52
    const/16 v11, 0x17

    .line 53
    .line 54
    if-eq v11, v6, :cond_2

    .line 55
    .line 56
    const/16 v11, 0x18

    .line 57
    .line 58
    if-eq v11, v6, :cond_2

    .line 59
    .line 60
    iput-boolean v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    .line 61
    .line 62
    iput-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 63
    .line 64
    iput-boolean v7, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 65
    .line 66
    iput-boolean v7, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 67
    .line 68
    :cond_2
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintSet;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 69
    .line 70
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    const/4 v14, 0x3

    .line 75
    const-string v15, "   "

    .line 76
    .line 77
    const-string v13, "ConstraintSet"

    .line 78
    .line 79
    packed-switch v12, :pswitch_data_0

    .line 80
    .line 81
    .line 82
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v7, "Unknown attribute 0x"

    .line 85
    .line 86
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :pswitch_1
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 116
    .line 117
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :pswitch_2
    invoke-static {v5, v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :pswitch_3
    invoke-static {v5, v1, v6, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :pswitch_4
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 136
    .line 137
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 142
    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :pswitch_5
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 146
    .line 147
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 152
    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :pswitch_6
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 156
    .line 157
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 162
    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :pswitch_7
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 166
    .line 167
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 172
    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :pswitch_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v7, "unused attribute 0x"

    .line 178
    .line 179
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    goto/16 :goto_3

    .line 207
    .line 208
    :pswitch_9
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 213
    .line 214
    const/4 v8, -0x2

    .line 215
    const/4 v9, -0x1

    .line 216
    if-ne v5, v7, :cond_3

    .line 217
    .line 218
    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 223
    .line 224
    if-eq v5, v9, :cond_7

    .line 225
    .line 226
    iput v8, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    .line 230
    :cond_3
    if-ne v5, v14, :cond_5

    .line 231
    .line 232
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    iput-object v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    .line 237
    .line 238
    const-string v7, "/"

    .line 239
    .line 240
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-lez v5, :cond_4

    .line 245
    .line 246
    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 251
    .line 252
    iput v8, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 253
    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :cond_4
    iput v9, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 257
    .line 258
    goto/16 :goto_3

    .line 259
    .line 260
    :cond_5
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 261
    .line 262
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 267
    .line 268
    goto/16 :goto_3

    .line 269
    .line 270
    :pswitch_a
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    .line 271
    .line 272
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    .line 277
    .line 278
    goto/16 :goto_3

    .line 279
    .line 280
    :pswitch_b
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    .line 281
    .line 282
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    .line 287
    .line 288
    goto/16 :goto_3

    .line 289
    .line 290
    :pswitch_c
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 291
    .line 292
    invoke-static {v1, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 297
    .line 298
    goto/16 :goto_3

    .line 299
    .line 300
    :pswitch_d
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    .line 301
    .line 302
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :pswitch_e
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 311
    .line 312
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 317
    .line 318
    goto/16 :goto_3

    .line 319
    .line 320
    :pswitch_f
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 321
    .line 322
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 327
    .line 328
    goto/16 :goto_3

    .line 329
    .line 330
    :pswitch_10
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 331
    .line 332
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :pswitch_11
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 341
    .line 342
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    iput v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 347
    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    :pswitch_12
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 355
    .line 356
    goto/16 :goto_3

    .line 357
    .line 358
    :pswitch_13
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 359
    .line 360
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 365
    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :pswitch_14
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 369
    .line 370
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 375
    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :pswitch_15
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 383
    .line 384
    goto/16 :goto_3

    .line 385
    .line 386
    :pswitch_16
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 387
    .line 388
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 393
    .line 394
    goto/16 :goto_3

    .line 395
    .line 396
    :pswitch_17
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 397
    .line 398
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 403
    .line 404
    goto/16 :goto_3

    .line 405
    .line 406
    :pswitch_18
    const-string v5, "CURRENTLY UNSUPPORTED"

    .line 407
    .line 408
    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    goto/16 :goto_3

    .line 412
    .line 413
    :pswitch_19
    const/high16 v7, 0x3f800000    # 1.0f

    .line 414
    .line 415
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 416
    .line 417
    .line 418
    move-result v6

    .line 419
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 420
    .line 421
    goto/16 :goto_3

    .line 422
    .line 423
    :pswitch_1a
    const/high16 v7, 0x3f800000    # 1.0f

    .line 424
    .line 425
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 426
    .line 427
    .line 428
    move-result v6

    .line 429
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 430
    .line 431
    goto/16 :goto_3

    .line 432
    .line 433
    :pswitch_1b
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 434
    .line 435
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    iput v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 440
    .line 441
    goto/16 :goto_3

    .line 442
    .line 443
    :pswitch_1c
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 444
    .line 445
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 450
    .line 451
    goto/16 :goto_3

    .line 452
    .line 453
    :pswitch_1d
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    .line 458
    .line 459
    goto/16 :goto_3

    .line 460
    .line 461
    :pswitch_1e
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 466
    .line 467
    if-ne v5, v14, :cond_6

    .line 468
    .line 469
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    iput-object v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 474
    .line 475
    goto/16 :goto_3

    .line 476
    .line 477
    :cond_6
    sget-object v5, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 478
    .line 479
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 480
    .line 481
    .line 482
    move-result v6

    .line 483
    aget-object v5, v5, v6

    .line 484
    .line 485
    iput-object v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 486
    .line 487
    goto/16 :goto_3

    .line 488
    .line 489
    :pswitch_1f
    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 490
    .line 491
    invoke-static {v1, v6, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    iput v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 496
    .line 497
    goto/16 :goto_3

    .line 498
    .line 499
    :pswitch_20
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 500
    .line 501
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 506
    .line 507
    goto/16 :goto_3

    .line 508
    .line 509
    :pswitch_21
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 510
    .line 511
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 512
    .line 513
    .line 514
    move-result v6

    .line 515
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 516
    .line 517
    goto/16 :goto_3

    .line 518
    .line 519
    :pswitch_22
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 520
    .line 521
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 526
    .line 527
    goto/16 :goto_3

    .line 528
    .line 529
    :pswitch_23
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 530
    .line 531
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 532
    .line 533
    .line 534
    move-result v5

    .line 535
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 536
    .line 537
    goto/16 :goto_3

    .line 538
    .line 539
    :pswitch_24
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 540
    .line 541
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 546
    .line 547
    goto/16 :goto_3

    .line 548
    .line 549
    :pswitch_25
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 550
    .line 551
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 552
    .line 553
    .line 554
    move-result v6

    .line 555
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 556
    .line 557
    goto/16 :goto_3

    .line 558
    .line 559
    :pswitch_26
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 560
    .line 561
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 562
    .line 563
    .line 564
    move-result v6

    .line 565
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 566
    .line 567
    goto/16 :goto_3

    .line 568
    .line 569
    :pswitch_27
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 570
    .line 571
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 576
    .line 577
    goto/16 :goto_3

    .line 578
    .line 579
    :pswitch_28
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 580
    .line 581
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 582
    .line 583
    .line 584
    move-result v6

    .line 585
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 586
    .line 587
    goto/16 :goto_3

    .line 588
    .line 589
    :pswitch_29
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 590
    .line 591
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 592
    .line 593
    .line 594
    move-result v6

    .line 595
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 596
    .line 597
    goto/16 :goto_3

    .line 598
    .line 599
    :pswitch_2a
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 600
    .line 601
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 602
    .line 603
    .line 604
    move-result v5

    .line 605
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 606
    .line 607
    goto/16 :goto_3

    .line 608
    .line 609
    :pswitch_2b
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 610
    .line 611
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 616
    .line 617
    goto/16 :goto_3

    .line 618
    .line 619
    :pswitch_2c
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 620
    .line 621
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 622
    .line 623
    .line 624
    move-result v5

    .line 625
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 626
    .line 627
    goto/16 :goto_3

    .line 628
    .line 629
    :pswitch_2d
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 630
    .line 631
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 636
    .line 637
    goto/16 :goto_3

    .line 638
    .line 639
    :pswitch_2e
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 640
    .line 641
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 642
    .line 643
    .line 644
    move-result v5

    .line 645
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 646
    .line 647
    goto/16 :goto_3

    .line 648
    .line 649
    :pswitch_2f
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 650
    .line 651
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 652
    .line 653
    .line 654
    move-result v5

    .line 655
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 656
    .line 657
    goto/16 :goto_3

    .line 658
    .line 659
    :pswitch_30
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 660
    .line 661
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 662
    .line 663
    .line 664
    move-result v5

    .line 665
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 666
    .line 667
    goto/16 :goto_3

    .line 668
    .line 669
    :pswitch_31
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 670
    .line 671
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 672
    .line 673
    .line 674
    move-result v5

    .line 675
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 676
    .line 677
    goto/16 :goto_3

    .line 678
    .line 679
    :pswitch_32
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 680
    .line 681
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 682
    .line 683
    .line 684
    move-result v5

    .line 685
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 686
    .line 687
    goto/16 :goto_3

    .line 688
    .line 689
    :pswitch_33
    iput-boolean v7, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 690
    .line 691
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 692
    .line 693
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 694
    .line 695
    .line 696
    move-result v5

    .line 697
    iput v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 698
    .line 699
    goto/16 :goto_3

    .line 700
    .line 701
    :pswitch_34
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 702
    .line 703
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 704
    .line 705
    .line 706
    move-result v5

    .line 707
    iput v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 708
    .line 709
    goto/16 :goto_3

    .line 710
    .line 711
    :pswitch_35
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 712
    .line 713
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 714
    .line 715
    .line 716
    move-result v6

    .line 717
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 718
    .line 719
    goto/16 :goto_3

    .line 720
    .line 721
    :pswitch_36
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 722
    .line 723
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 724
    .line 725
    .line 726
    move-result v6

    .line 727
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 728
    .line 729
    goto/16 :goto_3

    .line 730
    .line 731
    :pswitch_37
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 732
    .line 733
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 734
    .line 735
    .line 736
    move-result v6

    .line 737
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 738
    .line 739
    goto/16 :goto_3

    .line 740
    .line 741
    :pswitch_38
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 742
    .line 743
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 744
    .line 745
    .line 746
    move-result v6

    .line 747
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 748
    .line 749
    goto/16 :goto_3

    .line 750
    .line 751
    :pswitch_39
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 752
    .line 753
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 754
    .line 755
    .line 756
    move-result v5

    .line 757
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 758
    .line 759
    goto/16 :goto_3

    .line 760
    .line 761
    :pswitch_3a
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 762
    .line 763
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 764
    .line 765
    .line 766
    move-result v6

    .line 767
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 768
    .line 769
    goto/16 :goto_3

    .line 770
    .line 771
    :pswitch_3b
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 772
    .line 773
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 774
    .line 775
    .line 776
    move-result v6

    .line 777
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 778
    .line 779
    goto/16 :goto_3

    .line 780
    .line 781
    :pswitch_3c
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 782
    .line 783
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 784
    .line 785
    .line 786
    move-result v6

    .line 787
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 788
    .line 789
    goto/16 :goto_3

    .line 790
    .line 791
    :pswitch_3d
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 792
    .line 793
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 794
    .line 795
    .line 796
    move-result v6

    .line 797
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 798
    .line 799
    goto/16 :goto_3

    .line 800
    .line 801
    :pswitch_3e
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 802
    .line 803
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 804
    .line 805
    .line 806
    move-result v6

    .line 807
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 808
    .line 809
    goto/16 :goto_3

    .line 810
    .line 811
    :pswitch_3f
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 812
    .line 813
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 814
    .line 815
    .line 816
    move-result v6

    .line 817
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 818
    .line 819
    goto/16 :goto_3

    .line 820
    .line 821
    :pswitch_40
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 822
    .line 823
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 824
    .line 825
    .line 826
    move-result v6

    .line 827
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 828
    .line 829
    goto/16 :goto_3

    .line 830
    .line 831
    :pswitch_41
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 832
    .line 833
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 834
    .line 835
    .line 836
    move-result v6

    .line 837
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 838
    .line 839
    goto/16 :goto_3

    .line 840
    .line 841
    :pswitch_42
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 842
    .line 843
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 844
    .line 845
    .line 846
    move-result v6

    .line 847
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 848
    .line 849
    goto/16 :goto_3

    .line 850
    .line 851
    :pswitch_43
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 852
    .line 853
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 854
    .line 855
    .line 856
    move-result v6

    .line 857
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 858
    .line 859
    goto/16 :goto_3

    .line 860
    .line 861
    :pswitch_44
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 862
    .line 863
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 864
    .line 865
    .line 866
    move-result v6

    .line 867
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 868
    .line 869
    goto/16 :goto_3

    .line 870
    .line 871
    :pswitch_45
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 872
    .line 873
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 874
    .line 875
    .line 876
    move-result v6

    .line 877
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 878
    .line 879
    goto/16 :goto_3

    .line 880
    .line 881
    :pswitch_46
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 882
    .line 883
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 884
    .line 885
    .line 886
    move-result v6

    .line 887
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 888
    .line 889
    goto/16 :goto_3

    .line 890
    .line 891
    :pswitch_47
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 892
    .line 893
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 894
    .line 895
    .line 896
    move-result v6

    .line 897
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 898
    .line 899
    goto/16 :goto_3

    .line 900
    .line 901
    :pswitch_48
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 902
    .line 903
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 904
    .line 905
    .line 906
    move-result v6

    .line 907
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 908
    .line 909
    goto/16 :goto_3

    .line 910
    .line 911
    :pswitch_49
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 912
    .line 913
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 914
    .line 915
    .line 916
    move-result v5

    .line 917
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 918
    .line 919
    aget v5, v6, v5

    .line 920
    .line 921
    iput v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 922
    .line 923
    goto/16 :goto_3

    .line 924
    .line 925
    :pswitch_4a
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 926
    .line 927
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 928
    .line 929
    .line 930
    move-result v6

    .line 931
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 932
    .line 933
    goto/16 :goto_3

    .line 934
    .line 935
    :pswitch_4b
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 936
    .line 937
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 938
    .line 939
    .line 940
    move-result v6

    .line 941
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 942
    .line 943
    goto/16 :goto_3

    .line 944
    .line 945
    :pswitch_4c
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 946
    .line 947
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 948
    .line 949
    .line 950
    move-result v6

    .line 951
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 952
    .line 953
    goto/16 :goto_3

    .line 954
    .line 955
    :pswitch_4d
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 956
    .line 957
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 958
    .line 959
    .line 960
    move-result v6

    .line 961
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 962
    .line 963
    goto/16 :goto_3

    .line 964
    .line 965
    :pswitch_4e
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 966
    .line 967
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 968
    .line 969
    .line 970
    move-result v6

    .line 971
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 972
    .line 973
    goto/16 :goto_3

    .line 974
    .line 975
    :pswitch_4f
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 976
    .line 977
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 978
    .line 979
    .line 980
    move-result v6

    .line 981
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 982
    .line 983
    goto/16 :goto_3

    .line 984
    .line 985
    :pswitch_50
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 986
    .line 987
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 988
    .line 989
    .line 990
    move-result v6

    .line 991
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 992
    .line 993
    goto/16 :goto_3

    .line 994
    .line 995
    :pswitch_51
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 996
    .line 997
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 998
    .line 999
    .line 1000
    move-result v6

    .line 1001
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 1002
    .line 1003
    goto/16 :goto_3

    .line 1004
    .line 1005
    :pswitch_52
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 1006
    .line 1007
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1008
    .line 1009
    .line 1010
    move-result v6

    .line 1011
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 1012
    .line 1013
    goto/16 :goto_3

    .line 1014
    .line 1015
    :pswitch_53
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 1016
    .line 1017
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1018
    .line 1019
    .line 1020
    move-result v6

    .line 1021
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 1022
    .line 1023
    goto :goto_3

    .line 1024
    :pswitch_54
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 1025
    .line 1026
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1027
    .line 1028
    .line 1029
    move-result v6

    .line 1030
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 1031
    .line 1032
    goto :goto_3

    .line 1033
    :pswitch_55
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 1034
    .line 1035
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 1036
    .line 1037
    .line 1038
    move-result v6

    .line 1039
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 1040
    .line 1041
    goto :goto_3

    .line 1042
    :pswitch_56
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 1043
    .line 1044
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 1045
    .line 1046
    .line 1047
    move-result v6

    .line 1048
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 1049
    .line 1050
    goto :goto_3

    .line 1051
    :pswitch_57
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 1052
    .line 1053
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1054
    .line 1055
    .line 1056
    move-result v6

    .line 1057
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 1058
    .line 1059
    goto :goto_3

    .line 1060
    :pswitch_58
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 1061
    .line 1062
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1063
    .line 1064
    .line 1065
    move-result v6

    .line 1066
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 1067
    .line 1068
    goto :goto_3

    .line 1069
    :pswitch_59
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 1070
    .line 1071
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1072
    .line 1073
    .line 1074
    move-result v6

    .line 1075
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 1076
    .line 1077
    goto :goto_3

    .line 1078
    :pswitch_5a
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v6

    .line 1082
    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 1083
    .line 1084
    goto :goto_3

    .line 1085
    :pswitch_5b
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 1086
    .line 1087
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 1088
    .line 1089
    .line 1090
    move-result v6

    .line 1091
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 1092
    .line 1093
    goto :goto_3

    .line 1094
    :pswitch_5c
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 1095
    .line 1096
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 1097
    .line 1098
    .line 1099
    move-result v6

    .line 1100
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 1101
    .line 1102
    goto :goto_3

    .line 1103
    :pswitch_5d
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 1104
    .line 1105
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1106
    .line 1107
    .line 1108
    move-result v6

    .line 1109
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 1110
    .line 1111
    goto :goto_3

    .line 1112
    :pswitch_5e
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 1113
    .line 1114
    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 1115
    .line 1116
    .line 1117
    move-result v6

    .line 1118
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 1119
    .line 1120
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 1121
    .line 1122
    goto/16 :goto_2

    .line 1123
    .line 1124
    :cond_8
    iget-object v2, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 1125
    .line 1126
    if-eqz v2, :cond_9

    .line 1127
    .line 1128
    const/4 v2, 0x0

    .line 1129
    iput-object v2, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 1130
    .line 1131
    :cond_9
    :goto_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1132
    .line 1133
    .line 1134
    return-object v0

    .line 1135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
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
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static lookupID(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    :cond_0
    return p2
.end method

.method public static parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    const/16 v2, 0x17

    .line 12
    .line 13
    const/16 v3, 0x15

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x5

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eq v0, v1, :cond_b

    .line 19
    .line 20
    if-eq v0, v5, :cond_4

    .line 21
    .line 22
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, -0x4

    .line 27
    const/4 v0, -0x2

    .line 28
    if-eq p1, p2, :cond_3

    .line 29
    .line 30
    const/4 p2, -0x3

    .line 31
    if-eq p1, p2, :cond_1

    .line 32
    .line 33
    if-eq p1, v0, :cond_2

    .line 34
    .line 35
    const/4 p2, -0x1

    .line 36
    if-eq p1, p2, :cond_2

    .line 37
    .line 38
    :cond_1
    move v4, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    move v4, v6

    .line 41
    move v6, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v6, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 51
    .line 52
    if-eqz p1, :cond_6

    .line 53
    .line 54
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 55
    .line 56
    if-nez p3, :cond_5

    .line 57
    .line 58
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 59
    .line 60
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_5
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 64
    .line 65
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_6
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 69
    .line 70
    if-eqz p1, :cond_8

    .line 71
    .line 72
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 73
    .line 74
    if-nez p3, :cond_7

    .line 75
    .line 76
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 77
    .line 78
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_7
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 82
    .line 83
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_8
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 87
    .line 88
    if-eqz p1, :cond_a

    .line 89
    .line 90
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 91
    .line 92
    if-nez p3, :cond_9

    .line 93
    .line 94
    invoke-virtual {p0, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 95
    .line 96
    .line 97
    const/16 p1, 0x50

    .line 98
    .line 99
    invoke-virtual {p0, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_9
    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 104
    .line 105
    .line 106
    const/16 p1, 0x51

    .line 107
    .line 108
    invoke-virtual {p0, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 109
    .line 110
    .line 111
    :cond_a
    :goto_2
    return-void

    .line 112
    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-nez p1, :cond_c

    .line 117
    .line 118
    goto/16 :goto_4

    .line 119
    .line 120
    :cond_c
    const/16 p2, 0x3d

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-lez p2, :cond_1c

    .line 131
    .line 132
    sub-int/2addr v0, v4

    .line 133
    if-ge p2, v0, :cond_1c

    .line 134
    .line 135
    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    add-int/2addr p2, v4

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-lez p2, :cond_1c

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string v0, "ratio"

    .line 159
    .line 160
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_10

    .line 165
    .line 166
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 167
    .line 168
    if-eqz p2, :cond_e

    .line 169
    .line 170
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 171
    .line 172
    if-nez p3, :cond_d

    .line 173
    .line 174
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_d
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 178
    .line 179
    :goto_3
    invoke-static {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionRatioString(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :cond_e
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 185
    .line 186
    if-eqz p2, :cond_f

    .line 187
    .line 188
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 189
    .line 190
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 191
    .line 192
    goto/16 :goto_4

    .line 193
    .line 194
    :cond_f
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 195
    .line 196
    if-eqz p2, :cond_1c

    .line 197
    .line 198
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 199
    .line 200
    invoke-virtual {p0, v5, p1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_4

    .line 204
    .line 205
    :cond_10
    const-string v0, "weight"

    .line 206
    .line 207
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_16

    .line 212
    .line 213
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 218
    .line 219
    if-eqz p2, :cond_12

    .line 220
    .line 221
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 222
    .line 223
    if-nez p3, :cond_11

    .line 224
    .line 225
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 226
    .line 227
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 228
    .line 229
    goto/16 :goto_4

    .line 230
    .line 231
    :cond_11
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 232
    .line 233
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 234
    .line 235
    goto/16 :goto_4

    .line 236
    .line 237
    :cond_12
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 238
    .line 239
    if-eqz p2, :cond_14

    .line 240
    .line 241
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 242
    .line 243
    if-nez p3, :cond_13

    .line 244
    .line 245
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 246
    .line 247
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 248
    .line 249
    goto/16 :goto_4

    .line 250
    .line 251
    :cond_13
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 252
    .line 253
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 254
    .line 255
    goto/16 :goto_4

    .line 256
    .line 257
    :cond_14
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 258
    .line 259
    if-eqz p2, :cond_1c

    .line 260
    .line 261
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 262
    .line 263
    if-nez p3, :cond_15

    .line 264
    .line 265
    invoke-virtual {p0, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 266
    .line 267
    .line 268
    const/16 p2, 0x27

    .line 269
    .line 270
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_15
    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 275
    .line 276
    .line 277
    const/16 p2, 0x28

    .line 278
    .line 279
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_16
    const-string v0, "parent"

    .line 284
    .line 285
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    if-eqz p2, :cond_1c

    .line 290
    .line 291
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    const/high16 p2, 0x3f800000    # 1.0f

    .line 296
    .line 297
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    const/4 p2, 0x0

    .line 302
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 307
    .line 308
    const/4 v0, 0x2

    .line 309
    if-eqz p2, :cond_18

    .line 310
    .line 311
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 312
    .line 313
    if-nez p3, :cond_17

    .line 314
    .line 315
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 316
    .line 317
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 318
    .line 319
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_17
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 323
    .line 324
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 325
    .line 326
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_18
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 330
    .line 331
    if-eqz p2, :cond_1a

    .line 332
    .line 333
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 334
    .line 335
    if-nez p3, :cond_19

    .line 336
    .line 337
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 338
    .line 339
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 340
    .line 341
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_19
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 345
    .line 346
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 347
    .line 348
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 349
    .line 350
    goto :goto_4

    .line 351
    :cond_1a
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 352
    .line 353
    if-eqz p1, :cond_1c

    .line 354
    .line 355
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 356
    .line 357
    if-nez p3, :cond_1b

    .line 358
    .line 359
    invoke-virtual {p0, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 360
    .line 361
    .line 362
    const/16 p1, 0x36

    .line 363
    .line 364
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 365
    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_1b
    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 369
    .line 370
    .line 371
    const/16 p1, 0x37

    .line 372
    .line 373
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 374
    .line 375
    .line 376
    :catch_0
    :cond_1c
    :goto_4
    return-void
.end method

.method public static parseDimensionRatioString(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x2c

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-lez v1, :cond_2

    .line 17
    .line 18
    add-int/lit8 v5, v0, -0x1

    .line 19
    .line 20
    if-ge v1, v5, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v6, "W"

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    move v3, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v4, "H"

    .line 37
    .line 38
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    move v3, v2

    .line 45
    :cond_1
    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 46
    .line 47
    :cond_2
    const/16 v1, 0x3a

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ltz v1, :cond_4

    .line 54
    .line 55
    sub-int/2addr v0, v2

    .line 56
    if-ge v1, v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    add-int/2addr v1, v2

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-lez v4, :cond_5

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-lez v4, :cond_5

    .line 78
    .line 79
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 v4, 0x0

    .line 88
    cmpl-float v5, v0, v4

    .line 89
    .line 90
    if-lez v5, :cond_5

    .line 91
    .line 92
    cmpl-float v4, v1, v4

    .line 93
    .line 94
    if-lez v4, :cond_5

    .line 95
    .line 96
    if-ne v3, v2, :cond_3

    .line 97
    .line 98
    div-float/2addr v1, v0

    .line 99
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    div-float/2addr v0, v1

    .line 104
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-lez v1, :cond_5

    .line 117
    .line 118
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    .line 120
    .line 121
    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 122
    .line 123
    return-void
.end method

.method public static populateOverride(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v4, 0xa

    .line 15
    .line 16
    new-array v5, v4, [I

    .line 17
    .line 18
    iput-object v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    .line 19
    .line 20
    new-array v5, v4, [I

    .line 21
    .line 22
    iput-object v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    .line 26
    .line 27
    new-array v6, v4, [I

    .line 28
    .line 29
    iput-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    .line 30
    .line 31
    new-array v4, v4, [F

    .line 32
    .line 33
    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    .line 34
    .line 35
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    .line 36
    .line 37
    const/4 v4, 0x5

    .line 38
    new-array v6, v4, [I

    .line 39
    .line 40
    iput-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    .line 41
    .line 42
    new-array v6, v4, [Ljava/lang/String;

    .line 43
    .line 44
    iput-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    .line 45
    .line 46
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    .line 47
    .line 48
    const/4 v6, 0x4

    .line 49
    new-array v7, v6, [I

    .line 50
    .line 51
    iput-object v7, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    .line 52
    .line 53
    new-array v6, v6, [Z

    .line 54
    .line 55
    iput-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    .line 56
    .line 57
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    .line 58
    .line 59
    iput-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 60
    .line 61
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 62
    .line 63
    iput-boolean v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    .line 64
    .line 65
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 66
    .line 67
    iput-boolean v5, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 68
    .line 69
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 70
    .line 71
    iput-boolean v5, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 72
    .line 73
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 74
    .line 75
    iput-boolean v5, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 76
    .line 77
    move v10, v5

    .line 78
    :goto_0
    if-ge v10, v2, :cond_7

    .line 79
    .line 80
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    sget-object v12, Landroidx/constraintlayout/widget/ConstraintSet;->sOverrideMapToConstant:Landroid/util/SparseIntArray;

    .line 85
    .line 86
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const/4 v13, 0x1

    .line 91
    const-string v15, "   "

    .line 92
    .line 93
    const/4 v4, 0x3

    .line 94
    const-string v14, "ConstraintSet"

    .line 95
    .line 96
    const/4 v5, -0x1

    .line 97
    packed-switch v12, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v5, "Unknown attribute 0x"

    .line 103
    .line 104
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintSet;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 118
    .line 119
    invoke-virtual {v5, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 134
    :goto_2
    const/4 v12, 0x5

    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :pswitch_1
    iget-boolean v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 138
    .line 139
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    const/16 v5, 0x63

    .line 144
    .line 145
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :pswitch_2
    sget-boolean v12, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 150
    .line 151
    if-eqz v12, :cond_1

    .line 152
    .line 153
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 154
    .line 155
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 160
    .line 161
    if-ne v4, v5, :cond_0

    .line 162
    .line 163
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    iput-object v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mTargetString:Ljava/lang/String;

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 175
    .line 176
    if-ne v5, v4, :cond_2

    .line 177
    .line 178
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iput-object v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mTargetString:Ljava/lang/String;

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_2
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 186
    .line 187
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :pswitch_3
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 195
    .line 196
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    const/16 v5, 0x61

    .line 201
    .line 202
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :pswitch_4
    invoke-static {v3, v1, v11, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :pswitch_5
    const/4 v4, 0x0

    .line 211
    invoke-static {v3, v1, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 212
    .line 213
    .line 214
    move v5, v4

    .line 215
    goto :goto_2

    .line 216
    :pswitch_6
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 217
    .line 218
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    const/16 v5, 0x5e

    .line 223
    .line 224
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :pswitch_7
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 229
    .line 230
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    const/16 v5, 0x5d

    .line 235
    .line 236
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v5, "unused attribute 0x"

    .line 243
    .line 244
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintSet;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 258
    .line 259
    invoke-virtual {v5, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-static {v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    :pswitch_9
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    iget v12, v12, Landroid/util/TypedValue;->type:I

    .line 280
    .line 281
    const/4 v14, -0x2

    .line 282
    const/16 v15, 0x59

    .line 283
    .line 284
    const/16 v4, 0x58

    .line 285
    .line 286
    if-ne v12, v13, :cond_3

    .line 287
    .line 288
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    iput v11, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 293
    .line 294
    invoke-virtual {v3, v15, v11}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 295
    .line 296
    .line 297
    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 298
    .line 299
    if-eq v11, v5, :cond_0

    .line 300
    .line 301
    iput v14, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 302
    .line 303
    invoke-virtual {v3, v4, v14}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :cond_3
    const/4 v13, 0x3

    .line 309
    if-ne v12, v13, :cond_5

    .line 310
    .line 311
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    iput-object v12, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    .line 316
    .line 317
    const/16 v13, 0x5a

    .line 318
    .line 319
    invoke-virtual {v3, v13, v12}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v12, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    .line 323
    .line 324
    const-string v13, "/"

    .line 325
    .line 326
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    move-result v12

    .line 330
    if-lez v12, :cond_4

    .line 331
    .line 332
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    iput v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 337
    .line 338
    invoke-virtual {v3, v15, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 339
    .line 340
    .line 341
    iput v14, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 342
    .line 343
    invoke-virtual {v3, v4, v14}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_4
    iput v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 349
    .line 350
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :cond_5
    iget v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 356
    .line 357
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    iput v5, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 362
    .line 363
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_1

    .line 367
    .line 368
    :pswitch_a
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    .line 369
    .line 370
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    const/16 v5, 0x55

    .line 375
    .line 376
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_1

    .line 380
    .line 381
    :pswitch_b
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    .line 382
    .line 383
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    const/16 v5, 0x54

    .line 388
    .line 389
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_1

    .line 393
    .line 394
    :pswitch_c
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 395
    .line 396
    invoke-static {v1, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    const/16 v5, 0x53

    .line 401
    .line 402
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_1

    .line 406
    .line 407
    :pswitch_d
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    .line 408
    .line 409
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    const/16 v5, 0x52

    .line 414
    .line 415
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_1

    .line 419
    .line 420
    :pswitch_e
    iget-boolean v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 421
    .line 422
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    const/16 v5, 0x51

    .line 427
    .line 428
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_1

    .line 432
    .line 433
    :pswitch_f
    iget-boolean v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 434
    .line 435
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    const/16 v5, 0x50

    .line 440
    .line 441
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_1

    .line 445
    .line 446
    :pswitch_10
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 447
    .line 448
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    const/16 v5, 0x4f

    .line 453
    .line 454
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_1

    .line 458
    .line 459
    :pswitch_11
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 460
    .line 461
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    const/16 v5, 0x4e

    .line 466
    .line 467
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_1

    .line 471
    .line 472
    :pswitch_12
    const/16 v4, 0x4d

    .line 473
    .line 474
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :pswitch_13
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 484
    .line 485
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 486
    .line 487
    .line 488
    move-result v4

    .line 489
    const/16 v5, 0x4c

    .line 490
    .line 491
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 492
    .line 493
    .line 494
    goto/16 :goto_1

    .line 495
    .line 496
    :pswitch_14
    iget-boolean v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 497
    .line 498
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    const/16 v5, 0x4b

    .line 503
    .line 504
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_1

    .line 508
    .line 509
    :pswitch_15
    const/16 v4, 0x4a

    .line 510
    .line 511
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_1

    .line 519
    .line 520
    :pswitch_16
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 521
    .line 522
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    const/16 v5, 0x49

    .line 527
    .line 528
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 529
    .line 530
    .line 531
    goto/16 :goto_1

    .line 532
    .line 533
    :pswitch_17
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 534
    .line 535
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    const/16 v5, 0x48

    .line 540
    .line 541
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_1

    .line 545
    .line 546
    :pswitch_18
    const-string v4, "CURRENTLY UNSUPPORTED"

    .line 547
    .line 548
    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    goto/16 :goto_1

    .line 552
    .line 553
    :pswitch_19
    const/16 v4, 0x46

    .line 554
    .line 555
    const/high16 v5, 0x3f800000    # 1.0f

    .line 556
    .line 557
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 562
    .line 563
    .line 564
    goto/16 :goto_1

    .line 565
    .line 566
    :pswitch_1a
    const/high16 v5, 0x3f800000    # 1.0f

    .line 567
    .line 568
    const/16 v4, 0x45

    .line 569
    .line 570
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 571
    .line 572
    .line 573
    move-result v5

    .line 574
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 575
    .line 576
    .line 577
    goto/16 :goto_1

    .line 578
    .line 579
    :pswitch_1b
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 580
    .line 581
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    const/16 v5, 0x44

    .line 586
    .line 587
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_1

    .line 591
    .line 592
    :pswitch_1c
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 593
    .line 594
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    const/16 v5, 0x43

    .line 599
    .line 600
    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_1

    .line 604
    .line 605
    :pswitch_1d
    const/16 v4, 0x42

    .line 606
    .line 607
    const/4 v5, 0x0

    .line 608
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 609
    .line 610
    .line 611
    move-result v11

    .line 612
    invoke-virtual {v3, v4, v11}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_2

    .line 616
    .line 617
    :pswitch_1e
    const/4 v5, 0x0

    .line 618
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 619
    .line 620
    .line 621
    move-result-object v4

    .line 622
    iget v4, v4, Landroid/util/TypedValue;->type:I

    .line 623
    .line 624
    const/16 v12, 0x41

    .line 625
    .line 626
    const/4 v13, 0x3

    .line 627
    if-ne v4, v13, :cond_6

    .line 628
    .line 629
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    invoke-virtual {v3, v12, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_2

    .line 637
    .line 638
    :cond_6
    sget-object v4, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 639
    .line 640
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 641
    .line 642
    .line 643
    move-result v11

    .line 644
    aget-object v4, v4, v11

    .line 645
    .line 646
    invoke-virtual {v3, v12, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 647
    .line 648
    .line 649
    goto/16 :goto_2

    .line 650
    .line 651
    :pswitch_1f
    const/4 v5, 0x0

    .line 652
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 653
    .line 654
    invoke-static {v1, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    const/16 v11, 0x40

    .line 659
    .line 660
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_2

    .line 664
    .line 665
    :pswitch_20
    const/4 v5, 0x0

    .line 666
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 667
    .line 668
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 669
    .line 670
    .line 671
    move-result v4

    .line 672
    const/16 v11, 0x3f

    .line 673
    .line 674
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 675
    .line 676
    .line 677
    goto/16 :goto_2

    .line 678
    .line 679
    :pswitch_21
    const/4 v5, 0x0

    .line 680
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 681
    .line 682
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    const/16 v11, 0x3e

    .line 687
    .line 688
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 689
    .line 690
    .line 691
    goto/16 :goto_2

    .line 692
    .line 693
    :pswitch_22
    const/4 v5, 0x0

    .line 694
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 695
    .line 696
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 697
    .line 698
    .line 699
    move-result v4

    .line 700
    const/16 v11, 0x3c

    .line 701
    .line 702
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 703
    .line 704
    .line 705
    goto/16 :goto_2

    .line 706
    .line 707
    :pswitch_23
    const/4 v5, 0x0

    .line 708
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 709
    .line 710
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    const/16 v11, 0x3b

    .line 715
    .line 716
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 717
    .line 718
    .line 719
    goto/16 :goto_2

    .line 720
    .line 721
    :pswitch_24
    const/4 v5, 0x0

    .line 722
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 723
    .line 724
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 725
    .line 726
    .line 727
    move-result v4

    .line 728
    const/16 v11, 0x3a

    .line 729
    .line 730
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 731
    .line 732
    .line 733
    goto/16 :goto_2

    .line 734
    .line 735
    :pswitch_25
    const/4 v5, 0x0

    .line 736
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 737
    .line 738
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 739
    .line 740
    .line 741
    move-result v4

    .line 742
    const/16 v11, 0x39

    .line 743
    .line 744
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 745
    .line 746
    .line 747
    goto/16 :goto_2

    .line 748
    .line 749
    :pswitch_26
    const/4 v5, 0x0

    .line 750
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 751
    .line 752
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 753
    .line 754
    .line 755
    move-result v4

    .line 756
    const/16 v11, 0x38

    .line 757
    .line 758
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_2

    .line 762
    .line 763
    :pswitch_27
    const/4 v5, 0x0

    .line 764
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 765
    .line 766
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 767
    .line 768
    .line 769
    move-result v4

    .line 770
    const/16 v11, 0x37

    .line 771
    .line 772
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 773
    .line 774
    .line 775
    goto/16 :goto_2

    .line 776
    .line 777
    :pswitch_28
    const/4 v5, 0x0

    .line 778
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 779
    .line 780
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 781
    .line 782
    .line 783
    move-result v4

    .line 784
    const/16 v11, 0x36

    .line 785
    .line 786
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 787
    .line 788
    .line 789
    goto/16 :goto_2

    .line 790
    .line 791
    :pswitch_29
    const/4 v5, 0x0

    .line 792
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 793
    .line 794
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 795
    .line 796
    .line 797
    move-result v4

    .line 798
    const/16 v11, 0x35

    .line 799
    .line 800
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 801
    .line 802
    .line 803
    goto/16 :goto_2

    .line 804
    .line 805
    :pswitch_2a
    const/4 v5, 0x0

    .line 806
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 807
    .line 808
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 809
    .line 810
    .line 811
    move-result v4

    .line 812
    const/16 v11, 0x34

    .line 813
    .line 814
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 815
    .line 816
    .line 817
    goto/16 :goto_2

    .line 818
    .line 819
    :pswitch_2b
    const/4 v5, 0x0

    .line 820
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 821
    .line 822
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 823
    .line 824
    .line 825
    move-result v4

    .line 826
    const/16 v11, 0x33

    .line 827
    .line 828
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_2

    .line 832
    .line 833
    :pswitch_2c
    const/4 v5, 0x0

    .line 834
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 835
    .line 836
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 837
    .line 838
    .line 839
    move-result v4

    .line 840
    const/16 v11, 0x32

    .line 841
    .line 842
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 843
    .line 844
    .line 845
    goto/16 :goto_2

    .line 846
    .line 847
    :pswitch_2d
    const/4 v5, 0x0

    .line 848
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 849
    .line 850
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 851
    .line 852
    .line 853
    move-result v4

    .line 854
    const/16 v11, 0x31

    .line 855
    .line 856
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 857
    .line 858
    .line 859
    goto/16 :goto_2

    .line 860
    .line 861
    :pswitch_2e
    const/4 v5, 0x0

    .line 862
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 863
    .line 864
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 865
    .line 866
    .line 867
    move-result v4

    .line 868
    const/16 v11, 0x30

    .line 869
    .line 870
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 871
    .line 872
    .line 873
    goto/16 :goto_2

    .line 874
    .line 875
    :pswitch_2f
    const/4 v5, 0x0

    .line 876
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 877
    .line 878
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 879
    .line 880
    .line 881
    move-result v4

    .line 882
    const/16 v11, 0x2f

    .line 883
    .line 884
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_2

    .line 888
    .line 889
    :pswitch_30
    const/4 v5, 0x0

    .line 890
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 891
    .line 892
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 893
    .line 894
    .line 895
    move-result v4

    .line 896
    const/16 v11, 0x2e

    .line 897
    .line 898
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 899
    .line 900
    .line 901
    goto/16 :goto_2

    .line 902
    .line 903
    :pswitch_31
    const/4 v5, 0x0

    .line 904
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 905
    .line 906
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 907
    .line 908
    .line 909
    move-result v4

    .line 910
    const/16 v11, 0x2d

    .line 911
    .line 912
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 913
    .line 914
    .line 915
    goto/16 :goto_2

    .line 916
    .line 917
    :pswitch_32
    const/4 v5, 0x0

    .line 918
    const/16 v4, 0x2c

    .line 919
    .line 920
    invoke-virtual {v3, v4, v13}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    .line 921
    .line 922
    .line 923
    iget v12, v9, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 924
    .line 925
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 926
    .line 927
    .line 928
    move-result v11

    .line 929
    invoke-virtual {v3, v4, v11}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_2

    .line 933
    .line 934
    :pswitch_33
    const/4 v5, 0x0

    .line 935
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 936
    .line 937
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 938
    .line 939
    .line 940
    move-result v4

    .line 941
    const/16 v11, 0x2b

    .line 942
    .line 943
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 944
    .line 945
    .line 946
    goto/16 :goto_2

    .line 947
    .line 948
    :pswitch_34
    const/4 v5, 0x0

    .line 949
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 950
    .line 951
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 952
    .line 953
    .line 954
    move-result v4

    .line 955
    const/16 v11, 0x2a

    .line 956
    .line 957
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 958
    .line 959
    .line 960
    goto/16 :goto_2

    .line 961
    .line 962
    :pswitch_35
    const/4 v5, 0x0

    .line 963
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 964
    .line 965
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 966
    .line 967
    .line 968
    move-result v4

    .line 969
    const/16 v11, 0x29

    .line 970
    .line 971
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 972
    .line 973
    .line 974
    goto/16 :goto_2

    .line 975
    .line 976
    :pswitch_36
    const/4 v5, 0x0

    .line 977
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 978
    .line 979
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 980
    .line 981
    .line 982
    move-result v4

    .line 983
    const/16 v11, 0x28

    .line 984
    .line 985
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 986
    .line 987
    .line 988
    goto/16 :goto_2

    .line 989
    .line 990
    :pswitch_37
    const/4 v5, 0x0

    .line 991
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 992
    .line 993
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 994
    .line 995
    .line 996
    move-result v4

    .line 997
    const/16 v11, 0x27

    .line 998
    .line 999
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_2

    .line 1003
    .line 1004
    :pswitch_38
    const/4 v5, 0x0

    .line 1005
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 1006
    .line 1007
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 1008
    .line 1009
    .line 1010
    move-result v4

    .line 1011
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 1012
    .line 1013
    const/16 v11, 0x26

    .line 1014
    .line 1015
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1016
    .line 1017
    .line 1018
    goto/16 :goto_2

    .line 1019
    .line 1020
    :pswitch_39
    const/4 v5, 0x0

    .line 1021
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 1022
    .line 1023
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1024
    .line 1025
    .line 1026
    move-result v4

    .line 1027
    const/16 v11, 0x25

    .line 1028
    .line 1029
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_2

    .line 1033
    .line 1034
    :pswitch_3a
    const/4 v5, 0x0

    .line 1035
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 1036
    .line 1037
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1038
    .line 1039
    .line 1040
    move-result v4

    .line 1041
    const/16 v11, 0x22

    .line 1042
    .line 1043
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1044
    .line 1045
    .line 1046
    goto/16 :goto_2

    .line 1047
    .line 1048
    :pswitch_3b
    const/4 v5, 0x0

    .line 1049
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 1050
    .line 1051
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1052
    .line 1053
    .line 1054
    move-result v4

    .line 1055
    const/16 v11, 0x1f

    .line 1056
    .line 1057
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1058
    .line 1059
    .line 1060
    goto/16 :goto_2

    .line 1061
    .line 1062
    :pswitch_3c
    const/4 v5, 0x0

    .line 1063
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 1064
    .line 1065
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1066
    .line 1067
    .line 1068
    move-result v4

    .line 1069
    const/16 v11, 0x1c

    .line 1070
    .line 1071
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1072
    .line 1073
    .line 1074
    goto/16 :goto_2

    .line 1075
    .line 1076
    :pswitch_3d
    const/4 v5, 0x0

    .line 1077
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 1078
    .line 1079
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1080
    .line 1081
    .line 1082
    move-result v4

    .line 1083
    const/16 v11, 0x1b

    .line 1084
    .line 1085
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1086
    .line 1087
    .line 1088
    goto/16 :goto_2

    .line 1089
    .line 1090
    :pswitch_3e
    const/4 v5, 0x0

    .line 1091
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 1092
    .line 1093
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1094
    .line 1095
    .line 1096
    move-result v4

    .line 1097
    const/16 v11, 0x18

    .line 1098
    .line 1099
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1100
    .line 1101
    .line 1102
    goto/16 :goto_2

    .line 1103
    .line 1104
    :pswitch_3f
    const/4 v5, 0x0

    .line 1105
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 1106
    .line 1107
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 1108
    .line 1109
    .line 1110
    move-result v4

    .line 1111
    const/16 v11, 0x17

    .line 1112
    .line 1113
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1114
    .line 1115
    .line 1116
    goto/16 :goto_2

    .line 1117
    .line 1118
    :pswitch_40
    const/4 v5, 0x0

    .line 1119
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 1120
    .line 1121
    iget v12, v8, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 1122
    .line 1123
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1124
    .line 1125
    .line 1126
    move-result v11

    .line 1127
    aget v4, v4, v11

    .line 1128
    .line 1129
    const/16 v11, 0x16

    .line 1130
    .line 1131
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1132
    .line 1133
    .line 1134
    goto/16 :goto_2

    .line 1135
    .line 1136
    :pswitch_41
    const/4 v5, 0x0

    .line 1137
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 1138
    .line 1139
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 1140
    .line 1141
    .line 1142
    move-result v4

    .line 1143
    const/16 v11, 0x15

    .line 1144
    .line 1145
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1146
    .line 1147
    .line 1148
    goto/16 :goto_2

    .line 1149
    .line 1150
    :pswitch_42
    const/4 v5, 0x0

    .line 1151
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 1152
    .line 1153
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1154
    .line 1155
    .line 1156
    move-result v4

    .line 1157
    const/16 v11, 0x14

    .line 1158
    .line 1159
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 1160
    .line 1161
    .line 1162
    goto/16 :goto_2

    .line 1163
    .line 1164
    :pswitch_43
    const/4 v5, 0x0

    .line 1165
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 1166
    .line 1167
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1168
    .line 1169
    .line 1170
    move-result v4

    .line 1171
    const/16 v11, 0x13

    .line 1172
    .line 1173
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IF)V

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_2

    .line 1177
    .line 1178
    :pswitch_44
    const/4 v5, 0x0

    .line 1179
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 1180
    .line 1181
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1182
    .line 1183
    .line 1184
    move-result v4

    .line 1185
    const/16 v11, 0x12

    .line 1186
    .line 1187
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1188
    .line 1189
    .line 1190
    goto/16 :goto_2

    .line 1191
    .line 1192
    :pswitch_45
    const/4 v5, 0x0

    .line 1193
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 1194
    .line 1195
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1196
    .line 1197
    .line 1198
    move-result v4

    .line 1199
    const/16 v11, 0x11

    .line 1200
    .line 1201
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1202
    .line 1203
    .line 1204
    goto/16 :goto_2

    .line 1205
    .line 1206
    :pswitch_46
    const/4 v5, 0x0

    .line 1207
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 1208
    .line 1209
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1210
    .line 1211
    .line 1212
    move-result v4

    .line 1213
    const/16 v11, 0x10

    .line 1214
    .line 1215
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1216
    .line 1217
    .line 1218
    goto/16 :goto_2

    .line 1219
    .line 1220
    :pswitch_47
    const/4 v5, 0x0

    .line 1221
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 1222
    .line 1223
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1224
    .line 1225
    .line 1226
    move-result v4

    .line 1227
    const/16 v11, 0xf

    .line 1228
    .line 1229
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1230
    .line 1231
    .line 1232
    goto/16 :goto_2

    .line 1233
    .line 1234
    :pswitch_48
    const/4 v5, 0x0

    .line 1235
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 1236
    .line 1237
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1238
    .line 1239
    .line 1240
    move-result v4

    .line 1241
    const/16 v11, 0xe

    .line 1242
    .line 1243
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1244
    .line 1245
    .line 1246
    goto/16 :goto_2

    .line 1247
    .line 1248
    :pswitch_49
    const/4 v5, 0x0

    .line 1249
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 1250
    .line 1251
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1252
    .line 1253
    .line 1254
    move-result v4

    .line 1255
    const/16 v11, 0xd

    .line 1256
    .line 1257
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1258
    .line 1259
    .line 1260
    goto/16 :goto_2

    .line 1261
    .line 1262
    :pswitch_4a
    const/4 v5, 0x0

    .line 1263
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 1264
    .line 1265
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1266
    .line 1267
    .line 1268
    move-result v4

    .line 1269
    const/16 v11, 0xc

    .line 1270
    .line 1271
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1272
    .line 1273
    .line 1274
    goto/16 :goto_2

    .line 1275
    .line 1276
    :pswitch_4b
    const/4 v5, 0x0

    .line 1277
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 1278
    .line 1279
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1280
    .line 1281
    .line 1282
    move-result v4

    .line 1283
    const/16 v11, 0xb

    .line 1284
    .line 1285
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1286
    .line 1287
    .line 1288
    goto/16 :goto_2

    .line 1289
    .line 1290
    :pswitch_4c
    const/4 v5, 0x0

    .line 1291
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 1292
    .line 1293
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1294
    .line 1295
    .line 1296
    move-result v4

    .line 1297
    const/16 v11, 0x8

    .line 1298
    .line 1299
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1300
    .line 1301
    .line 1302
    goto/16 :goto_2

    .line 1303
    .line 1304
    :pswitch_4d
    const/4 v5, 0x0

    .line 1305
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 1306
    .line 1307
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1308
    .line 1309
    .line 1310
    move-result v4

    .line 1311
    const/4 v11, 0x7

    .line 1312
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1313
    .line 1314
    .line 1315
    goto/16 :goto_2

    .line 1316
    .line 1317
    :pswitch_4e
    const/4 v5, 0x0

    .line 1318
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 1319
    .line 1320
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1321
    .line 1322
    .line 1323
    move-result v4

    .line 1324
    const/4 v11, 0x6

    .line 1325
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1326
    .line 1327
    .line 1328
    goto/16 :goto_2

    .line 1329
    .line 1330
    :pswitch_4f
    const/4 v5, 0x0

    .line 1331
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v4

    .line 1335
    const/4 v12, 0x5

    .line 1336
    invoke-virtual {v3, v12, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    .line 1337
    .line 1338
    .line 1339
    goto :goto_3

    .line 1340
    :pswitch_50
    const/4 v5, 0x0

    .line 1341
    const/4 v12, 0x5

    .line 1342
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 1343
    .line 1344
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1345
    .line 1346
    .line 1347
    move-result v4

    .line 1348
    const/4 v11, 0x2

    .line 1349
    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    .line 1350
    .line 1351
    .line 1352
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 1353
    .line 1354
    move v4, v12

    .line 1355
    goto/16 :goto_0

    .line 1356
    .line 1357
    :cond_7
    return-void

    .line 1358
    nop

    .line 1359
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
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
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_5

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "id unknown "

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "ConstraintSet"

    .line 47
    .line 48
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_0
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    const/4 v4, -0x1

    .line 57
    if-eq v3, v4, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_2
    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 91
    .line 92
    if-nez v3, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-static {v2, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setAttributes(Landroid/view/View;Ljava/util/HashMap;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    return-void
.end method

.method public final applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    new-instance v2, Ljava/util/HashSet;

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    if-ge v4, v1, :cond_d

    .line 20
    .line 21
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const-string v8, "ConstraintSet"

    .line 40
    .line 41
    if-nez v7, :cond_0

    .line 42
    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v7, "id unknown "

    .line 46
    .line 47
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_0
    iget-boolean v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 67
    .line 68
    const/4 v9, -0x1

    .line 69
    if-eqz v7, :cond_2

    .line 70
    .line 71
    if-eq v6, v9, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 75
    .line 76
    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_2
    :goto_1
    if-ne v6, v9, :cond_3

    .line 83
    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_3
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_b

    .line 97
    .line 98
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 116
    .line 117
    if-nez v7, :cond_4

    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :cond_4
    instance-of v8, v5, Landroidx/constraintlayout/widget/Barrier;

    .line 122
    .line 123
    if-eqz v8, :cond_6

    .line 124
    .line 125
    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 126
    .line 127
    iput v0, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 128
    .line 129
    move-object v10, v5

    .line 130
    check-cast v10, Landroidx/constraintlayout/widget/Barrier;

    .line 131
    .line 132
    invoke-virtual {v10, v6}, Landroid/view/View;->setId(I)V

    .line 133
    .line 134
    .line 135
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 136
    .line 137
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 138
    .line 139
    .line 140
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 141
    .line 142
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 143
    .line 144
    .line 145
    iget-boolean v6, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 146
    .line 147
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    .line 148
    .line 149
    .line 150
    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 151
    .line 152
    if-eqz v6, :cond_5

    .line 153
    .line 154
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v6, :cond_6

    .line 161
    .line 162
    invoke-static {v10, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iput-object v6, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 167
    .line 168
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 169
    .line 170
    .line 171
    :cond_6
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 176
    .line 177
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 184
    .line 185
    invoke-static {v5, v8}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setAttributes(Landroid/view/View;Ljava/util/HashMap;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 192
    .line 193
    iget v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 194
    .line 195
    if-nez v8, :cond_7

    .line 196
    .line 197
    iget v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 198
    .line 199
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    :cond_7
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 203
    .line 204
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 205
    .line 206
    .line 207
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 208
    .line 209
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 210
    .line 211
    invoke-virtual {v5, v7}, Landroid/view/View;->setRotation(F)V

    .line 212
    .line 213
    .line 214
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 215
    .line 216
    invoke-virtual {v5, v7}, Landroid/view/View;->setRotationX(F)V

    .line 217
    .line 218
    .line 219
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 220
    .line 221
    invoke-virtual {v5, v7}, Landroid/view/View;->setRotationY(F)V

    .line 222
    .line 223
    .line 224
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 225
    .line 226
    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    .line 227
    .line 228
    .line 229
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 230
    .line 231
    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    .line 232
    .line 233
    .line 234
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 235
    .line 236
    if-eq v7, v9, :cond_8

    .line 237
    .line 238
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    check-cast v7, Landroid/view/View;

    .line 243
    .line 244
    iget v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 245
    .line 246
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    if-eqz v7, :cond_a

    .line 251
    .line 252
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    add-int/2addr v9, v8

    .line 261
    int-to-float v8, v9

    .line 262
    const/high16 v9, 0x40000000    # 2.0f

    .line 263
    .line 264
    div-float/2addr v8, v9

    .line 265
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    add-int/2addr v7, v10

    .line 274
    int-to-float v7, v7

    .line 275
    div-float/2addr v7, v9

    .line 276
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 281
    .line 282
    .line 283
    move-result v10

    .line 284
    sub-int/2addr v9, v10

    .line 285
    if-lez v9, :cond_a

    .line 286
    .line 287
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    sub-int/2addr v9, v10

    .line 296
    if-lez v9, :cond_a

    .line 297
    .line 298
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    int-to-float v9, v9

    .line 303
    sub-float/2addr v7, v9

    .line 304
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 305
    .line 306
    .line 307
    move-result v9

    .line 308
    int-to-float v9, v9

    .line 309
    sub-float/2addr v8, v9

    .line 310
    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotX(F)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, v8}, Landroid/view/View;->setPivotY(F)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_8
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 318
    .line 319
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-nez v7, :cond_9

    .line 324
    .line 325
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 326
    .line 327
    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotX(F)V

    .line 328
    .line 329
    .line 330
    :cond_9
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 331
    .line 332
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    if-nez v7, :cond_a

    .line 337
    .line 338
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 339
    .line 340
    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotY(F)V

    .line 341
    .line 342
    .line 343
    :cond_a
    :goto_3
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 344
    .line 345
    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 346
    .line 347
    .line 348
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 349
    .line 350
    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 351
    .line 352
    .line 353
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 354
    .line 355
    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationZ(F)V

    .line 356
    .line 357
    .line 358
    iget-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 359
    .line 360
    if-eqz v7, :cond_c

    .line 361
    .line 362
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 363
    .line 364
    invoke-virtual {v5, v6}, Landroid/view/View;->setElevation(F)V

    .line 365
    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    const-string v7, "WARNING NO CONSTRAINTS for view "

    .line 371
    .line 372
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    :cond_c
    :goto_4
    add-int/2addr v4, v0

    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_d
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    :cond_e
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    if-eqz v4, :cond_13

    .line 397
    .line 398
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    check-cast v4, Ljava/lang/Integer;

    .line 403
    .line 404
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 405
    .line 406
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 411
    .line 412
    if-nez v5, :cond_f

    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 416
    .line 417
    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 418
    .line 419
    const/4 v8, -0x2

    .line 420
    if-ne v7, v0, :cond_12

    .line 421
    .line 422
    new-instance v7, Landroidx/constraintlayout/widget/Barrier;

    .line 423
    .line 424
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    invoke-direct {v7, v9}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    .line 436
    .line 437
    .line 438
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 439
    .line 440
    if-eqz v9, :cond_10

    .line 441
    .line 442
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 443
    .line 444
    .line 445
    goto :goto_6

    .line 446
    :cond_10
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 447
    .line 448
    if-eqz v9, :cond_11

    .line 449
    .line 450
    invoke-static {v7, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    .line 451
    .line 452
    .line 453
    move-result-object v9

    .line 454
    iput-object v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 455
    .line 456
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 457
    .line 458
    .line 459
    :cond_11
    :goto_6
    iget v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 460
    .line 461
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 462
    .line 463
    .line 464
    iget v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 465
    .line 466
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 467
    .line 468
    .line 469
    sget-object v9, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 470
    .line 471
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 472
    .line 473
    invoke-direct {v9, v8, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5, v9}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    .line 484
    .line 485
    :cond_12
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 486
    .line 487
    if-eqz v6, :cond_e

    .line 488
    .line 489
    new-instance v6, Landroidx/constraintlayout/widget/Guideline;

    .line 490
    .line 491
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    invoke-virtual {v6, v4}, Landroid/view/View;->setId(I)V

    .line 503
    .line 504
    .line 505
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    .line 506
    .line 507
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 508
    .line 509
    invoke-direct {v4, v8, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p1, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    .line 517
    .line 518
    goto :goto_5

    .line 519
    :cond_13
    :goto_7
    if-ge v3, v1, :cond_15

    .line 520
    .line 521
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 522
    .line 523
    .line 524
    move-result-object p0

    .line 525
    instance-of v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 526
    .line 527
    if-eqz v2, :cond_14

    .line 528
    .line 529
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 530
    .line 531
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 532
    .line 533
    .line 534
    :cond_14
    add-int/2addr v3, v0

    .line 535
    goto :goto_7

    .line 536
    :cond_15
    return-void
.end method

.method public final clone(Landroid/content/Context;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move/from16 v3, p2

    .line 9
    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v3, v0

    .line 15
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_0
    if-ge v6, v4, :cond_a

    .line 28
    .line 29
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v8, v0

    .line 38
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 39
    .line 40
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/4 v0, -0x1

    .line 49
    if-eq v9, v0, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_1
    :goto_1
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    new-instance v11, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 79
    .line 80
    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    move-object v10, v0

    .line 97
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 98
    .line 99
    if-nez v10, :cond_3

    .line 100
    .line 101
    move-object/from16 v17, v3

    .line 102
    .line 103
    move/from16 p2, v4

    .line 104
    .line 105
    move-object v4, v2

    .line 106
    goto/16 :goto_d

    .line 107
    .line 108
    :cond_3
    iget-object v11, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    .line 109
    .line 110
    const-string v12, "\" not found on "

    .line 111
    .line 112
    const-string v13, " Custom Attribute \""

    .line 113
    .line 114
    const-string v14, "TransitionLayout"

    .line 115
    .line 116
    new-instance v15, Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v16

    .line 133
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move-object v5, v0

    .line 144
    check-cast v5, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 151
    .line 152
    :try_start_0
    const-string v1, "BackgroundColor"

    .line 153
    .line 154
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_4

    .line 159
    .line 160
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 174
    move-object/from16 v17, v3

    .line 175
    .line 176
    :try_start_1
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 177
    .line 178
    invoke-direct {v3, v0, v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v15, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move/from16 p2, v4

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    goto/16 :goto_c

    .line 188
    .line 189
    :catch_0
    move-exception v0

    .line 190
    :goto_3
    move/from16 p2, v4

    .line 191
    .line 192
    :goto_4
    const/4 v4, 0x0

    .line 193
    goto :goto_9

    .line 194
    :catch_1
    move-exception v0

    .line 195
    :goto_5
    move/from16 p2, v4

    .line 196
    .line 197
    :goto_6
    const/4 v4, 0x0

    .line 198
    goto/16 :goto_a

    .line 199
    .line 200
    :catch_2
    move-exception v0

    .line 201
    :goto_7
    move/from16 p2, v4

    .line 202
    .line 203
    :goto_8
    const/4 v4, 0x0

    .line 204
    goto/16 :goto_b

    .line 205
    .line 206
    :catch_3
    move-exception v0

    .line 207
    move-object/from16 v17, v3

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :catch_4
    move-exception v0

    .line 211
    move-object/from16 v17, v3

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :catch_5
    move-exception v0

    .line 215
    move-object/from16 v17, v3

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_4
    move-object/from16 v17, v3

    .line 219
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v3, "getMap"

    .line 226
    .line 227
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    move/from16 p2, v4

    .line 238
    .line 239
    const/4 v3, 0x0

    .line 240
    :try_start_2
    new-array v4, v3, [Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_9

    .line 241
    .line 242
    const/4 v4, 0x0

    .line 243
    :try_start_3
    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 252
    .line 253
    invoke-direct {v3, v0, v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v15, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6

    .line 257
    .line 258
    .line 259
    goto :goto_c

    .line 260
    :catch_6
    move-exception v0

    .line 261
    goto :goto_9

    .line 262
    :catch_7
    move-exception v0

    .line 263
    goto :goto_a

    .line 264
    :catch_8
    move-exception v0

    .line 265
    goto :goto_b

    .line 266
    :catch_9
    move-exception v0

    .line 267
    goto :goto_4

    .line 268
    :catch_a
    move-exception v0

    .line 269
    goto :goto_6

    .line 270
    :catch_b
    move-exception v0

    .line 271
    goto :goto_8

    .line 272
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .line 296
    .line 297
    goto :goto_c

    .line 298
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .line 322
    .line 323
    goto :goto_c

    .line 324
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v3, " must have a method "

    .line 337
    .line 338
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .line 350
    .line 351
    :goto_c
    move-object/from16 v1, p0

    .line 352
    .line 353
    move/from16 v4, p2

    .line 354
    .line 355
    move-object/from16 v3, v17

    .line 356
    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :cond_5
    move-object/from16 v17, v3

    .line 360
    .line 361
    move/from16 p2, v4

    .line 362
    .line 363
    const/4 v4, 0x0

    .line 364
    iput-object v15, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 365
    .line 366
    invoke-virtual {v10, v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 374
    .line 375
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 376
    .line 377
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 382
    .line 383
    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 388
    .line 389
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 390
    .line 391
    invoke-virtual {v7}, Landroid/view/View;->getRotationX()F

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 396
    .line 397
    invoke-virtual {v7}, Landroid/view/View;->getRotationY()F

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 402
    .line 403
    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 408
    .line 409
    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 414
    .line 415
    invoke-virtual {v7}, Landroid/view/View;->getPivotX()F

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    invoke-virtual {v7}, Landroid/view/View;->getPivotY()F

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    float-to-double v8, v0

    .line 424
    const-wide/16 v11, 0x0

    .line 425
    .line 426
    cmpl-double v3, v8, v11

    .line 427
    .line 428
    if-nez v3, :cond_6

    .line 429
    .line 430
    float-to-double v8, v2

    .line 431
    cmpl-double v3, v8, v11

    .line 432
    .line 433
    if-eqz v3, :cond_7

    .line 434
    .line 435
    :cond_6
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 436
    .line 437
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 438
    .line 439
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 444
    .line 445
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 450
    .line 451
    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 456
    .line 457
    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 458
    .line 459
    if-eqz v0, :cond_8

    .line 460
    .line 461
    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 466
    .line 467
    :cond_8
    instance-of v0, v7, Landroidx/constraintlayout/widget/Barrier;

    .line 468
    .line 469
    if-eqz v0, :cond_9

    .line 470
    .line 471
    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    .line 472
    .line 473
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 478
    .line 479
    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 480
    .line 481
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 486
    .line 487
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 492
    .line 493
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 498
    .line 499
    :cond_9
    :goto_d
    add-int/lit8 v6, v6, 0x1

    .line 500
    .line 501
    move-object/from16 v1, p0

    .line 502
    .line 503
    move-object v2, v4

    .line 504
    move-object/from16 v3, v17

    .line 505
    .line 506
    move/from16 v4, p2

    .line 507
    .line 508
    goto/16 :goto_0

    .line 509
    .line 510
    :cond_a
    return-void
.end method

.method public final get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 20
    .line 21
    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 38
    .line 39
    return-object p0
.end method

.method public final getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final load(Landroid/content/Context;I)V
    .locals 7

    .line 1
    const-string v0, "Error parsing resource: "

    const-string v1, "ConstraintSet"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    const/4 v6, 0x0

    .line 6
    invoke-static {p1, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    .line 7
    const-string v6, "Guideline"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    .line 9
    :cond_1
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 12
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_5
    return-void
.end method

.method public final load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    .line 13
    const-string v0, "Error parsing XML resource"

    const-string v1, "ConstraintSet"

    .line 14
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_c

    if-eqz v2, :cond_b

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_0

    goto/16 :goto_3

    .line 15
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 16
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "constraintset"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v9

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :sswitch_1
    const-string v9, "constraintoverride"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v8

    goto :goto_1

    :sswitch_2
    const-string v9, "constraint"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v5

    goto :goto_1

    :sswitch_3
    const-string v9, "guideline"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v7

    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    if-eq v6, v5, :cond_2

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_2

    goto/16 :goto_3

    .line 17
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    goto/16 :goto_3

    :cond_3
    return-void

    .line 18
    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "Constraint"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v9

    goto :goto_2

    :sswitch_5
    const-string v7, "CustomAttribute"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v6, 0x8

    goto :goto_2

    :sswitch_6
    const-string v8, "Barrier"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v7

    goto :goto_2

    :sswitch_7
    const-string v7, "CustomMethod"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v6, 0x9

    goto :goto_2

    :sswitch_8
    const-string v7, "Guideline"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v8

    goto :goto_2

    :sswitch_9
    const-string v7, "Transform"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_a
    const-string v7, "PropertySet"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_b
    const-string v7, "ConstraintOverride"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v5

    goto :goto_2

    :sswitch_c
    const-string v7, "Motion"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x7

    goto :goto_2

    :sswitch_d
    const-string v7, "Layout"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_5

    const/4 v6, 0x6

    :cond_5
    :goto_2
    const-string v2, "XML parser error must be within a Constraint "

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz v4, :cond_6

    .line 20
    :try_start_1
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-static {p1, p2, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 21
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-eqz v4, :cond_7

    .line 23
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 24
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 25
    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 26
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    if-eqz v4, :cond_8

    .line 28
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 29
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 30
    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    .line 31
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    if-eqz v4, :cond_9

    .line 33
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 34
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 35
    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 36
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-eqz v4, :cond_a

    .line 38
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 39
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 40
    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 41
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 44
    invoke-static {p1, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v4

    .line 45
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    goto :goto_3

    .line 46
    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 47
    invoke-static {p1, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v4

    .line 48
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 49
    iput-boolean v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    goto :goto_3

    .line 50
    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 51
    invoke-static {p1, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v4

    goto :goto_3

    .line 52
    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 53
    invoke-static {p1, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v4

    goto :goto_3

    .line 54
    :cond_b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 55
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 56
    :goto_4
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 57
    :goto_5
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
