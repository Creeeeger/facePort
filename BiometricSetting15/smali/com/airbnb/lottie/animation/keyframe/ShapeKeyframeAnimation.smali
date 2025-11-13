.class public final Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public shapeModifiers:Ljava/util/List;

.field public final tempPath:Landroid/graphics/Path;

.field public final tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

.field public valueCallbackEndPath:Landroid/graphics/Path;

.field public valueCallbackStartPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    iget-object v2, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 10
    .line 11
    iget-object v3, v1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    move-object v4, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v4, v3

    .line 20
    :goto_0
    iget-object v6, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 21
    .line 22
    iget-object v7, v6, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 23
    .line 24
    if-nez v7, :cond_1

    .line 25
    .line 26
    new-instance v7, Landroid/graphics/PointF;

    .line 27
    .line 28
    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v7, v6, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 32
    .line 33
    :cond_1
    iget-boolean v7, v2, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    if-nez v7, :cond_3

    .line 37
    .line 38
    iget-boolean v7, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 39
    .line 40
    if-eqz v7, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v7, 0x0

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    :goto_1
    move v7, v8

    .line 46
    :goto_2
    iput-boolean v7, v6, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 47
    .line 48
    iget-object v7, v2, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 49
    .line 50
    check-cast v7, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    iget-object v10, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 57
    .line 58
    check-cast v10, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eq v7, v10, :cond_4

    .line 65
    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v10, "Curves must have the same number of control points. Shape 1: "

    .line 69
    .line 70
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v10, v2, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 74
    .line 75
    check-cast v10, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v10, "\tShape 2: "

    .line 85
    .line 86
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v10, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 90
    .line 91
    check-cast v10, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-static {v7}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object v7, v2, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 108
    .line 109
    check-cast v7, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    iget-object v10, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 116
    .line 117
    check-cast v10, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    iget-object v10, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 128
    .line 129
    check-cast v10, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-ge v10, v7, :cond_5

    .line 136
    .line 137
    iget-object v10, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 138
    .line 139
    check-cast v10, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    :goto_3
    if-ge v10, v7, :cond_6

    .line 146
    .line 147
    iget-object v11, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 148
    .line 149
    new-instance v12, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 150
    .line 151
    invoke-direct {v12}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    .line 152
    .line 153
    .line 154
    check-cast v11, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    add-int/lit8 v10, v10, 0x1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    iget-object v10, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 163
    .line 164
    check-cast v10, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-le v10, v7, :cond_6

    .line 171
    .line 172
    iget-object v10, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 173
    .line 174
    check-cast v10, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    sub-int/2addr v10, v8

    .line 181
    :goto_4
    if-lt v10, v7, :cond_6

    .line 182
    .line 183
    iget-object v11, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 184
    .line 185
    check-cast v11, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    sub-int/2addr v12, v8

    .line 192
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    add-int/lit8 v10, v10, -0x1

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    iget-object v7, v2, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 199
    .line 200
    iget-object v10, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 201
    .line 202
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 203
    .line 204
    iget v12, v10, Landroid/graphics/PointF;->x:F

    .line 205
    .line 206
    invoke-static {v11, v12, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 211
    .line 212
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 213
    .line 214
    invoke-static {v7, v10, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    invoke-virtual {v6, v11, v7}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 219
    .line 220
    .line 221
    iget-object v7, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 222
    .line 223
    check-cast v7, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    sub-int/2addr v7, v8

    .line 230
    :goto_5
    if-ltz v7, :cond_7

    .line 231
    .line 232
    iget-object v10, v2, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 233
    .line 234
    check-cast v10, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    check-cast v10, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 241
    .line 242
    iget-object v11, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 243
    .line 244
    check-cast v11, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    check-cast v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 251
    .line 252
    iget-object v12, v10, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 253
    .line 254
    iget-object v13, v10, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 255
    .line 256
    iget-object v10, v10, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 257
    .line 258
    iget-object v14, v11, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 259
    .line 260
    iget-object v15, v11, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 261
    .line 262
    iget-object v11, v11, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 263
    .line 264
    iget-object v9, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 265
    .line 266
    check-cast v9, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    check-cast v9, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 273
    .line 274
    iget v8, v12, Landroid/graphics/PointF;->x:F

    .line 275
    .line 276
    move-object/from16 v17, v4

    .line 277
    .line 278
    iget v4, v14, Landroid/graphics/PointF;->x:F

    .line 279
    .line 280
    invoke-static {v8, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    iget v8, v12, Landroid/graphics/PointF;->y:F

    .line 285
    .line 286
    iget v12, v14, Landroid/graphics/PointF;->y:F

    .line 287
    .line 288
    invoke-static {v8, v12, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    iget-object v9, v9, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 293
    .line 294
    invoke-virtual {v9, v4, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 295
    .line 296
    .line 297
    iget-object v4, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 298
    .line 299
    check-cast v4, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 306
    .line 307
    iget v8, v13, Landroid/graphics/PointF;->x:F

    .line 308
    .line 309
    iget v9, v15, Landroid/graphics/PointF;->x:F

    .line 310
    .line 311
    invoke-static {v8, v9, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    iget v9, v13, Landroid/graphics/PointF;->y:F

    .line 316
    .line 317
    iget v12, v15, Landroid/graphics/PointF;->y:F

    .line 318
    .line 319
    invoke-static {v9, v12, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 320
    .line 321
    .line 322
    move-result v9

    .line 323
    iget-object v4, v4, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 324
    .line 325
    invoke-virtual {v4, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 326
    .line 327
    .line 328
    iget-object v4, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 329
    .line 330
    check-cast v4, Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    check-cast v4, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 337
    .line 338
    iget v8, v10, Landroid/graphics/PointF;->x:F

    .line 339
    .line 340
    iget v9, v11, Landroid/graphics/PointF;->x:F

    .line 341
    .line 342
    invoke-static {v8, v9, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 343
    .line 344
    .line 345
    move-result v8

    .line 346
    iget v9, v10, Landroid/graphics/PointF;->y:F

    .line 347
    .line 348
    iget v10, v11, Landroid/graphics/PointF;->y:F

    .line 349
    .line 350
    invoke-static {v9, v10, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 351
    .line 352
    .line 353
    move-result v9

    .line 354
    iget-object v4, v4, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 355
    .line 356
    invoke-virtual {v4, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 357
    .line 358
    .line 359
    add-int/lit8 v7, v7, -0x1

    .line 360
    .line 361
    move-object/from16 v4, v17

    .line 362
    .line 363
    const/4 v8, 0x1

    .line 364
    goto/16 :goto_5

    .line 365
    .line 366
    :cond_7
    iget-object v4, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/List;

    .line 367
    .line 368
    if-eqz v4, :cond_1c

    .line 369
    .line 370
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    const/4 v7, 0x1

    .line 375
    sub-int/2addr v4, v7

    .line 376
    :goto_6
    if-ltz v4, :cond_1b

    .line 377
    .line 378
    iget-object v7, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/List;

    .line 379
    .line 380
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    check-cast v7, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    .line 385
    .line 386
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    iget-object v8, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 390
    .line 391
    check-cast v8, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 394
    .line 395
    .line 396
    move-result v9

    .line 397
    const/4 v10, 0x2

    .line 398
    if-gt v9, v10, :cond_8

    .line 399
    .line 400
    :goto_7
    move-object/from16 v19, v2

    .line 401
    .line 402
    move-object/from16 v18, v3

    .line 403
    .line 404
    move/from16 v21, v4

    .line 405
    .line 406
    const/16 v16, 0x1

    .line 407
    .line 408
    goto/16 :goto_16

    .line 409
    .line 410
    :cond_8
    iget-object v9, v7, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 411
    .line 412
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    check-cast v9, Ljava/lang/Float;

    .line 417
    .line 418
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    const/4 v10, 0x0

    .line 423
    cmpl-float v11, v9, v10

    .line 424
    .line 425
    if-nez v11, :cond_9

    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_9
    iget-object v11, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 429
    .line 430
    iget-boolean v12, v6, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 431
    .line 432
    check-cast v11, Ljava/util/ArrayList;

    .line 433
    .line 434
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 435
    .line 436
    .line 437
    move-result v13

    .line 438
    const/4 v14, 0x1

    .line 439
    sub-int/2addr v13, v14

    .line 440
    const/4 v14, 0x0

    .line 441
    :goto_8
    if-ltz v13, :cond_f

    .line 442
    .line 443
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v15

    .line 447
    check-cast v15, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 448
    .line 449
    add-int/lit8 v10, v13, -0x1

    .line 450
    .line 451
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    invoke-static {v10, v5}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    check-cast v5, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 464
    .line 465
    if-nez v13, :cond_a

    .line 466
    .line 467
    if-nez v12, :cond_a

    .line 468
    .line 469
    iget-object v10, v6, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_a
    iget-object v10, v5, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 473
    .line 474
    :goto_9
    if-nez v13, :cond_b

    .line 475
    .line 476
    if-nez v12, :cond_b

    .line 477
    .line 478
    move-object v5, v10

    .line 479
    goto :goto_a

    .line 480
    :cond_b
    iget-object v5, v5, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 481
    .line 482
    :goto_a
    iget-object v15, v15, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 483
    .line 484
    iget-boolean v1, v6, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 485
    .line 486
    if-nez v1, :cond_d

    .line 487
    .line 488
    if-eqz v13, :cond_c

    .line 489
    .line 490
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    const/16 v16, 0x1

    .line 495
    .line 496
    add-int/lit8 v1, v1, -0x1

    .line 497
    .line 498
    if-ne v13, v1, :cond_d

    .line 499
    .line 500
    :cond_c
    const/4 v1, 0x1

    .line 501
    goto :goto_b

    .line 502
    :cond_d
    const/4 v1, 0x0

    .line 503
    :goto_b
    invoke-virtual {v5, v10}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-eqz v5, :cond_e

    .line 508
    .line 509
    invoke-virtual {v15, v10}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-eqz v5, :cond_e

    .line 514
    .line 515
    if-nez v1, :cond_e

    .line 516
    .line 517
    add-int/lit8 v14, v14, 0x2

    .line 518
    .line 519
    goto :goto_c

    .line 520
    :cond_e
    add-int/lit8 v14, v14, 0x1

    .line 521
    .line 522
    :goto_c
    add-int/lit8 v13, v13, -0x1

    .line 523
    .line 524
    move-object/from16 v1, p1

    .line 525
    .line 526
    move/from16 v5, p2

    .line 527
    .line 528
    const/4 v10, 0x0

    .line 529
    goto :goto_8

    .line 530
    :cond_f
    iget-object v1, v7, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 531
    .line 532
    if-eqz v1, :cond_11

    .line 533
    .line 534
    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 535
    .line 536
    check-cast v1, Ljava/util/ArrayList;

    .line 537
    .line 538
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-eq v1, v14, :cond_10

    .line 543
    .line 544
    goto :goto_d

    .line 545
    :cond_10
    const/4 v11, 0x0

    .line 546
    goto :goto_f

    .line 547
    :cond_11
    :goto_d
    new-instance v1, Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-direct {v1, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 550
    .line 551
    .line 552
    const/4 v5, 0x0

    .line 553
    :goto_e
    if-ge v5, v14, :cond_12

    .line 554
    .line 555
    new-instance v10, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 556
    .line 557
    invoke-direct {v10}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    add-int/lit8 v5, v5, 0x1

    .line 564
    .line 565
    goto :goto_e

    .line 566
    :cond_12
    new-instance v5, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 567
    .line 568
    new-instance v10, Landroid/graphics/PointF;

    .line 569
    .line 570
    const/4 v11, 0x0

    .line 571
    invoke-direct {v10, v11, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 572
    .line 573
    .line 574
    const/4 v11, 0x0

    .line 575
    invoke-direct {v5, v10, v11, v1}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    .line 576
    .line 577
    .line 578
    iput-object v5, v7, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 579
    .line 580
    :goto_f
    iget-object v1, v7, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 581
    .line 582
    iput-boolean v12, v1, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 583
    .line 584
    iget-object v5, v6, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 585
    .line 586
    iget v7, v5, Landroid/graphics/PointF;->x:F

    .line 587
    .line 588
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 589
    .line 590
    invoke-virtual {v1, v7, v5}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 591
    .line 592
    .line 593
    iget-object v5, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 594
    .line 595
    iget-boolean v7, v6, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 596
    .line 597
    move v10, v11

    .line 598
    move v12, v10

    .line 599
    :goto_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 600
    .line 601
    .line 602
    move-result v13

    .line 603
    if-ge v10, v13, :cond_1a

    .line 604
    .line 605
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v13

    .line 609
    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 610
    .line 611
    add-int/lit8 v14, v10, -0x1

    .line 612
    .line 613
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 614
    .line 615
    .line 616
    move-result v15

    .line 617
    invoke-static {v14, v15}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 618
    .line 619
    .line 620
    move-result v14

    .line 621
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v14

    .line 625
    check-cast v14, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 626
    .line 627
    add-int/lit8 v15, v10, -0x2

    .line 628
    .line 629
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 630
    .line 631
    .line 632
    move-result v11

    .line 633
    invoke-static {v15, v11}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 634
    .line 635
    .line 636
    move-result v11

    .line 637
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v11

    .line 641
    check-cast v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 642
    .line 643
    if-nez v10, :cond_13

    .line 644
    .line 645
    if-nez v7, :cond_13

    .line 646
    .line 647
    iget-object v15, v6, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 648
    .line 649
    goto :goto_11

    .line 650
    :cond_13
    iget-object v15, v14, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 651
    .line 652
    :goto_11
    if-nez v10, :cond_14

    .line 653
    .line 654
    if-nez v7, :cond_14

    .line 655
    .line 656
    move-object/from16 v18, v3

    .line 657
    .line 658
    move/from16 v17, v7

    .line 659
    .line 660
    move-object v7, v15

    .line 661
    goto :goto_12

    .line 662
    :cond_14
    move/from16 v17, v7

    .line 663
    .line 664
    iget-object v7, v14, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 665
    .line 666
    move-object/from16 v18, v3

    .line 667
    .line 668
    :goto_12
    iget-object v3, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 669
    .line 670
    iget-object v11, v11, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 671
    .line 672
    move-object/from16 v19, v2

    .line 673
    .line 674
    iget-object v2, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 675
    .line 676
    iget-boolean v0, v6, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 677
    .line 678
    if-nez v0, :cond_16

    .line 679
    .line 680
    if-eqz v10, :cond_15

    .line 681
    .line 682
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    const/16 v16, 0x1

    .line 687
    .line 688
    add-int/lit8 v0, v0, -0x1

    .line 689
    .line 690
    if-ne v10, v0, :cond_17

    .line 691
    .line 692
    goto :goto_13

    .line 693
    :cond_15
    const/16 v16, 0x1

    .line 694
    .line 695
    :goto_13
    move/from16 v0, v16

    .line 696
    .line 697
    goto :goto_14

    .line 698
    :cond_16
    const/16 v16, 0x1

    .line 699
    .line 700
    :cond_17
    const/4 v0, 0x0

    .line 701
    :goto_14
    invoke-virtual {v7, v15}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v7

    .line 705
    if-eqz v7, :cond_19

    .line 706
    .line 707
    invoke-virtual {v3, v15}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result v3

    .line 711
    if-eqz v3, :cond_19

    .line 712
    .line 713
    if-nez v0, :cond_19

    .line 714
    .line 715
    iget v0, v15, Landroid/graphics/PointF;->x:F

    .line 716
    .line 717
    iget v3, v11, Landroid/graphics/PointF;->x:F

    .line 718
    .line 719
    sub-float v3, v0, v3

    .line 720
    .line 721
    iget v7, v15, Landroid/graphics/PointF;->y:F

    .line 722
    .line 723
    iget v13, v11, Landroid/graphics/PointF;->y:F

    .line 724
    .line 725
    sub-float v13, v7, v13

    .line 726
    .line 727
    iget v14, v2, Landroid/graphics/PointF;->x:F

    .line 728
    .line 729
    sub-float/2addr v14, v0

    .line 730
    iget v0, v2, Landroid/graphics/PointF;->y:F

    .line 731
    .line 732
    sub-float/2addr v0, v7

    .line 733
    move-object/from16 v20, v6

    .line 734
    .line 735
    float-to-double v6, v3

    .line 736
    move/from16 v21, v4

    .line 737
    .line 738
    float-to-double v3, v13

    .line 739
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 740
    .line 741
    .line 742
    move-result-wide v3

    .line 743
    double-to-float v3, v3

    .line 744
    float-to-double v6, v14

    .line 745
    float-to-double v13, v0

    .line 746
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 747
    .line 748
    .line 749
    move-result-wide v6

    .line 750
    double-to-float v0, v6

    .line 751
    div-float v3, v9, v3

    .line 752
    .line 753
    const/high16 v4, 0x3f000000    # 0.5f

    .line 754
    .line 755
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    div-float v0, v9, v0

    .line 760
    .line 761
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    iget v4, v15, Landroid/graphics/PointF;->x:F

    .line 766
    .line 767
    iget v6, v11, Landroid/graphics/PointF;->x:F

    .line 768
    .line 769
    invoke-static {v6, v4, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 770
    .line 771
    .line 772
    move-result v6

    .line 773
    iget v7, v15, Landroid/graphics/PointF;->y:F

    .line 774
    .line 775
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 776
    .line 777
    invoke-static {v11, v7, v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 778
    .line 779
    .line 780
    move-result v3

    .line 781
    iget v11, v2, Landroid/graphics/PointF;->x:F

    .line 782
    .line 783
    invoke-static {v11, v4, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 784
    .line 785
    .line 786
    move-result v11

    .line 787
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 788
    .line 789
    invoke-static {v2, v7, v0, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    sub-float v2, v6, v4

    .line 794
    .line 795
    const v13, 0x3f0d4952    # 0.5519f

    .line 796
    .line 797
    .line 798
    mul-float/2addr v2, v13

    .line 799
    sub-float v2, v6, v2

    .line 800
    .line 801
    sub-float v14, v3, v7

    .line 802
    .line 803
    mul-float/2addr v14, v13

    .line 804
    sub-float v14, v3, v14

    .line 805
    .line 806
    sub-float v4, v11, v4

    .line 807
    .line 808
    mul-float/2addr v4, v13

    .line 809
    sub-float v4, v11, v4

    .line 810
    .line 811
    sub-float v7, v0, v7

    .line 812
    .line 813
    mul-float/2addr v7, v13

    .line 814
    sub-float v7, v0, v7

    .line 815
    .line 816
    add-int/lit8 v13, v12, -0x1

    .line 817
    .line 818
    move-object v15, v5

    .line 819
    check-cast v15, Ljava/util/ArrayList;

    .line 820
    .line 821
    move-object/from16 v22, v8

    .line 822
    .line 823
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 824
    .line 825
    .line 826
    move-result v8

    .line 827
    invoke-static {v13, v8}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 828
    .line 829
    .line 830
    move-result v8

    .line 831
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v8

    .line 835
    check-cast v8, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 836
    .line 837
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v13

    .line 841
    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 842
    .line 843
    move/from16 v23, v9

    .line 844
    .line 845
    iget-object v9, v8, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 846
    .line 847
    invoke-virtual {v9, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 848
    .line 849
    .line 850
    iget-object v8, v8, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 851
    .line 852
    invoke-virtual {v8, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 853
    .line 854
    .line 855
    if-nez v10, :cond_18

    .line 856
    .line 857
    invoke-virtual {v1, v6, v3}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 858
    .line 859
    .line 860
    :cond_18
    iget-object v3, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 861
    .line 862
    invoke-virtual {v3, v2, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 863
    .line 864
    .line 865
    add-int/lit8 v2, v12, 0x1

    .line 866
    .line 867
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v2

    .line 871
    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 872
    .line 873
    iget-object v3, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 874
    .line 875
    invoke-virtual {v3, v4, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 876
    .line 877
    .line 878
    iget-object v3, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 879
    .line 880
    invoke-virtual {v3, v11, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 881
    .line 882
    .line 883
    iget-object v2, v2, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 884
    .line 885
    invoke-virtual {v2, v11, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 886
    .line 887
    .line 888
    add-int/lit8 v12, v12, 0x2

    .line 889
    .line 890
    goto :goto_15

    .line 891
    :cond_19
    move/from16 v21, v4

    .line 892
    .line 893
    move-object/from16 v20, v6

    .line 894
    .line 895
    move-object/from16 v22, v8

    .line 896
    .line 897
    move/from16 v23, v9

    .line 898
    .line 899
    add-int/lit8 v0, v12, -0x1

    .line 900
    .line 901
    move-object v2, v5

    .line 902
    check-cast v2, Ljava/util/ArrayList;

    .line 903
    .line 904
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 905
    .line 906
    .line 907
    move-result v3

    .line 908
    invoke-static {v0, v3}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    check-cast v0, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 917
    .line 918
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 923
    .line 924
    iget-object v3, v14, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 925
    .line 926
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 927
    .line 928
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 929
    .line 930
    iget-object v6, v0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 931
    .line 932
    invoke-virtual {v6, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 933
    .line 934
    .line 935
    iget-object v3, v14, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 936
    .line 937
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 938
    .line 939
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 940
    .line 941
    iget-object v0, v0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 942
    .line 943
    invoke-virtual {v0, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 944
    .line 945
    .line 946
    iget-object v0, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 947
    .line 948
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 949
    .line 950
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 951
    .line 952
    iget-object v2, v2, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 953
    .line 954
    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 955
    .line 956
    .line 957
    add-int/lit8 v12, v12, 0x1

    .line 958
    .line 959
    :goto_15
    add-int/lit8 v10, v10, 0x1

    .line 960
    .line 961
    move-object/from16 v0, p0

    .line 962
    .line 963
    move/from16 v7, v17

    .line 964
    .line 965
    move-object/from16 v3, v18

    .line 966
    .line 967
    move-object/from16 v2, v19

    .line 968
    .line 969
    move-object/from16 v6, v20

    .line 970
    .line 971
    move/from16 v4, v21

    .line 972
    .line 973
    move-object/from16 v8, v22

    .line 974
    .line 975
    move/from16 v9, v23

    .line 976
    .line 977
    const/4 v11, 0x0

    .line 978
    goto/16 :goto_10

    .line 979
    .line 980
    :cond_1a
    move-object/from16 v19, v2

    .line 981
    .line 982
    move-object/from16 v18, v3

    .line 983
    .line 984
    move/from16 v21, v4

    .line 985
    .line 986
    const/16 v16, 0x1

    .line 987
    .line 988
    move-object v6, v1

    .line 989
    :goto_16
    add-int/lit8 v4, v21, -0x1

    .line 990
    .line 991
    move-object/from16 v0, p0

    .line 992
    .line 993
    move-object/from16 v1, p1

    .line 994
    .line 995
    move/from16 v5, p2

    .line 996
    .line 997
    move-object/from16 v3, v18

    .line 998
    .line 999
    move-object/from16 v2, v19

    .line 1000
    .line 1001
    goto/16 :goto_6

    .line 1002
    .line 1003
    :cond_1b
    move-object/from16 v19, v2

    .line 1004
    .line 1005
    move-object/from16 v18, v3

    .line 1006
    .line 1007
    move-object/from16 v20, v6

    .line 1008
    .line 1009
    :goto_17
    move-object/from16 v0, p0

    .line 1010
    .line 1011
    goto :goto_18

    .line 1012
    :cond_1c
    move-object/from16 v19, v2

    .line 1013
    .line 1014
    move-object/from16 v18, v3

    .line 1015
    .line 1016
    goto :goto_17

    .line 1017
    :goto_18
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 1018
    .line 1019
    invoke-static {v6, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V

    .line 1020
    .line 1021
    .line 1022
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 1023
    .line 1024
    if-eqz v1, :cond_20

    .line 1025
    .line 1026
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackStartPath:Landroid/graphics/Path;

    .line 1027
    .line 1028
    if-nez v1, :cond_1d

    .line 1029
    .line 1030
    new-instance v1, Landroid/graphics/Path;

    .line 1031
    .line 1032
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1033
    .line 1034
    .line 1035
    iput-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackStartPath:Landroid/graphics/Path;

    .line 1036
    .line 1037
    new-instance v1, Landroid/graphics/Path;

    .line 1038
    .line 1039
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1040
    .line 1041
    .line 1042
    iput-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackEndPath:Landroid/graphics/Path;

    .line 1043
    .line 1044
    :cond_1d
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackStartPath:Landroid/graphics/Path;

    .line 1045
    .line 1046
    move-object/from16 v2, v19

    .line 1047
    .line 1048
    invoke-static {v2, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V

    .line 1049
    .line 1050
    .line 1051
    if-eqz v18, :cond_1e

    .line 1052
    .line 1053
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackEndPath:Landroid/graphics/Path;

    .line 1054
    .line 1055
    move-object/from16 v3, v18

    .line 1056
    .line 1057
    invoke-static {v3, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_19

    .line 1061
    :cond_1e
    move-object/from16 v3, v18

    .line 1062
    .line 1063
    :goto_19
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 1064
    .line 1065
    move-object/from16 v2, p1

    .line 1066
    .line 1067
    iget-object v4, v2, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 1068
    .line 1069
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 1070
    .line 1071
    .line 1072
    move-result v4

    .line 1073
    iget-object v5, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackStartPath:Landroid/graphics/Path;

    .line 1074
    .line 1075
    if-nez v3, :cond_1f

    .line 1076
    .line 1077
    move-object v6, v5

    .line 1078
    goto :goto_1a

    .line 1079
    :cond_1f
    iget-object v3, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackEndPath:Landroid/graphics/Path;

    .line 1080
    .line 1081
    move-object v6, v3

    .line 1082
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    .line 1083
    .line 1084
    .line 1085
    move-result v7

    .line 1086
    iget v8, v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    .line 1087
    .line 1088
    iget v2, v2, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 1089
    .line 1090
    move-object v0, v1

    .line 1091
    move v1, v2

    .line 1092
    move v2, v4

    .line 1093
    move-object v3, v5

    .line 1094
    move-object v4, v6

    .line 1095
    move/from16 v5, p2

    .line 1096
    .line 1097
    move v6, v7

    .line 1098
    move v7, v8

    .line 1099
    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    check-cast v0, Landroid/graphics/Path;

    .line 1104
    .line 1105
    goto :goto_1b

    .line 1106
    :cond_20
    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 1107
    .line 1108
    :goto_1b
    return-object v0
.end method
