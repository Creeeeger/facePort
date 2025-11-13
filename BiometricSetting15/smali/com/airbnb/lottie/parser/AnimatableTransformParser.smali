.class public abstract Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v8, "sk"

    .line 2
    .line 3
    const-string v9, "sa"

    .line 4
    .line 5
    const-string v0, "a"

    .line 6
    .line 7
    const-string v1, "p"

    .line 8
    .line 9
    const-string v2, "s"

    .line 10
    .line 11
    const-string v3, "rz"

    .line 12
    .line 13
    const-string v4, "r"

    .line 14
    .line 15
    const-string v5, "o"

    .line 16
    .line 17
    const-string v6, "so"

    .line 18
    .line 19
    const-string v7, "eo"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 30
    .line 31
    const-string v0, "k"

    .line 32
    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 42
    .line 43
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    move v10, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v10, v9

    .line 18
    :goto_0
    if-eqz v10, :cond_1

    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v14, 0x0

    .line 28
    const/4 v15, 0x0

    .line 29
    const/16 v21, 0x0

    .line 30
    .line 31
    const/16 v22, 0x0

    .line 32
    .line 33
    const/16 v23, 0x0

    .line 34
    .line 35
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/high16 v3, 0x3f800000    # 1.0f

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v2, :cond_6

    .line 43
    .line 44
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    packed-switch v2, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_0
    invoke-static {v0, v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    goto :goto_1

    .line 65
    :pswitch_1
    invoke-static {v0, v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 66
    .line 67
    .line 68
    move-result-object v15

    .line 69
    goto :goto_1

    .line 70
    :pswitch_2
    invoke-static {v0, v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 71
    .line 72
    .line 73
    move-result-object v23

    .line 74
    goto :goto_1

    .line 75
    :pswitch_3
    invoke-static {v0, v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 76
    .line 77
    .line 78
    move-result-object v22

    .line 79
    goto :goto_1

    .line 80
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 81
    .line 82
    .line 83
    move-result-object v21

    .line 84
    goto :goto_1

    .line 85
    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    .line 86
    .line 87
    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :pswitch_6
    invoke-static {v0, v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v1, v6, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    iget-object v5, v6, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 103
    .line 104
    new-instance v3, Lcom/airbnb/lottie/value/Keyframe;

    .line 105
    .line 106
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    iget v1, v8, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object v17

    .line 120
    const/16 v18, 0x0

    .line 121
    .line 122
    const/16 v19, 0x0

    .line 123
    .line 124
    move-object v1, v3

    .line 125
    move-object/from16 v2, p1

    .line 126
    .line 127
    move-object v11, v3

    .line 128
    move-object/from16 v3, v16

    .line 129
    .line 130
    move-object v9, v5

    .line 131
    move-object/from16 v5, v18

    .line 132
    .line 133
    move-object/from16 v26, v6

    .line 134
    .line 135
    move/from16 v6, v19

    .line 136
    .line 137
    move-object/from16 v27, v7

    .line 138
    .line 139
    move-object/from16 v7, v17

    .line 140
    .line 141
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :goto_2
    const/4 v2, 0x0

    .line 148
    goto :goto_3

    .line 149
    :cond_2
    move-object v9, v6

    .line 150
    move-object/from16 v27, v7

    .line 151
    .line 152
    iget-object v1, v9, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 153
    .line 154
    const/4 v2, 0x0

    .line 155
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 160
    .line 161
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 162
    .line 163
    if-nez v1, :cond_3

    .line 164
    .line 165
    iget-object v11, v9, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 166
    .line 167
    new-instance v7, Lcom/airbnb/lottie/value/Keyframe;

    .line 168
    .line 169
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    iget v1, v8, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 178
    .line 179
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 180
    .line 181
    .line 182
    move-result-object v17

    .line 183
    const/4 v5, 0x0

    .line 184
    const/4 v6, 0x0

    .line 185
    move-object v1, v7

    .line 186
    move-object/from16 v2, p1

    .line 187
    .line 188
    move-object/from16 v26, v9

    .line 189
    .line 190
    move-object v9, v7

    .line 191
    move-object/from16 v7, v17

    .line 192
    .line 193
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 194
    .line 195
    .line 196
    const/4 v2, 0x0

    .line 197
    invoke-interface {v11, v2, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_3
    move-object/from16 v26, v9

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :goto_3
    move v9, v2

    .line 205
    move-object/from16 v1, v26

    .line 206
    .line 207
    move-object/from16 v7, v27

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :pswitch_7
    move-object/from16 v27, v7

    .line 212
    .line 213
    move v2, v9

    .line 214
    new-instance v14, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    .line 215
    .line 216
    sget-object v4, Lcom/airbnb/lottie/parser/ScaleXYParser;->INSTANCE:Lcom/airbnb/lottie/parser/ScaleXYParser;

    .line 217
    .line 218
    invoke-static {v0, v8, v3, v4, v2}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-direct {v14, v3}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    .line 223
    .line 224
    .line 225
    :goto_4
    move-object/from16 v7, v27

    .line 226
    .line 227
    :goto_5
    const/4 v9, 0x0

    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :pswitch_8
    move-object/from16 v27, v7

    .line 231
    .line 232
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 233
    .line 234
    .line 235
    move-result-object v13

    .line 236
    goto :goto_5

    .line 237
    :pswitch_9
    move-object/from16 v27, v7

    .line 238
    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 240
    .line 241
    .line 242
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_5

    .line 247
    .line 248
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 249
    .line 250
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_4

    .line 255
    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 257
    .line 258
    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    goto :goto_6

    .line 268
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_6
    move-object/from16 v27, v7

    .line 273
    .line 274
    if-eqz v10, :cond_7

    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 277
    .line 278
    .line 279
    :cond_7
    if-eqz v12, :cond_9

    .line 280
    .line 281
    invoke-virtual {v12}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->isStatic()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_8

    .line 286
    .line 287
    iget-object v0, v12, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    .line 288
    .line 289
    const/4 v2, 0x0

    .line 290
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 295
    .line 296
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v0, Landroid/graphics/PointF;

    .line 299
    .line 300
    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_8

    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_8
    move-object/from16 v17, v12

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_9
    :goto_7
    const/16 v17, 0x0

    .line 311
    .line 312
    :goto_8
    if-eqz v13, :cond_b

    .line 313
    .line 314
    instance-of v0, v13, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    .line 315
    .line 316
    if-nez v0, :cond_a

    .line 317
    .line 318
    invoke-interface {v13}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->isStatic()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_a

    .line 323
    .line 324
    invoke-interface {v13}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const/4 v2, 0x0

    .line 329
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 334
    .line 335
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v0, Landroid/graphics/PointF;

    .line 338
    .line 339
    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_a

    .line 344
    .line 345
    goto :goto_9

    .line 346
    :cond_a
    move-object/from16 v18, v13

    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_b
    :goto_9
    const/16 v18, 0x0

    .line 350
    .line 351
    :goto_a
    if-eqz v1, :cond_c

    .line 352
    .line 353
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_d

    .line 358
    .line 359
    iget-object v0, v1, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 360
    .line 361
    const/4 v2, 0x0

    .line 362
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 367
    .line 368
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v0, Ljava/lang/Float;

    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    cmpl-float v0, v0, v4

    .line 377
    .line 378
    if-nez v0, :cond_d

    .line 379
    .line 380
    :cond_c
    const/4 v1, 0x0

    .line 381
    :cond_d
    if-eqz v14, :cond_f

    .line 382
    .line 383
    invoke-virtual {v14}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_e

    .line 388
    .line 389
    iget-object v0, v14, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 390
    .line 391
    const/4 v2, 0x0

    .line 392
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 397
    .line 398
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 401
    .line 402
    iget v2, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 403
    .line 404
    cmpl-float v2, v2, v3

    .line 405
    .line 406
    if-nez v2, :cond_e

    .line 407
    .line 408
    iget v0, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 409
    .line 410
    cmpl-float v0, v0, v3

    .line 411
    .line 412
    if-nez v0, :cond_e

    .line 413
    .line 414
    goto :goto_b

    .line 415
    :cond_e
    move-object/from16 v19, v14

    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_f
    :goto_b
    const/16 v19, 0x0

    .line 419
    .line 420
    :goto_c
    if-eqz v15, :cond_11

    .line 421
    .line 422
    invoke-virtual {v15}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_10

    .line 427
    .line 428
    iget-object v0, v15, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 429
    .line 430
    const/4 v2, 0x0

    .line 431
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 436
    .line 437
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v0, Ljava/lang/Float;

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    cmpl-float v0, v0, v4

    .line 446
    .line 447
    if-nez v0, :cond_10

    .line 448
    .line 449
    goto :goto_d

    .line 450
    :cond_10
    move-object/from16 v24, v15

    .line 451
    .line 452
    move-object/from16 v7, v27

    .line 453
    .line 454
    goto :goto_e

    .line 455
    :cond_11
    :goto_d
    move-object/from16 v7, v27

    .line 456
    .line 457
    const/16 v24, 0x0

    .line 458
    .line 459
    :goto_e
    if-eqz v7, :cond_13

    .line 460
    .line 461
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_12

    .line 466
    .line 467
    iget-object v0, v7, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 468
    .line 469
    const/4 v2, 0x0

    .line 470
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 475
    .line 476
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v0, Ljava/lang/Float;

    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    cmpl-float v0, v0, v4

    .line 485
    .line 486
    if-nez v0, :cond_12

    .line 487
    .line 488
    goto :goto_f

    .line 489
    :cond_12
    move-object/from16 v25, v7

    .line 490
    .line 491
    goto :goto_10

    .line 492
    :cond_13
    :goto_f
    const/16 v25, 0x0

    .line 493
    .line 494
    :goto_10
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 495
    .line 496
    move-object/from16 v16, v0

    .line 497
    .line 498
    move-object/from16 v20, v1

    .line 499
    .line 500
    invoke-direct/range {v16 .. v25}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 501
    .line 502
    .line 503
    return-object v0

    .line 504
    nop

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
