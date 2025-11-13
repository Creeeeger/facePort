.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# instance fields
.field public final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

.field public final synthetic val$application:Landroid/app/Application;

.field public final synthetic val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->val$application:Landroid/app/Application;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFinish()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    .line 4
    .line 5
    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_20

    .line 10
    .line 11
    iget-object v0, v2, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, ""

    .line 22
    .line 23
    const-string v6, "appVersionForInit"

    .line 24
    .line 25
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v7, 0x0

    .line 34
    iget-object v8, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 35
    .line 36
    const-string v9, "SamsungAnalyticsPrefs"

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_12

    .line 85
    .line 86
    :cond_2
    :goto_0
    iget-object v3, v2, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    iget-object v0, v8, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->isAgreement()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const v4, 0x2a51bd80

    .line 95
    .line 96
    .line 97
    invoke-static {v3}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getDMAVersion(Landroid/content/Context;)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-gt v4, v5, :cond_3

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    if-nez v0, :cond_4

    .line 105
    .line 106
    const-string v0, "user do not agree setting"

    .line 107
    .line 108
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_11

    .line 112
    .line 113
    :cond_4
    :goto_1
    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v4, Ljava/util/HashSet;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v5, "AppPrefs"

    .line 123
    .line 124
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getKeyValueDLM()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getCollectionDLM()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->THREE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getCollectionDLM()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    const-string v10, "SamsungAnalyticsPrefs"

    .line 149
    .line 150
    const/4 v11, 0x0

    .line 151
    if-eqz v9, :cond_5

    .line 152
    .line 153
    const/4 v9, 0x0

    .line 154
    goto/16 :goto_9

    .line 155
    .line 156
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v13, ""

    .line 166
    .line 167
    move-object v14, v13

    .line 168
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    if-eqz v15, :cond_e

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    check-cast v15, Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v3, v15, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 181
    .line 182
    .line 183
    move-result-object v16

    .line 184
    invoke-virtual {v3, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    new-instance v7, Ljava/util/HashSet;

    .line 189
    .line 190
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-interface {v12, v15, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v15

    .line 213
    if-eqz v15, :cond_d

    .line 214
    .line 215
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    check-cast v15, Ljava/util/Map$Entry;

    .line 220
    .line 221
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    if-eqz v11, :cond_c

    .line 230
    .line 231
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    move-object/from16 v17, v0

    .line 240
    .line 241
    const-class v0, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-nez v0, :cond_9

    .line 248
    .line 249
    const-class v0, Ljava/lang/Float;

    .line 250
    .line 251
    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_9

    .line 256
    .line 257
    const-class v0, Ljava/lang/Long;

    .line 258
    .line 259
    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_9

    .line 264
    .line 265
    const-class v0, Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-nez v0, :cond_9

    .line 272
    .line 273
    const-class v0, Ljava/lang/Boolean;

    .line 274
    .line 275
    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_6

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_6
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljava/util/Set;

    .line 287
    .line 288
    new-instance v11, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v15

    .line 297
    check-cast v15, Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    const/4 v15, 0x0

    .line 314
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v18

    .line 318
    if-eqz v18, :cond_8

    .line 319
    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v18

    .line 324
    move-object/from16 v19, v0

    .line 325
    .line 326
    move-object/from16 v0, v18

    .line 327
    .line 328
    check-cast v0, Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 331
    .line 332
    .line 333
    move-result v18

    .line 334
    if-nez v18, :cond_7

    .line 335
    .line 336
    invoke-static {v15, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v15

    .line 340
    :cond_7
    invoke-static {v15, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v15

    .line 344
    move-object/from16 v0, v19

    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_8
    invoke-static {v11, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    goto :goto_6

    .line 352
    :cond_9
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    check-cast v11, Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    :goto_6
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 381
    .line 382
    .line 383
    move-result v11

    .line 384
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 385
    .line 386
    .line 387
    move-result v15

    .line 388
    add-int/2addr v15, v11

    .line 389
    const/16 v11, 0x200

    .line 390
    .line 391
    if-le v15, v11, :cond_a

    .line 392
    .line 393
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-object v14, v13

    .line 397
    goto :goto_7

    .line 398
    :cond_a
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 399
    .line 400
    .line 401
    move-result v11

    .line 402
    if-nez v11, :cond_b

    .line 403
    .line 404
    invoke-static {v14, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v14

    .line 408
    :cond_b
    :goto_7
    invoke-static {v14, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    move-object v14, v0

    .line 413
    goto :goto_8

    .line 414
    :cond_c
    move-object/from16 v17, v0

    .line 415
    .line 416
    :goto_8
    move-object/from16 v0, v17

    .line 417
    .line 418
    const/4 v11, 0x0

    .line 419
    goto/16 :goto_3

    .line 420
    .line 421
    :cond_d
    const/4 v7, 0x0

    .line 422
    goto/16 :goto_2

    .line 423
    .line 424
    :cond_e
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_f

    .line 429
    .line 430
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    :cond_f
    :goto_9
    if-eqz v9, :cond_1c

    .line 434
    .line 435
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-eqz v0, :cond_10

    .line 440
    .line 441
    goto/16 :goto_10

    .line 442
    .line 443
    :cond_10
    const/4 v4, 0x0

    .line 444
    invoke-virtual {v3, v10, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    const-string v4, "status_sent_date"

    .line 449
    .line 450
    const-wide/16 v5, 0x0

    .line 451
    .line 452
    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 453
    .line 454
    .line 455
    move-result-wide v11

    .line 456
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    const/4 v7, 0x1

    .line 461
    invoke-static {v7, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->compareDays(ILjava/lang/Long;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-nez v0, :cond_11

    .line 466
    .line 467
    const-string v0, "do not send setting < 1day"

    .line 468
    .line 469
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_11

    .line 473
    .line 474
    :cond_11
    const-string v0, "Send Setting Log"

    .line 475
    .line 476
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 480
    .line 481
    const-string v11, "st"

    .line 482
    .line 483
    const-string v12, "t"

    .line 484
    .line 485
    const-string v13, "ts"

    .line 486
    .line 487
    const/4 v14, 0x3

    .line 488
    const-string v5, "sti"

    .line 489
    .line 490
    if-ne v0, v14, :cond_16

    .line 491
    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 493
    .line 494
    .line 495
    move-result-wide v19

    .line 496
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    new-instance v6, Landroid/content/ContentValues;

    .line 501
    .line 502
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .line 504
    .line 505
    const/4 v14, 0x0

    .line 506
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v15

    .line 510
    const-string v14, "tcType"

    .line 511
    .line 512
    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    .line 514
    .line 515
    iget-object v14, v8, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    .line 516
    .line 517
    const-string v15, "tid"

    .line 518
    .line 519
    invoke-virtual {v6, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    sget-object v14, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    .line 523
    .line 524
    invoke-virtual {v14}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v14

    .line 528
    const-string v15, "logType"

    .line 529
    .line 530
    invoke-virtual {v6, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    const-string v14, "timeStamp"

    .line 534
    .line 535
    invoke-virtual {v6, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    iget-object v14, v8, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    .line 539
    .line 540
    invoke-virtual {v14}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->isAgreement()Z

    .line 541
    .line 542
    .line 543
    move-result v14

    .line 544
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v14

    .line 548
    const-string v15, "agree"

    .line 549
    .line 550
    invoke-virtual {v6, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    .line 552
    .line 553
    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    .line 554
    .line 555
    .line 556
    move-result v14

    .line 557
    if-nez v14, :cond_12

    .line 558
    .line 559
    invoke-static {v3, v6, v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->addAppCommonData(Landroid/content/Context;Landroid/content/ContentValues;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 560
    .line 561
    .line 562
    :cond_12
    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    .line 563
    .line 564
    .line 565
    move-result v14

    .line 566
    xor-int/2addr v14, v7

    .line 567
    if-eqz v14, :cond_13

    .line 568
    .line 569
    const/4 v14, -0x1

    .line 570
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    .line 572
    .line 573
    move-result-object v14

    .line 574
    const-string v15, "networkType"

    .line 575
    .line 576
    invoke-virtual {v6, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    .line 578
    .line 579
    :cond_13
    new-instance v14, Ljava/util/HashMap;

    .line 580
    .line 581
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v14, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v14, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    const-string v0, "v"

    .line 591
    .line 592
    const-string v11, "6.05.068"

    .line 593
    .line 594
    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 598
    .line 599
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 600
    .line 601
    .line 602
    move-result-object v11

    .line 603
    invoke-virtual {v11}, Ljava/util/TimeZone;->getRawOffset()I

    .line 604
    .line 605
    .line 606
    move-result v11

    .line 607
    int-to-long v11, v11

    .line 608
    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 609
    .line 610
    .line 611
    move-result-wide v11

    .line 612
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    const-string v11, "tz"

    .line 617
    .line 618
    invoke-virtual {v14, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    const-string v0, "content://com.sec.android.log.diagmonagent.sa/log"

    .line 622
    .line 623
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 624
    .line 625
    .line 626
    move-result-object v11

    .line 627
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 628
    .line 629
    .line 630
    move-result-object v9

    .line 631
    :cond_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_1a

    .line 636
    .line 637
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    check-cast v0, Ljava/lang/String;

    .line 642
    .line 643
    invoke-virtual {v14, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    .line 647
    .line 648
    invoke-static {v14, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->makeDelimiterString(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    const-string v12, "body"

    .line 653
    .line 654
    invoke-virtual {v6, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {v0, v11, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 662
    .line 663
    .line 664
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    goto :goto_a

    .line 666
    :catch_0
    move-exception v0

    .line 667
    new-instance v12, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    const-string v13, "failed to send setting log"

    .line 670
    .line 671
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingW(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    const/4 v0, 0x0

    .line 689
    :goto_a
    if-nez v0, :cond_15

    .line 690
    .line 691
    :goto_b
    goto :goto_c

    .line 692
    :cond_15
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    const/4 v15, 0x2

    .line 701
    if-eqz v0, :cond_14

    .line 702
    .line 703
    if-eq v0, v15, :cond_14

    .line 704
    .line 705
    goto :goto_b

    .line 706
    :cond_16
    const/4 v15, 0x2

    .line 707
    if-eq v0, v15, :cond_18

    .line 708
    .line 709
    if-nez v0, :cond_17

    .line 710
    .line 711
    goto :goto_d

    .line 712
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    const-string v6, "Sender type is invalid : "

    .line 715
    .line 716
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingW(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    :goto_c
    const/4 v7, 0x0

    .line 730
    goto :goto_e

    .line 731
    :cond_18
    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 732
    .line 733
    .line 734
    move-result-wide v14

    .line 735
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    new-instance v6, Ljava/util/HashMap;

    .line 740
    .line 741
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v6, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v6, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 755
    .line 756
    .line 757
    move-result v9

    .line 758
    if-eqz v9, :cond_1a

    .line 759
    .line 760
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v9

    .line 764
    check-cast v9, Ljava/lang/String;

    .line 765
    .line 766
    invoke-virtual {v6, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    sget v9, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 770
    .line 771
    invoke-static {v3, v9, v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 772
    .line 773
    .line 774
    move-result-object v9

    .line 775
    invoke-virtual {v9, v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->send(Ljava/util/Map;)I

    .line 776
    .line 777
    .line 778
    move-result v9

    .line 779
    if-eqz v9, :cond_19

    .line 780
    .line 781
    goto :goto_b

    .line 782
    :cond_1a
    :goto_e
    if-eqz v7, :cond_1b

    .line 783
    .line 784
    const/4 v5, 0x0

    .line 785
    invoke-virtual {v3, v10, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 794
    .line 795
    .line 796
    move-result-wide v5

    .line 797
    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 802
    .line 803
    .line 804
    goto :goto_f

    .line 805
    :cond_1b
    const/4 v5, 0x0

    .line 806
    invoke-virtual {v3, v10, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    const-wide/16 v5, 0x0

    .line 815
    .line 816
    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 821
    .line 822
    .line 823
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    const-string v3, "Send Setting Log Result = "

    .line 826
    .line 827
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    goto :goto_11

    .line 841
    :cond_1c
    :goto_10
    const-string v0, "Setting Sender"

    .line 842
    .line 843
    const-string v3, "No status log"

    .line 844
    .line 845
    invoke-static {v0, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    :goto_11
    iget-object v0, v2, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 849
    .line 850
    invoke-static {v0, v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->sendProperties(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 851
    .line 852
    .line 853
    :goto_12
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->val$application:Landroid/app/Application;

    .line 854
    .line 855
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 856
    .line 857
    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;

    .line 858
    .line 859
    invoke-direct {v2, v0, v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 860
    .line 861
    .line 862
    const-string v3, "SATerms"

    .line 863
    .line 864
    const/4 v4, 0x0

    .line 865
    invoke-virtual {v0, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 882
    .line 883
    .line 884
    move-result v3

    .line 885
    iget-object v4, v2, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 886
    .line 887
    if-eqz v3, :cond_1d

    .line 888
    .line 889
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    check-cast v3, Ljava/util/Map$Entry;

    .line 894
    .line 895
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v5

    .line 899
    move-object v8, v5

    .line 900
    check-cast v8, Ljava/lang/String;

    .line 901
    .line 902
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    check-cast v3, Ljava/lang/Long;

    .line 907
    .line 908
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 909
    .line 910
    .line 911
    move-result-wide v9

    .line 912
    new-instance v3, Ljava/lang/StringBuilder;

    .line 913
    .line 914
    const-string v5, "Send previous agreement, timestamp : "

    .line 915
    .line 916
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v3

    .line 926
    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    new-instance v5, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;

    .line 934
    .line 935
    iget-object v7, v4, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    .line 936
    .line 937
    new-instance v11, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;

    .line 938
    .line 939
    invoke-direct {v11, v2, v8, v9, v10}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;Ljava/lang/String;J)V

    .line 940
    .line 941
    .line 942
    move-object v6, v5

    .line 943
    invoke-direct/range {v6 .. v11}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    invoke-static {v5}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    .line 950
    .line 951
    .line 952
    goto :goto_13

    .line 953
    :cond_1d
    iget-object v0, v2, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 954
    .line 955
    if-eq v0, v1, :cond_20

    .line 956
    .line 957
    sget v1, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 958
    .line 959
    const/4 v3, 0x2

    .line 960
    if-lt v1, v3, :cond_1f

    .line 961
    .line 962
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->getAction()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    iget-object v5, v4, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    .line 967
    .line 968
    new-instance v6, Ljava/lang/StringBuilder;

    .line 969
    .line 970
    const-string v7, "Send broadcast for "

    .line 971
    .line 972
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    const-string v1, ", tid : "

    .line 979
    .line 980
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    iget-object v1, v2, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    .line 994
    .line 995
    new-instance v5, Landroid/content/Intent;

    .line 996
    .line 997
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 998
    .line 999
    .line 1000
    const-string v6, "com.sec.android.diagmonagent"

    .line 1001
    .line 1002
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->getAction()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v6

    .line 1009
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    .line 1011
    .line 1012
    iget-object v6, v4, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    .line 1013
    .line 1014
    const-string v7, "tid"

    .line 1015
    .line 1016
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    .line 1018
    .line 1019
    const-string v6, "agree"

    .line 1020
    .line 1021
    const/4 v7, 0x0

    .line 1022
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1023
    .line 1024
    .line 1025
    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->DELETE_SENSITIVE_APP_DATA:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 1026
    .line 1027
    if-ne v0, v6, :cond_1e

    .line 1028
    .line 1029
    new-instance v0, Ljava/util/ArrayList;

    .line 1030
    .line 1031
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    .line 1033
    .line 1034
    const/16 v6, 0xa

    .line 1035
    .line 1036
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v6

    .line 1040
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    const/16 v6, 0xb

    .line 1044
    .line 1045
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v6

    .line 1049
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    .line 1051
    .line 1052
    const-string v6, "event_type"

    .line 1053
    .line 1054
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1055
    .line 1056
    .line 1057
    :cond_1e
    invoke-virtual {v1, v5}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 1058
    .line 1059
    .line 1060
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 1061
    .line 1062
    if-ne v0, v3, :cond_1f

    .line 1063
    .line 1064
    iget-object v0, v2, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->application:Landroid/app/Application;

    .line 1065
    .line 1066
    invoke-static {v0, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    .line 1071
    .line 1072
    const/4 v1, 0x1

    .line 1073
    iput-boolean v1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->isReset:Z

    .line 1074
    .line 1075
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1076
    .line 1077
    .line 1078
    move-result-wide v8

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    const-string v1, "Send agreement, timestamp : "

    .line 1082
    .line 1083
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v0

    .line 1093
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;

    .line 1101
    .line 1102
    iget-object v6, v4, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    .line 1103
    .line 1104
    new-instance v10, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;

    .line 1105
    .line 1106
    iget-object v7, v2, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;->deviceId:Ljava/lang/String;

    .line 1107
    .line 1108
    invoke-direct {v10, v2, v7, v8, v9}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender;Ljava/lang/String;J)V

    .line 1109
    .line 1110
    .line 1111
    move-object v5, v1

    .line 1112
    invoke-direct/range {v5 .. v10}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    .line 1117
    .line 1118
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    .line 1119
    .line 1120
    .line 1121
    :cond_20
    return-void
.end method
