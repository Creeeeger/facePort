.class public abstract Landroidx/constraintlayout/motion/utils/ViewOscillator;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

.field public mType:Ljava/lang/String;

.field public mVariesBy:I

.field public final mWavePoints:Ljava/util/ArrayList;

.field public mWaveShape:I

.field public mWaveString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWaveShape:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWaveString:Ljava/lang/String;

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mVariesBy:I

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 18
    .line 19
    return-void
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;
    .locals 12

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x6

    .line 7
    const/4 v4, 0x5

    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x3

    .line 10
    const/4 v7, 0x2

    .line 11
    const/4 v8, 0x1

    .line 12
    const/4 v9, 0x0

    .line 13
    const-string v10, "CUSTOM"

    .line 14
    .line 15
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v10

    .line 19
    if-eqz v10, :cond_0

    .line 20
    .line 21
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;

    .line 22
    .line 23
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    .line 24
    .line 25
    .line 26
    new-array v0, v8, [F

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;->mValue:[F

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    const/4 v10, -0x1

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    sparse-switch v11, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :sswitch_0
    const-string v11, "waveOffset"

    .line 42
    .line 43
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_1
    const/16 v10, 0xd

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :sswitch_1
    const-string v11, "alpha"

    .line 56
    .line 57
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_2

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_2
    const/16 v10, 0xc

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :sswitch_2
    const-string v11, "transitionPathRotate"

    .line 70
    .line 71
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_3

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_3
    const/16 v10, 0xb

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :sswitch_3
    const-string v11, "elevation"

    .line 84
    .line 85
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_4

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_4
    const/16 v10, 0xa

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :sswitch_4
    const-string v11, "rotation"

    .line 98
    .line 99
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-nez p0, :cond_5

    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_5
    move v10, v0

    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :sswitch_5
    const-string v11, "waveVariesBy"

    .line 111
    .line 112
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_6

    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_6
    move v10, v1

    .line 121
    goto/16 :goto_0

    .line 122
    .line 123
    :sswitch_6
    const-string v11, "scaleY"

    .line 124
    .line 125
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_7

    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :cond_7
    move v10, v2

    .line 134
    goto :goto_0

    .line 135
    :sswitch_7
    const-string v11, "scaleX"

    .line 136
    .line 137
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-nez p0, :cond_8

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    move v10, v3

    .line 145
    goto :goto_0

    .line 146
    :sswitch_8
    const-string v11, "progress"

    .line 147
    .line 148
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_9

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_9
    move v10, v4

    .line 156
    goto :goto_0

    .line 157
    :sswitch_9
    const-string v11, "translationZ"

    .line 158
    .line 159
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_a

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_a
    move v10, v5

    .line 167
    goto :goto_0

    .line 168
    :sswitch_a
    const-string v11, "translationY"

    .line 169
    .line 170
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-nez p0, :cond_b

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_b
    move v10, v6

    .line 178
    goto :goto_0

    .line 179
    :sswitch_b
    const-string v11, "translationX"

    .line 180
    .line 181
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-nez p0, :cond_c

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_c
    move v10, v7

    .line 189
    goto :goto_0

    .line 190
    :sswitch_c
    const-string v11, "rotationY"

    .line 191
    .line 192
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-nez p0, :cond_d

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_d
    move v10, v8

    .line 200
    goto :goto_0

    .line 201
    :sswitch_d
    const-string v11, "rotationX"

    .line 202
    .line 203
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    if-nez p0, :cond_e

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_e
    move v10, v9

    .line 211
    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 212
    .line 213
    .line 214
    const/4 p0, 0x0

    .line 215
    return-object p0

    .line 216
    :pswitch_0
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 217
    .line 218
    invoke-direct {p0, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 219
    .line 220
    .line 221
    return-object p0

    .line 222
    :pswitch_1
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 223
    .line 224
    invoke-direct {p0, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 225
    .line 226
    .line 227
    return-object p0

    .line 228
    :pswitch_2
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    .line 229
    .line 230
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    .line 231
    .line 232
    .line 233
    return-object p0

    .line 234
    :pswitch_3
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 235
    .line 236
    invoke-direct {p0, v8}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 237
    .line 238
    .line 239
    return-object p0

    .line 240
    :pswitch_4
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 241
    .line 242
    invoke-direct {p0, v7}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 243
    .line 244
    .line 245
    return-object p0

    .line 246
    :pswitch_5
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 247
    .line 248
    invoke-direct {p0, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 249
    .line 250
    .line 251
    return-object p0

    .line 252
    :pswitch_6
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 253
    .line 254
    invoke-direct {p0, v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 255
    .line 256
    .line 257
    return-object p0

    .line 258
    :pswitch_7
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 259
    .line 260
    invoke-direct {p0, v4}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 261
    .line 262
    .line 263
    return-object p0

    .line 264
    :pswitch_8
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;

    .line 265
    .line 266
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    .line 267
    .line 268
    .line 269
    iput-boolean v9, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    .line 270
    .line 271
    return-object p0

    .line 272
    :pswitch_9
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 273
    .line 274
    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 275
    .line 276
    .line 277
    return-object p0

    .line 278
    :pswitch_a
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 279
    .line 280
    invoke-direct {p0, v1}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 281
    .line 282
    .line 283
    return-object p0

    .line 284
    :pswitch_b
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 285
    .line 286
    invoke-direct {p0, v2}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 287
    .line 288
    .line 289
    return-object p0

    .line 290
    :pswitch_c
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 291
    .line 292
    invoke-direct {p0, v5}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 293
    .line 294
    .line 295
    return-object p0

    .line 296
    :pswitch_d
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    .line 297
    .line 298
    invoke-direct {p0, v6}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>(I)V

    .line 299
    .line 300
    .line 301
    return-object p0

    .line 302
    nop

    .line 303
    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2f893320 -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final get(F)F
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    float-to-double v4, p1

    .line 11
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 12
    .line 13
    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    .line 20
    .line 21
    aget v4, v4, v3

    .line 22
    .line 23
    float-to-double v4, v4

    .line 24
    aput-wide v4, v0, v3

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    .line 27
    .line 28
    aget v4, v4, v3

    .line 29
    .line 30
    float-to-double v4, v4

    .line 31
    aput-wide v4, v0, v2

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 34
    .line 35
    aget v4, v4, v3

    .line 36
    .line 37
    float-to-double v4, v4

    .line 38
    aput-wide v4, v0, v1

    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 41
    .line 42
    aget-wide v3, v0, v3

    .line 43
    .line 44
    aget-wide v5, v0, v2

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 47
    .line 48
    float-to-double v7, p1

    .line 49
    invoke-virtual {v0, v7, v8, v5, v6}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 54
    .line 55
    aget-wide p0, p0, v1

    .line 56
    .line 57
    mul-double/2addr v5, p0

    .line 58
    add-double/2addr v5, v3

    .line 59
    double-to-float p0, v5

    .line 60
    return p0
.end method

.method public final getSlope(F)F
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    const-wide/16 v6, 0x0

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    float-to-double v8, v1

    .line 17
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 18
    .line 19
    invoke-virtual {v2, v8, v9, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 23
    .line 24
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 25
    .line 26
    invoke-virtual {v2, v8, v9, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 31
    .line 32
    aput-wide v6, v2, v5

    .line 33
    .line 34
    aput-wide v6, v2, v3

    .line 35
    .line 36
    aput-wide v6, v2, v4

    .line 37
    .line 38
    :goto_0
    float-to-double v1, v1

    .line 39
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 40
    .line 41
    aget-wide v8, v8, v3

    .line 42
    .line 43
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 44
    .line 45
    invoke-virtual {v10, v1, v2, v8, v9}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getValue(DD)D

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 50
    .line 51
    aget-wide v11, v11, v3

    .line 52
    .line 53
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 54
    .line 55
    aget-wide v13, v13, v3

    .line 56
    .line 57
    invoke-virtual {v10, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v15

    .line 61
    add-double/2addr v15, v11

    .line 62
    cmpg-double v11, v1, v6

    .line 63
    .line 64
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 65
    .line 66
    if-gtz v11, :cond_1

    .line 67
    .line 68
    move-wide v4, v6

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    cmpl-double v11, v1, v17

    .line 71
    .line 72
    if-ltz v11, :cond_2

    .line 73
    .line 74
    move-wide/from16 v4, v17

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v11, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 78
    .line 79
    invoke-static {v11, v1, v2}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-gez v11, :cond_3

    .line 84
    .line 85
    neg-int v11, v11

    .line 86
    sub-int/2addr v11, v3

    .line 87
    :cond_3
    iget-object v3, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 88
    .line 89
    aget v12, v3, v11

    .line 90
    .line 91
    add-int/lit8 v19, v11, -0x1

    .line 92
    .line 93
    aget v3, v3, v19

    .line 94
    .line 95
    sub-float/2addr v12, v3

    .line 96
    float-to-double v6, v12

    .line 97
    iget-object v12, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 98
    .line 99
    aget-wide v20, v12, v11

    .line 100
    .line 101
    aget-wide v11, v12, v19

    .line 102
    .line 103
    sub-double v20, v20, v11

    .line 104
    .line 105
    div-double v6, v6, v20

    .line 106
    .line 107
    mul-double/2addr v1, v6

    .line 108
    float-to-double v4, v3

    .line 109
    mul-double/2addr v6, v11

    .line 110
    sub-double/2addr v4, v6

    .line 111
    add-double/2addr v4, v1

    .line 112
    :goto_1
    add-double/2addr v4, v13

    .line 113
    iget v1, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    .line 114
    .line 115
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 121
    .line 122
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    .line 123
    .line 124
    packed-switch v1, :pswitch_data_0

    .line 125
    .line 126
    .line 127
    mul-double/2addr v4, v2

    .line 128
    mul-double/2addr v2, v15

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    :goto_2
    mul-double v6, v1, v4

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :pswitch_0
    iget-object v1, v10, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 137
    .line 138
    rem-double v2, v15, v17

    .line 139
    .line 140
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D)D

    .line 141
    .line 142
    .line 143
    move-result-wide v6

    .line 144
    goto :goto_4

    .line 145
    :pswitch_1
    mul-double/2addr v4, v11

    .line 146
    mul-double/2addr v15, v11

    .line 147
    add-double/2addr v15, v6

    .line 148
    rem-double/2addr v15, v11

    .line 149
    sub-double/2addr v15, v6

    .line 150
    mul-double v6, v15, v4

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :pswitch_2
    const-wide v6, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    mul-double/2addr v6, v4

    .line 159
    mul-double/2addr v2, v15

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    :goto_3
    mul-double/2addr v6, v1

    .line 165
    goto :goto_4

    .line 166
    :pswitch_3
    neg-double v1, v4

    .line 167
    goto :goto_3

    .line 168
    :pswitch_4
    mul-double/2addr v6, v4

    .line 169
    goto :goto_4

    .line 170
    :pswitch_5
    mul-double/2addr v4, v11

    .line 171
    mul-double/2addr v15, v11

    .line 172
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 173
    .line 174
    add-double/2addr v15, v1

    .line 175
    rem-double/2addr v15, v11

    .line 176
    sub-double/2addr v15, v6

    .line 177
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->signum(D)D

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    goto :goto_2

    .line 182
    :pswitch_6
    const-wide/16 v6, 0x0

    .line 183
    .line 184
    :goto_4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 185
    .line 186
    const/4 v2, 0x0

    .line 187
    aget-wide v2, v1, v2

    .line 188
    .line 189
    const/4 v4, 0x2

    .line 190
    aget-wide v10, v1, v4

    .line 191
    .line 192
    mul-double/2addr v8, v10

    .line 193
    add-double/2addr v8, v2

    .line 194
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 195
    .line 196
    aget-wide v0, v0, v4

    .line 197
    .line 198
    mul-double/2addr v6, v0

    .line 199
    add-double/2addr v6, v8

    .line 200
    double-to-float v0, v6

    .line 201
    return v0

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustom(Landroidx/constraintlayout/widget/ConstraintAttribute;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public final setup()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$1;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    .line 21
    .line 22
    new-array v2, v1, [D

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    new-array v4, v3, [I

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    const/4 v6, 0x3

    .line 29
    aput v6, v4, v5

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    aput v1, v4, v7

    .line 33
    .line 34
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, [[D

    .line 41
    .line 42
    new-instance v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 43
    .line 44
    iget v9, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWaveShape:I

    .line 45
    .line 46
    iget-object v10, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWaveString:Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 52
    .line 53
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    new-array v12, v7, [F

    .line 57
    .line 58
    iput-object v12, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 59
    .line 60
    new-array v12, v7, [D

    .line 61
    .line 62
    iput-object v12, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 63
    .line 64
    iput-object v11, v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 65
    .line 66
    iput v9, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    .line 67
    .line 68
    if-eqz v10, :cond_4

    .line 69
    .line 70
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    div-int/2addr v9, v3

    .line 75
    new-array v9, v9, [D

    .line 76
    .line 77
    const/16 v14, 0x28

    .line 78
    .line 79
    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(I)I

    .line 80
    .line 81
    .line 82
    move-result v14

    .line 83
    add-int/2addr v14, v5

    .line 84
    const/16 v15, 0x2c

    .line 85
    .line 86
    invoke-virtual {v10, v15, v14}, Ljava/lang/String;->indexOf(II)I

    .line 87
    .line 88
    .line 89
    move-result v16

    .line 90
    move/from16 v17, v7

    .line 91
    .line 92
    move/from16 v7, v16

    .line 93
    .line 94
    :goto_0
    const/4 v12, -0x1

    .line 95
    if-eq v7, v12, :cond_1

    .line 96
    .line 97
    invoke-virtual {v10, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    add-int/lit8 v13, v17, 0x1

    .line 106
    .line 107
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 108
    .line 109
    .line 110
    move-result-wide v20

    .line 111
    aput-wide v20, v9, v17

    .line 112
    .line 113
    add-int/lit8 v14, v7, 0x1

    .line 114
    .line 115
    invoke-virtual {v10, v15, v14}, Ljava/lang/String;->indexOf(II)I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    move/from16 v17, v13

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    const/16 v7, 0x29

    .line 123
    .line 124
    invoke-virtual {v10, v7, v14}, Ljava/lang/String;->indexOf(II)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-virtual {v10, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    add-int/lit8 v10, v17, 0x1

    .line 137
    .line 138
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 139
    .line 140
    .line 141
    move-result-wide v12

    .line 142
    aput-wide v12, v9, v17

    .line 143
    .line 144
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    array-length v9, v7

    .line 149
    mul-int/2addr v9, v6

    .line 150
    sub-int/2addr v9, v3

    .line 151
    array-length v10, v7

    .line 152
    sub-int/2addr v10, v5

    .line 153
    int-to-double v12, v10

    .line 154
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 155
    .line 156
    div-double v12, v14, v12

    .line 157
    .line 158
    new-array v14, v3, [I

    .line 159
    .line 160
    aput v5, v14, v5

    .line 161
    .line 162
    const/16 v16, 0x0

    .line 163
    .line 164
    aput v9, v14, v16

    .line 165
    .line 166
    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 167
    .line 168
    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    check-cast v14, [[D

    .line 173
    .line 174
    new-array v9, v9, [D

    .line 175
    .line 176
    move/from16 v15, v16

    .line 177
    .line 178
    :goto_1
    array-length v6, v7

    .line 179
    if-ge v15, v6, :cond_3

    .line 180
    .line 181
    aget-wide v20, v7, v15

    .line 182
    .line 183
    add-int v6, v15, v10

    .line 184
    .line 185
    aget-object v22, v14, v6

    .line 186
    .line 187
    aput-wide v20, v22, v16

    .line 188
    .line 189
    move-object/from16 v23, v4

    .line 190
    .line 191
    int-to-double v3, v15

    .line 192
    mul-double/2addr v3, v12

    .line 193
    aput-wide v3, v9, v6

    .line 194
    .line 195
    if-lez v15, :cond_2

    .line 196
    .line 197
    mul-int/lit8 v6, v10, 0x2

    .line 198
    .line 199
    add-int/2addr v6, v15

    .line 200
    aget-object v24, v14, v6

    .line 201
    .line 202
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 203
    .line 204
    add-double v25, v20, v18

    .line 205
    .line 206
    aput-wide v25, v24, v16

    .line 207
    .line 208
    add-double v24, v3, v18

    .line 209
    .line 210
    aput-wide v24, v9, v6

    .line 211
    .line 212
    add-int/lit8 v6, v15, -0x1

    .line 213
    .line 214
    aget-object v24, v14, v6

    .line 215
    .line 216
    sub-double v20, v20, v18

    .line 217
    .line 218
    sub-double v20, v20, v12

    .line 219
    .line 220
    aput-wide v20, v24, v16

    .line 221
    .line 222
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    .line 223
    .line 224
    add-double v3, v3, v20

    .line 225
    .line 226
    sub-double/2addr v3, v12

    .line 227
    aput-wide v3, v9, v6

    .line 228
    .line 229
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 230
    .line 231
    move-object/from16 v4, v23

    .line 232
    .line 233
    const/4 v3, 0x2

    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_3
    move-object/from16 v23, v4

    .line 238
    .line 239
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 240
    .line 241
    invoke-direct {v3, v9, v14}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    .line 242
    .line 243
    .line 244
    iput-object v3, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_4
    move-object/from16 v23, v4

    .line 248
    .line 249
    :goto_2
    new-array v3, v1, [F

    .line 250
    .line 251
    iput-object v3, v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 252
    .line 253
    new-array v3, v1, [D

    .line 254
    .line 255
    iput-object v3, v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 256
    .line 257
    new-array v3, v1, [F

    .line 258
    .line 259
    iput-object v3, v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 260
    .line 261
    new-array v3, v1, [F

    .line 262
    .line 263
    iput-object v3, v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    .line 264
    .line 265
    new-array v3, v1, [F

    .line 266
    .line 267
    iput-object v3, v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    .line 268
    .line 269
    new-array v1, v1, [F

    .line 270
    .line 271
    iput-object v8, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 272
    .line 273
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const/4 v3, 0x0

    .line 280
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_5

    .line 285
    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    .line 291
    .line 292
    iget v6, v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPeriod:F

    .line 293
    .line 294
    float-to-double v7, v6

    .line 295
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    mul-double/2addr v7, v9

    .line 301
    aput-wide v7, v2, v3

    .line 302
    .line 303
    aget-object v7, v23, v3

    .line 304
    .line 305
    iget v8, v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    .line 306
    .line 307
    float-to-double v9, v8

    .line 308
    const/4 v11, 0x0

    .line 309
    aput-wide v9, v7, v11

    .line 310
    .line 311
    iget v9, v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mOffset:F

    .line 312
    .line 313
    float-to-double v10, v9

    .line 314
    aput-wide v10, v7, v5

    .line 315
    .line 316
    iget v10, v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPhase:F

    .line 317
    .line 318
    float-to-double v11, v10

    .line 319
    const/4 v13, 0x2

    .line 320
    aput-wide v11, v7, v13

    .line 321
    .line 322
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 323
    .line 324
    iget v4, v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 325
    .line 326
    int-to-double v11, v4

    .line 327
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 328
    .line 329
    div-double/2addr v11, v13

    .line 330
    iget-object v4, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 331
    .line 332
    aput-wide v11, v4, v3

    .line 333
    .line 334
    iget-object v4, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 335
    .line 336
    aput v6, v4, v3

    .line 337
    .line 338
    iget-object v4, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    .line 339
    .line 340
    aput v9, v4, v3

    .line 341
    .line 342
    iget-object v4, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    .line 343
    .line 344
    aput v10, v4, v3

    .line 345
    .line 346
    iget-object v4, v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 347
    .line 348
    aput v8, v4, v3

    .line 349
    .line 350
    add-int/lit8 v3, v3, 0x1

    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_5
    iget-object v0, v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mCycleOscillator:Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;

    .line 354
    .line 355
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 356
    .line 357
    array-length v3, v1

    .line 358
    const/4 v4, 0x2

    .line 359
    new-array v6, v4, [I

    .line 360
    .line 361
    const/4 v7, 0x3

    .line 362
    aput v7, v6, v5

    .line 363
    .line 364
    const/4 v7, 0x0

    .line 365
    aput v3, v6, v7

    .line 366
    .line 367
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 368
    .line 369
    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    check-cast v3, [[D

    .line 374
    .line 375
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 376
    .line 377
    array-length v7, v6

    .line 378
    add-int/2addr v7, v4

    .line 379
    new-array v7, v7, [D

    .line 380
    .line 381
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 382
    .line 383
    array-length v7, v6

    .line 384
    add-int/2addr v7, v4

    .line 385
    new-array v4, v7, [D

    .line 386
    .line 387
    iput-object v4, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 388
    .line 389
    const/4 v4, 0x0

    .line 390
    aget-wide v7, v1, v4

    .line 391
    .line 392
    const-wide/16 v9, 0x0

    .line 393
    .line 394
    cmpl-double v7, v7, v9

    .line 395
    .line 396
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 397
    .line 398
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/core/motion/utils/Oscillator;

    .line 399
    .line 400
    if-lez v7, :cond_6

    .line 401
    .line 402
    aget v7, v8, v4

    .line 403
    .line 404
    invoke-virtual {v11, v9, v10, v7}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 405
    .line 406
    .line 407
    :cond_6
    array-length v4, v1

    .line 408
    sub-int/2addr v4, v5

    .line 409
    aget-wide v12, v1, v4

    .line 410
    .line 411
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 412
    .line 413
    cmpg-double v7, v12, v14

    .line 414
    .line 415
    if-gez v7, :cond_7

    .line 416
    .line 417
    aget v4, v8, v4

    .line 418
    .line 419
    invoke-virtual {v11, v14, v15, v4}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 420
    .line 421
    .line 422
    :cond_7
    const/4 v4, 0x0

    .line 423
    :goto_4
    array-length v7, v3

    .line 424
    if-ge v4, v7, :cond_8

    .line 425
    .line 426
    aget-object v7, v3, v4

    .line 427
    .line 428
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mOffsetArr:[F

    .line 429
    .line 430
    aget v12, v12, v4

    .line 431
    .line 432
    float-to-double v12, v12

    .line 433
    const/4 v14, 0x0

    .line 434
    aput-wide v12, v7, v14

    .line 435
    .line 436
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mPhaseArr:[F

    .line 437
    .line 438
    aget v12, v12, v4

    .line 439
    .line 440
    float-to-double v12, v12

    .line 441
    aput-wide v12, v7, v5

    .line 442
    .line 443
    aget v12, v6, v4

    .line 444
    .line 445
    float-to-double v12, v12

    .line 446
    const/4 v14, 0x2

    .line 447
    aput-wide v12, v7, v14

    .line 448
    .line 449
    aget-wide v12, v1, v4

    .line 450
    .line 451
    aget v7, v8, v4

    .line 452
    .line 453
    invoke-virtual {v11, v12, v13, v7}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->addPoint(DF)V

    .line 454
    .line 455
    .line 456
    add-int/lit8 v4, v4, 0x1

    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_8
    move-wide v6, v9

    .line 460
    const/4 v4, 0x0

    .line 461
    :goto_5
    iget-object v8, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 462
    .line 463
    array-length v12, v8

    .line 464
    if-ge v4, v12, :cond_9

    .line 465
    .line 466
    aget v8, v8, v4

    .line 467
    .line 468
    float-to-double v12, v8

    .line 469
    add-double/2addr v6, v12

    .line 470
    add-int/lit8 v4, v4, 0x1

    .line 471
    .line 472
    goto :goto_5

    .line 473
    :cond_9
    move v4, v5

    .line 474
    move-wide v12, v9

    .line 475
    :goto_6
    iget-object v8, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 476
    .line 477
    array-length v14, v8

    .line 478
    const/high16 v15, 0x40000000    # 2.0f

    .line 479
    .line 480
    if-ge v4, v14, :cond_a

    .line 481
    .line 482
    add-int/lit8 v14, v4, -0x1

    .line 483
    .line 484
    aget v17, v8, v14

    .line 485
    .line 486
    aget v8, v8, v4

    .line 487
    .line 488
    add-float v17, v17, v8

    .line 489
    .line 490
    div-float v8, v17, v15

    .line 491
    .line 492
    iget-object v15, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 493
    .line 494
    aget-wide v17, v15, v4

    .line 495
    .line 496
    aget-wide v14, v15, v14

    .line 497
    .line 498
    sub-double v17, v17, v14

    .line 499
    .line 500
    float-to-double v14, v8

    .line 501
    mul-double v17, v17, v14

    .line 502
    .line 503
    add-double v12, v17, v12

    .line 504
    .line 505
    add-int/lit8 v4, v4, 0x1

    .line 506
    .line 507
    goto :goto_6

    .line 508
    :cond_a
    const/4 v4, 0x0

    .line 509
    :goto_7
    iget-object v8, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 510
    .line 511
    array-length v14, v8

    .line 512
    if-ge v4, v14, :cond_b

    .line 513
    .line 514
    aget v14, v8, v4

    .line 515
    .line 516
    div-double v9, v6, v12

    .line 517
    .line 518
    double-to-float v9, v9

    .line 519
    mul-float/2addr v14, v9

    .line 520
    aput v14, v8, v4

    .line 521
    .line 522
    add-int/lit8 v4, v4, 0x1

    .line 523
    .line 524
    const-wide/16 v9, 0x0

    .line 525
    .line 526
    goto :goto_7

    .line 527
    :cond_b
    iget-object v4, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    .line 528
    .line 529
    const/4 v6, 0x0

    .line 530
    const-wide/16 v7, 0x0

    .line 531
    .line 532
    aput-wide v7, v4, v6

    .line 533
    .line 534
    move v4, v5

    .line 535
    :goto_8
    iget-object v6, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 536
    .line 537
    array-length v7, v6

    .line 538
    if-ge v4, v7, :cond_c

    .line 539
    .line 540
    add-int/lit8 v7, v4, -0x1

    .line 541
    .line 542
    aget v8, v6, v7

    .line 543
    .line 544
    aget v6, v6, v4

    .line 545
    .line 546
    add-float/2addr v8, v6

    .line 547
    div-float/2addr v8, v15

    .line 548
    iget-object v6, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 549
    .line 550
    aget-wide v9, v6, v4

    .line 551
    .line 552
    aget-wide v12, v6, v7

    .line 553
    .line 554
    sub-double/2addr v9, v12

    .line 555
    iget-object v6, v11, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    .line 556
    .line 557
    aget-wide v12, v6, v7

    .line 558
    .line 559
    float-to-double v7, v8

    .line 560
    mul-double/2addr v9, v7

    .line 561
    add-double/2addr v9, v12

    .line 562
    aput-wide v9, v6, v4

    .line 563
    .line 564
    add-int/lit8 v4, v4, 0x1

    .line 565
    .line 566
    goto :goto_8

    .line 567
    :cond_c
    array-length v4, v1

    .line 568
    if-le v4, v5, :cond_d

    .line 569
    .line 570
    const/4 v4, 0x0

    .line 571
    invoke-static {v4, v1, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 576
    .line 577
    :goto_9
    move-object/from16 v0, v23

    .line 578
    .line 579
    goto :goto_a

    .line 580
    :cond_d
    const/4 v4, 0x0

    .line 581
    const/4 v1, 0x0

    .line 582
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 583
    .line 584
    goto :goto_9

    .line 585
    :goto_a
    invoke-static {v4, v2, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 586
    .line 587
    .line 588
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mType:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/text/DecimalFormat;

    .line 4
    .line 5
    const-string v2, "##.##"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator;->mWavePoints:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "["

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v0, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " , "

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v0, v2, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$WavePoint;->mValue:F

    .line 52
    .line 53
    float-to-double v4, v0

    .line 54
    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "] "

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-object v0
.end method
