.class public abstract Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final sByteArrayComparator:Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    return-void
.end method

.method public static getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    if-eqz v5, :cond_13

    .line 19
    .line 20
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v7, v0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_12

    .line 29
    .line 30
    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    const/16 v6, 0x40

    .line 33
    .line 34
    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 39
    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    array-length v6, v1

    .line 46
    move v7, v4

    .line 47
    :goto_0
    if-ge v7, v6, :cond_0

    .line 48
    .line 49
    aget-object v8, v1, v7

    .line 50
    .line 51
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v7, v7, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    .line 65
    .line 66
    iget-object v6, v0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    .line 67
    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-static {v2, v4}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    :goto_1
    move v2, v4

    .line 76
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    const/4 v8, 0x0

    .line 81
    if-ge v2, v7, :cond_4

    .line 82
    .line 83
    new-instance v7, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Ljava/util/Collection;

    .line 90
    .line 91
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v7, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-eq v9, v10, :cond_2

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_2
    move v9, v4

    .line 109
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-ge v9, v10, :cond_5

    .line 114
    .line 115
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    check-cast v10, [B

    .line 120
    .line 121
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    check-cast v11, [B

    .line 126
    .line 127
    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-nez v10, :cond_3

    .line 132
    .line 133
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    move-object v5, v8

    .line 140
    :cond_5
    const/4 v1, 0x1

    .line 141
    if-nez v5, :cond_6

    .line 142
    .line 143
    new-instance v0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    .line 144
    .line 145
    invoke-direct {v0, v1, v8}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_6
    iget-object v2, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v3, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    new-instance v5, Landroid/net/Uri$Builder;

    .line 157
    .line 158
    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v6, "content"

    .line 162
    .line 163
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    new-instance v7, Landroid/net/Uri$Builder;

    .line 176
    .line 177
    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v6, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    const-string v6, "file"

    .line 189
    .line 190
    invoke-virtual {v2, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    :try_start_0
    const-string v9, "_id"

    .line 207
    .line 208
    const-string v10, "file_id"

    .line 209
    .line 210
    const-string v11, "font_ttc_index"

    .line 211
    .line 212
    const-string v12, "font_variation_settings"

    .line 213
    .line 214
    const-string v13, "font_weight"

    .line 215
    .line 216
    const-string v14, "font_italic"

    .line 217
    .line 218
    const-string v15, "result_code"

    .line 219
    .line 220
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    const-string v12, "query = ?"

    .line 225
    .line 226
    iget-object v0, v0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    .line 227
    .line 228
    filled-new-array {v0}, [Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    if-nez v6, :cond_7

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_7
    const/4 v14, 0x0

    .line 236
    const/4 v15, 0x0

    .line 237
    move-object v9, v6

    .line 238
    move-object v10, v5

    .line 239
    :try_start_1
    invoke-virtual/range {v9 .. v15}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 240
    .line 241
    .line 242
    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    goto :goto_5

    .line 244
    :catch_0
    move-exception v0

    .line 245
    move-object v7, v0

    .line 246
    :try_start_2
    const-string v0, "FontsProvider"

    .line 247
    .line 248
    const-string v9, "Unable to query the content provider"

    .line 249
    .line 250
    invoke-static {v0, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .line 252
    .line 253
    :goto_5
    if-eqz v8, :cond_d

    .line 254
    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-lez v0, :cond_d

    .line 260
    .line 261
    const-string v0, "result_code"

    .line 262
    .line 263
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string v7, "_id"

    .line 273
    .line 274
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    const-string v9, "file_id"

    .line 279
    .line 280
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    const-string v10, "font_ttc_index"

    .line 285
    .line 286
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    const-string v11, "font_weight"

    .line 291
    .line 292
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v11

    .line 296
    const-string v12, "font_italic"

    .line 297
    .line 298
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 303
    .line 304
    .line 305
    move-result v13

    .line 306
    if-eqz v13, :cond_d

    .line 307
    .line 308
    const/4 v13, -0x1

    .line 309
    if-eq v0, v13, :cond_8

    .line 310
    .line 311
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 312
    .line 313
    .line 314
    move-result v14

    .line 315
    move/from16 v20, v14

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :catchall_0
    move-exception v0

    .line 319
    goto :goto_e

    .line 320
    :cond_8
    move/from16 v20, v4

    .line 321
    .line 322
    :goto_7
    if-eq v10, v13, :cond_9

    .line 323
    .line 324
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 325
    .line 326
    .line 327
    move-result v14

    .line 328
    move/from16 v17, v14

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_9
    move/from16 v17, v4

    .line 332
    .line 333
    :goto_8
    if-ne v9, v13, :cond_a

    .line 334
    .line 335
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 336
    .line 337
    .line 338
    move-result-wide v14

    .line 339
    invoke-static {v5, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 340
    .line 341
    .line 342
    move-result-object v14

    .line 343
    :goto_9
    move-object/from16 v16, v14

    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_a
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v14

    .line 350
    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 351
    .line 352
    .line 353
    move-result-object v14

    .line 354
    goto :goto_9

    .line 355
    :goto_a
    if-eq v11, v13, :cond_b

    .line 356
    .line 357
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 358
    .line 359
    .line 360
    move-result v14

    .line 361
    :goto_b
    move/from16 v18, v14

    .line 362
    .line 363
    goto :goto_c

    .line 364
    :cond_b
    const/16 v14, 0x190

    .line 365
    .line 366
    goto :goto_b

    .line 367
    :goto_c
    if-eq v12, v13, :cond_c

    .line 368
    .line 369
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 370
    .line 371
    .line 372
    move-result v13

    .line 373
    if-ne v13, v1, :cond_c

    .line 374
    .line 375
    move/from16 v19, v1

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_c
    move/from16 v19, v4

    .line 379
    .line 380
    :goto_d
    new-instance v13, Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 381
    .line 382
    move-object v15, v13

    .line 383
    invoke-direct/range {v15 .. v20}, Landroidx/core/provider/FontsContractCompat$FontInfo;-><init>(Landroid/net/Uri;IIZI)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_d
    if-eqz v8, :cond_e

    .line 391
    .line 392
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 393
    .line 394
    .line 395
    :cond_e
    if-eqz v6, :cond_f

    .line 396
    .line 397
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->close()V

    .line 398
    .line 399
    .line 400
    :cond_f
    new-array v0, v4, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 401
    .line 402
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 407
    .line 408
    new-instance v1, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    .line 409
    .line 410
    invoke-direct {v1, v4, v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    .line 411
    .line 412
    .line 413
    return-object v1

    .line 414
    :goto_e
    if-eqz v8, :cond_10

    .line 415
    .line 416
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 417
    .line 418
    .line 419
    :cond_10
    if-eqz v6, :cond_11

    .line 420
    .line 421
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->close()V

    .line 422
    .line 423
    .line 424
    :cond_11
    throw v0

    .line 425
    :cond_12
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 426
    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    const-string v2, "Found content provider "

    .line 430
    .line 431
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v2, ", but package was not "

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v0

    .line 453
    :cond_13
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 454
    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string v2, "No package found for authority: "

    .line 458
    .line 459
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v0
.end method
