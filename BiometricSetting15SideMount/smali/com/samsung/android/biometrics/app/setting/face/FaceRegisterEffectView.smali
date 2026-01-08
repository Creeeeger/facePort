.class public Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;
.super Landroid/view/View;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final INTP_CHECK_ICON_MOVING:Landroid/view/animation/PathInterpolator;

.field public static final INTP_COMPLETED_LINE_MOVING:Landroid/view/animation/PathInterpolator;

.field public static final INTP_COMPLETED_LINE_SCALE:Landroid/view/animation/PathInterpolator;

.field public static final INTP_COMPLETED_ROTATION:Landroid/view/animation/PathInterpolator;

.field public static final INTP_ERROR_MOVING:Landroid/view/animation/PathInterpolator;

.field public static final INTP_ERROR_STARTING:Landroid/view/animation/PathInterpolator;

.field public static final INTP_STARTING_ANIMATION:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final COLOR_BACKGROUND:I

.field public final COLOR_BLUR_MASK:I

.field public final COLOR_CHECK_ICON:I

.field public final COLOR_GREEN_MASK:I

.field public final COLOR_INNER_GUIDE_LINE:I

.field public final COLOR_PREVIEW_MASK:I

.field public final COLOR_PROGRESS_BASE_LINE:I

.field public final COLOR_PROGRESS_LINE:I

.field public final WIDTH_ERROR_PREVIEW_AREA_PERCENT:F

.field public final WIDTH_INNER_CIRCLE_AREA_PERCENT:F

.field public mCheckIconMoveDp:F

.field public mCompletionTimestamp:J

.field public mErrorState:I

.field public mErrorTimestamp:J

.field public mIsBlurMask:Z

.field public mIsErrorFinished:Z

.field public mIsErrorStarted:Z

.field public mIsPreviewMask:Z

.field public mIsPreviewStarting:Z

.field public mIsScanning:Z

.field public final mPath:Landroid/graphics/Path;

.field public final mPathCheckIcon:Landroid/graphics/Path;

.field public final mPntBackground:Landroid/graphics/Paint;

.field public final mPntBlurMask:Landroid/graphics/Paint;

.field public final mPntCheckIcon:Landroid/graphics/Paint;

.field public final mPntGreenMask:Landroid/graphics/Paint;

.field public final mPntInnerCircle:Landroid/graphics/Paint;

.field public final mPntPreviewMask:Landroid/graphics/Paint;

.field public final mPntProgressBaseLine:Landroid/graphics/Paint;

.field public final mPntProgressLine:Landroid/graphics/Paint;

.field public final mPntScanLine:Landroid/graphics/Paint;

.field public final mPntTraceLine:Landroid/graphics/Paint;

.field public mPreviewExpandSize:F

.field public mPreviewMaskTimestamp:J

.field public mProgress:F

.field public final mRotateMatrix:Landroid/graphics/Matrix;

.field public final mScanPathList:Ljava/util/ArrayList;

.field public mScanStartTimestamp:J

.field public mStartingTimestamp:J

.field public mState:I

.field public mStrokeWidth:F

.field public mTargetPreviewExpandSize:F

.field public mTargetProgress:F

.field public final mTracePathList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const v1, 0x3ea8f5c3    # 0.33f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const v3, 0x3e4ccccd    # 0.2f

    .line 8
    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_STARTING_ANIMATION:Landroid/view/animation/PathInterpolator;

    .line 16
    .line 17
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 18
    .line 19
    const v5, 0x3ee66666    # 0.45f

    .line 20
    .line 21
    .line 22
    const v6, 0x3f2b851f    # 0.67f

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v5, v3, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_LINE_SCALE:Landroid/view/animation/PathInterpolator;

    .line 29
    .line 30
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 31
    .line 32
    const/high16 v3, 0x3f000000    # 0.5f

    .line 33
    .line 34
    invoke-direct {v0, v3, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_LINE_MOVING:Landroid/view/animation/PathInterpolator;

    .line 38
    .line 39
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 40
    .line 41
    const v3, 0x3f68f5c3    # 0.91f

    .line 42
    .line 43
    .line 44
    const v5, 0x3e570a3d    # 0.21f

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v3, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_ROTATION:Landroid/view/animation/PathInterpolator;

    .line 51
    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 53
    .line 54
    const v3, 0x3ecccccd    # 0.4f

    .line 55
    .line 56
    .line 57
    const v5, 0x3e2e147b    # 0.17f

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v5, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_CHECK_ICON_MOVING:Landroid/view/animation/PathInterpolator;

    .line 64
    .line 65
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 66
    .line 67
    const v3, 0x3dcccccd    # 0.1f

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v5, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_ERROR_STARTING:Landroid/view/animation/PathInterpolator;

    .line 74
    .line 75
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 76
    .line 77
    const v4, 0x3e99999a    # 0.3f

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_ERROR_MOVING:Landroid/view/animation/PathInterpolator;

    .line 84
    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 10
    .line 11
    new-instance v3, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    .line 20
    .line 21
    new-instance v4, Landroid/graphics/Matrix;

    .line 22
    .line 23
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 27
    .line 28
    new-instance v4, Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    .line 34
    .line 35
    new-instance v4, Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    .line 41
    .line 42
    new-instance v4, Landroid/graphics/Paint;

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    .line 49
    .line 50
    new-instance v4, Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    .line 56
    .line 57
    new-instance v4, Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    .line 63
    .line 64
    new-instance v4, Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntGreenMask:Landroid/graphics/Paint;

    .line 70
    .line 71
    const-string v4, "M42,11l-20.3383,21l-13.6617,-14.1065"

    .line 72
    .line 73
    new-instance v6, Landroid/graphics/Path;

    .line 74
    .line 75
    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v7, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    move v11, v8

    .line 85
    const/4 v10, 0x1

    .line 86
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-ge v10, v12, :cond_11

    .line 91
    .line 92
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    const/16 v13, 0x45

    .line 97
    .line 98
    const/16 v14, 0x65

    .line 99
    .line 100
    if-ge v10, v12, :cond_2

    .line 101
    .line 102
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    add-int/lit8 v15, v12, -0x41

    .line 107
    .line 108
    add-int/lit8 v16, v12, -0x5a

    .line 109
    .line 110
    mul-int v16, v16, v15

    .line 111
    .line 112
    if-lez v16, :cond_0

    .line 113
    .line 114
    add-int/lit8 v15, v12, -0x61

    .line 115
    .line 116
    add-int/lit8 v16, v12, -0x7a

    .line 117
    .line 118
    mul-int v16, v16, v15

    .line 119
    .line 120
    if-gtz v16, :cond_1

    .line 121
    .line 122
    :cond_0
    if-eq v12, v14, :cond_1

    .line 123
    .line 124
    if-eq v12, v13, :cond_1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    :goto_2
    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-nez v12, :cond_10

    .line 143
    .line 144
    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    const/16 v15, 0x7a

    .line 149
    .line 150
    if-eq v12, v15, :cond_3

    .line 151
    .line 152
    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    const/16 v15, 0x5a

    .line 157
    .line 158
    if-ne v12, v15, :cond_4

    .line 159
    .line 160
    :cond_3
    move v2, v8

    .line 161
    goto/16 :goto_c

    .line 162
    .line 163
    :cond_4
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    new-array v12, v12, [F

    .line 168
    .line 169
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    move v2, v8

    .line 174
    const/4 v5, 0x1

    .line 175
    :goto_3
    if-ge v5, v15, :cond_d

    .line 176
    .line 177
    move v3, v5

    .line 178
    move/from16 v17, v8

    .line 179
    .line 180
    move/from16 v18, v17

    .line 181
    .line 182
    move/from16 v19, v18

    .line 183
    .line 184
    move/from16 v20, v19

    .line 185
    .line 186
    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-ge v3, v9, :cond_a

    .line 191
    .line 192
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    const/16 v8, 0x20

    .line 197
    .line 198
    if-eq v9, v8, :cond_8

    .line 199
    .line 200
    if-eq v9, v13, :cond_7

    .line 201
    .line 202
    if-eq v9, v14, :cond_7

    .line 203
    .line 204
    packed-switch v9, :pswitch_data_0

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :pswitch_0
    if-nez v18, :cond_5

    .line 209
    .line 210
    const/16 v17, 0x0

    .line 211
    .line 212
    const/16 v18, 0x1

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_5
    :goto_5
    const/16 v17, 0x0

    .line 216
    .line 217
    const/16 v19, 0x1

    .line 218
    .line 219
    const/16 v20, 0x1

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :pswitch_1
    if-eq v3, v5, :cond_6

    .line 223
    .line 224
    if-nez v17, :cond_6

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_6
    :goto_6
    const/16 v17, 0x0

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_7
    const/16 v17, 0x1

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_8
    :pswitch_2
    const/16 v17, 0x0

    .line 234
    .line 235
    const/16 v19, 0x1

    .line 236
    .line 237
    :goto_7
    if-eqz v19, :cond_9

    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 241
    .line 242
    const/4 v8, 0x0

    .line 243
    goto :goto_4

    .line 244
    :cond_a
    :goto_8
    if-ge v5, v3, :cond_b

    .line 245
    .line 246
    add-int/lit8 v8, v2, 0x1

    .line 247
    .line 248
    invoke-virtual {v11, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    aput v5, v12, v2

    .line 257
    .line 258
    move v2, v8

    .line 259
    goto :goto_9

    .line 260
    :catch_0
    move-exception v0

    .line 261
    goto :goto_b

    .line 262
    :cond_b
    :goto_9
    if-eqz v20, :cond_c

    .line 263
    .line 264
    move v5, v3

    .line 265
    :goto_a
    const/4 v3, 0x0

    .line 266
    const/4 v8, 0x0

    .line 267
    goto :goto_3

    .line 268
    :cond_c
    add-int/lit8 v5, v3, 0x1

    .line 269
    .line 270
    goto :goto_a

    .line 271
    :cond_d
    if-ltz v2, :cond_f

    .line 272
    .line 273
    array-length v3, v12

    .line 274
    if-ltz v3, :cond_e

    .line 275
    .line 276
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    new-array v2, v2, [F

    .line 281
    .line 282
    const/4 v5, 0x0

    .line 283
    invoke-static {v12, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    .line 285
    .line 286
    move-object v3, v2

    .line 287
    const/4 v2, 0x0

    .line 288
    goto :goto_d

    .line 289
    :cond_e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 290
    .line 291
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 296
    .line 297
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 298
    .line 299
    .line 300
    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 302
    .line 303
    const-string v2, "error in parsing \""

    .line 304
    .line 305
    const-string v3, "\""

    .line 306
    .line 307
    invoke-static {v2, v11, v3}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .line 313
    .line 314
    throw v1

    .line 315
    :goto_c
    new-array v3, v2, [F

    .line 316
    .line 317
    :goto_d
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    new-instance v2, Landroidx/core/graphics/PathParser$PathDataNode;

    .line 322
    .line 323
    invoke-direct {v2, v5, v3}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    :cond_10
    add-int/lit8 v2, v10, 0x1

    .line 330
    .line 331
    move v11, v10

    .line 332
    const/4 v3, 0x0

    .line 333
    const/4 v5, 0x1

    .line 334
    const/4 v8, 0x0

    .line 335
    move v10, v2

    .line 336
    const/4 v2, 0x0

    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_11
    sub-int/2addr v10, v11

    .line 340
    const/4 v2, 0x1

    .line 341
    if-ne v10, v2, :cond_12

    .line 342
    .line 343
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-ge v11, v2, :cond_12

    .line 348
    .line 349
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    const/4 v3, 0x0

    .line 354
    new-array v5, v3, [F

    .line 355
    .line 356
    new-instance v8, Landroidx/core/graphics/PathParser$PathDataNode;

    .line 357
    .line 358
    invoke-direct {v8, v2, v5}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    goto :goto_e

    .line 365
    :cond_12
    const/4 v3, 0x0

    .line 366
    :goto_e
    new-array v2, v3, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 367
    .line 368
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    check-cast v2, [Landroidx/core/graphics/PathParser$PathDataNode;

    .line 373
    .line 374
    :try_start_1
    invoke-static {v2, v6}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    .line 376
    .line 377
    iput-object v6, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPathCheckIcon:Landroid/graphics/Path;

    .line 378
    .line 379
    new-instance v2, Landroid/graphics/Paint;

    .line 380
    .line 381
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 382
    .line 383
    .line 384
    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    .line 385
    .line 386
    new-instance v2, Landroid/graphics/Paint;

    .line 387
    .line 388
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 389
    .line 390
    .line 391
    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBlurMask:Landroid/graphics/Paint;

    .line 392
    .line 393
    const-wide/16 v2, 0x0

    .line 394
    .line 395
    iput-wide v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    .line 396
    .line 397
    iput-wide v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewMaskTimestamp:J

    .line 398
    .line 399
    iput-wide v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    .line 400
    .line 401
    iput-wide v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    .line 402
    .line 403
    const/4 v4, 0x0

    .line 404
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    .line 405
    .line 406
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    .line 407
    .line 408
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    .line 409
    .line 410
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    .line 411
    .line 412
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCheckIconMoveDp:F

    .line 413
    .line 414
    const/4 v4, 0x0

    .line 415
    iput-boolean v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    .line 416
    .line 417
    iput-boolean v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    .line 418
    .line 419
    iput-boolean v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    .line 420
    .line 421
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    .line 422
    .line 423
    iput-boolean v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorFinished:Z

    .line 424
    .line 425
    iput-boolean v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsBlurMask:Z

    .line 426
    .line 427
    new-instance v4, Landroid/graphics/Paint;

    .line 428
    .line 429
    const/4 v5, 0x1

    .line 430
    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 431
    .line 432
    .line 433
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntScanLine:Landroid/graphics/Paint;

    .line 434
    .line 435
    new-instance v4, Landroid/graphics/Paint;

    .line 436
    .line 437
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 438
    .line 439
    .line 440
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntTraceLine:Landroid/graphics/Paint;

    .line 441
    .line 442
    new-instance v4, Ljava/util/ArrayList;

    .line 443
    .line 444
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .line 446
    .line 447
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    .line 448
    .line 449
    new-instance v4, Ljava/util/ArrayList;

    .line 450
    .line 451
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .line 453
    .line 454
    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    .line 455
    .line 456
    const/4 v4, 0x0

    .line 457
    iput-boolean v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    .line 458
    .line 459
    iput-wide v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanStartTimestamp:J

    .line 460
    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    const v3, 0x7f0700b5

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_INNER_CIRCLE_AREA_PERCENT:F

    .line 473
    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    const v3, 0x7f0700b4

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_ERROR_PREVIEW_AREA_PERCENT:F

    .line 486
    .line 487
    const v2, 0x7f060081

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_BACKGROUND:I

    .line 495
    .line 496
    const v2, 0x7f060067

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PREVIEW_MASK:I

    .line 504
    .line 505
    const v2, 0x7f060066

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_INNER_GUIDE_LINE:I

    .line 513
    .line 514
    const v2, 0x7f060062

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PROGRESS_BASE_LINE:I

    .line 522
    .line 523
    const v2, 0x7f060063

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    iput v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PROGRESS_LINE:I

    .line 531
    .line 532
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_GREEN_MASK:I

    .line 537
    .line 538
    const v2, 0x7f060061

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_CHECK_ICON:I

    .line 546
    .line 547
    const v2, 0x7f060065

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    iput v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_BLUR_MASK:I

    .line 555
    .line 556
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;

    .line 561
    .line 562
    invoke-direct {v2, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 566
    .line 567
    .line 568
    return-void

    .line 569
    :catch_1
    move-exception v0

    .line 570
    move-object v1, v0

    .line 571
    new-instance v0, Ljava/lang/RuntimeException;

    .line 572
    .line 573
    const-string v2, "Error in parsing "

    .line 574
    .line 575
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    .line 581
    .line 582
    throw v0

    .line 583
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTimePos(JJI)F
    .locals 2

    .line 1
    int-to-float p4, p4

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    sub-long/2addr v0, p0

    .line 7
    long-to-float p0, v0

    .line 8
    long-to-float p1, p2

    .line 9
    div-float/2addr p0, p1

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p4, p0}, Ljava/lang/Math;->min(FF)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method


# virtual methods
.method public final drawBackground(Landroid/graphics/Canvas;FF)V
    .locals 6

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/high16 p3, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p2, p3

    .line 8
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    .line 9
    .line 10
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    .line 11
    .line 12
    sub-float/2addr v0, v1

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const v1, 0x3c23d70a    # 0.01f

    .line 18
    .line 19
    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    .line 25
    .line 26
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    cmpg-float v1, v1, v2

    .line 30
    .line 31
    if-gez v1, :cond_0

    .line 32
    .line 33
    const v1, -0x445c28f6    # -0.005f

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const v1, 0x3ba3d70a    # 0.005f

    .line 38
    .line 39
    .line 40
    :goto_0
    add-float/2addr v0, v1

    .line 41
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    .line 45
    .line 46
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    .line 47
    .line 48
    :goto_1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_JDM_HAL:Z

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const v0, -0x42b33333    # -0.05f

    .line 53
    .line 54
    .line 55
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    .line 56
    .line 57
    :cond_2
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewExpandSize:F

    .line 58
    .line 59
    mul-float/2addr v0, p2

    .line 60
    add-float/2addr v0, p2

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    int-to-float v1, v1

    .line 76
    div-float/2addr v1, p3

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    int-to-float v2, v2

    .line 82
    div-float/2addr v2, p3

    .line 83
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 84
    .line 85
    invoke-virtual {p2, v1, v2, v0, p3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    int-to-float v3, p2

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    int-to-float v4, p2

    .line 103
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    const/4 v2, 0x0

    .line 107
    move-object v0, p1

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final drawCompletedEffect(Landroid/graphics/Canvas;FF)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    if-eq v2, v3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-wide v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    .line 12
    .line 13
    const-wide/16 v4, 0x258

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getTimePos(JJI)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sget-object v3, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_LINE_MOVING:Landroid/view/animation/PathInterpolator;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-wide v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    .line 27
    .line 28
    const-wide/16 v7, 0x96

    .line 29
    .line 30
    invoke-static {v4, v5, v7, v8, v6}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getTimePos(JJI)F

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    sget-object v5, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_LINE_SCALE:Landroid/view/animation/PathInterpolator;

    .line 35
    .line 36
    invoke-virtual {v5, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const v5, 0x3dcccccd    # 0.1f

    .line 41
    .line 42
    .line 43
    mul-float v9, p2, v5

    .line 44
    .line 45
    mul-float/2addr v9, v4

    .line 46
    mul-float v5, v5, p3

    .line 47
    .line 48
    mul-float/2addr v5, v4

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 50
    .line 51
    .line 52
    neg-float v4, v9

    .line 53
    const/high16 v10, 0x40000000    # 2.0f

    .line 54
    .line 55
    div-float/2addr v4, v10

    .line 56
    neg-float v11, v5

    .line 57
    div-float/2addr v11, v10

    .line 58
    invoke-virtual {v1, v4, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    .line 60
    .line 61
    add-float v4, p2, v9

    .line 62
    .line 63
    add-float v15, p3, v5

    .line 64
    .line 65
    mul-float/2addr v3, v4

    .line 66
    sub-float v5, v4, v3

    .line 67
    .line 68
    sget-object v9, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_COMPLETED_ROTATION:Landroid/view/animation/PathInterpolator;

    .line 69
    .line 70
    invoke-virtual {v9, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const/high16 v11, 0x42f00000    # 120.0f

    .line 75
    .line 76
    mul-float/2addr v9, v11

    .line 77
    const/high16 v11, 0x42700000    # 60.0f

    .line 78
    .line 79
    sub-float/2addr v9, v11

    .line 80
    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 81
    .line 82
    div-float/2addr v4, v10

    .line 83
    div-float v12, v15, v10

    .line 84
    .line 85
    invoke-virtual {v11, v9, v4, v12}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 86
    .line 87
    .line 88
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 91
    .line 92
    .line 93
    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    .line 94
    .line 95
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    sget-object v16, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 104
    .line 105
    const/4 v13, 0x0

    .line 106
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    .line 110
    .line 111
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPath:Landroid/graphics/Path;

    .line 117
    .line 118
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    .line 119
    .line 120
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    .line 125
    .line 126
    const/high16 v3, 0x3f800000    # 1.0f

    .line 127
    .line 128
    cmpg-float v2, v2, v3

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    if-gez v2, :cond_1

    .line 132
    .line 133
    move v2, v6

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    move v2, v4

    .line 136
    :goto_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(FF)F

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    div-float/2addr v5, v10

    .line 141
    iget-wide v11, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    .line 142
    .line 143
    invoke-static {v11, v12, v7, v8, v6}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getTimePos(JJI)F

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntGreenMask:Landroid/graphics/Paint;

    .line 148
    .line 149
    const/high16 v9, 0x42640000    # 57.0f

    .line 150
    .line 151
    mul-float/2addr v9, v7

    .line 152
    float-to-int v9, v9

    .line 153
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    .line 155
    .line 156
    div-float v8, p2, v10

    .line 157
    .line 158
    div-float v9, p3, v10

    .line 159
    .line 160
    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntGreenMask:Landroid/graphics/Paint;

    .line 161
    .line 162
    invoke-virtual {v1, v8, v9, v5, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 163
    .line 164
    .line 165
    cmpg-float v5, v7, v3

    .line 166
    .line 167
    if-gez v5, :cond_2

    .line 168
    .line 169
    move v5, v6

    .line 170
    goto :goto_1

    .line 171
    :cond_2
    move v5, v4

    .line 172
    :goto_1
    or-int/2addr v2, v5

    .line 173
    iget-wide v7, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    .line 174
    .line 175
    const-wide/16 v11, 0x190

    .line 176
    .line 177
    const/4 v5, 0x2

    .line 178
    invoke-static {v7, v8, v11, v12, v5}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getTimePos(JJI)F

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    iget v7, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCheckIconMoveDp:F

    .line 183
    .line 184
    sget-object v8, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_CHECK_ICON_MOVING:Landroid/view/animation/PathInterpolator;

    .line 185
    .line 186
    cmpl-float v3, v5, v3

    .line 187
    .line 188
    if-lez v3, :cond_3

    .line 189
    .line 190
    sub-float v3, v10, v5

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_3
    move v3, v5

    .line 194
    :goto_2
    invoke-virtual {v8, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    mul-float/2addr v3, v7

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    .line 201
    .line 202
    const/4 v7, 0x0

    .line 203
    invoke-virtual {v1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 204
    .line 205
    .line 206
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPathCheckIcon:Landroid/graphics/Path;

    .line 207
    .line 208
    iget-object v7, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    .line 209
    .line 210
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 214
    .line 215
    .line 216
    cmpg-float v1, v5, v10

    .line 217
    .line 218
    if-gez v1, :cond_4

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_4
    move v6, v4

    .line 222
    :goto_3
    or-int v1, v2, v6

    .line 223
    .line 224
    if-nez v1, :cond_5

    .line 225
    .line 226
    const/4 v1, 0x4

    .line 227
    iput v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 228
    .line 229
    :cond_5
    return-void
.end method

.method public final drawPreviewMask(Landroid/graphics/Canvas;FF)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v0, v1

    .line 13
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    .line 18
    .line 19
    if-eqz v3, :cond_6

    .line 20
    .line 21
    :cond_1
    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_JDM_HAL:Z

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    const v3, 0x3d4ccccd    # 0.05f

    .line 26
    .line 27
    .line 28
    mul-float/2addr v3, v0

    .line 29
    sub-float/2addr v0, v3

    .line 30
    :cond_2
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    const/high16 v5, 0x437f0000    # 255.0f

    .line 33
    .line 34
    const/16 v6, 0xff

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    div-float v2, p2, v1

    .line 39
    .line 40
    div-float v7, p3, v1

    .line 41
    .line 42
    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p1, v2, v7, v0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    iget-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    .line 52
    .line 53
    sub-long/2addr v7, v9

    .line 54
    const-wide/16 v9, 0x3e8

    .line 55
    .line 56
    sub-long/2addr v7, v9

    .line 57
    const-wide/16 v9, 0x190

    .line 58
    .line 59
    cmp-long v2, v7, v9

    .line 60
    .line 61
    if-gtz v2, :cond_5

    .line 62
    .line 63
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    long-to-float v2, v2

    .line 68
    mul-float/2addr v2, v5

    .line 69
    const/high16 v3, 0x43c80000    # 400.0f

    .line 70
    .line 71
    div-float/2addr v2, v3

    .line 72
    float-to-int v6, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    iget-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewMaskTimestamp:J

    .line 79
    .line 80
    sub-long/2addr v7, v9

    .line 81
    const-wide/16 v9, 0xfa

    .line 82
    .line 83
    cmp-long v2, v7, v9

    .line 84
    .line 85
    if-gtz v2, :cond_4

    .line 86
    .line 87
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    long-to-float v2, v2

    .line 92
    mul-float/2addr v2, v5

    .line 93
    const/high16 v3, 0x437a0000    # 250.0f

    .line 94
    .line 95
    div-float/2addr v2, v3

    .line 96
    float-to-int v2, v2

    .line 97
    sub-int/2addr v6, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    const/4 v6, 0x0

    .line 100
    iput-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    .line 101
    .line 102
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    .line 106
    .line 107
    div-float/2addr p2, v1

    .line 108
    div-float/2addr p3, v1

    .line 109
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    return-void
.end method

.method public final getErrorSizeDiff(F)F
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    const v4, 0x3d4ccccd    # 0.05f

    .line 12
    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-wide v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    .line 21
    .line 22
    sub-long/2addr v0, v5

    .line 23
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, 0x1c2

    .line 28
    .line 29
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    sget-object p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_ERROR_STARTING:Landroid/view/animation/PathInterpolator;

    .line 34
    .line 35
    long-to-float v0, v0

    .line 36
    const/high16 v1, 0x43e10000    # 450.0f

    .line 37
    .line 38
    div-float/2addr v0, v1

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    mul-float/2addr p0, p1

    .line 44
    mul-float/2addr p0, v4

    .line 45
    return p0

    .line 46
    :cond_1
    const/4 v5, 0x1

    .line 47
    if-ne v0, v5, :cond_2

    .line 48
    .line 49
    mul-float/2addr p1, v4

    .line 50
    return p1

    .line 51
    :cond_2
    const/4 v5, 0x2

    .line 52
    if-ne v0, v5, :cond_4

    .line 53
    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    iget-wide v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    .line 59
    .line 60
    sub-long/2addr v0, v6

    .line 61
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    const-wide/16 v2, 0x7d0

    .line 66
    .line 67
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    const-wide/16 v2, 0x3e8

    .line 72
    .line 73
    div-long v6, v0, v2

    .line 74
    .line 75
    long-to-int p0, v6

    .line 76
    rem-long/2addr v0, v2

    .line 77
    rem-int/2addr p0, v5

    .line 78
    if-nez p0, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sub-long v0, v2, v0

    .line 82
    .line 83
    :goto_0
    sget-object p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_ERROR_MOVING:Landroid/view/animation/PathInterpolator;

    .line 84
    .line 85
    long-to-float v0, v0

    .line 86
    long-to-float v1, v2

    .line 87
    div-float/2addr v0, v1

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    .line 94
    sub-float/2addr v0, p0

    .line 95
    mul-float/2addr v0, p1

    .line 96
    mul-float/2addr v0, v4

    .line 97
    return v0

    .line 98
    :cond_4
    return v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v3, v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v4, v1

    .line 15
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    move-object/from16 v0, p1

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const v2, 0x3dcccccd    # 0.1f

    .line 34
    .line 35
    .line 36
    mul-float/2addr v1, v2

    .line 37
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    .line 38
    .line 39
    sub-float v5, v3, v2

    .line 40
    .line 41
    sub-float v11, v5, v1

    .line 42
    .line 43
    sub-float v2, v4, v2

    .line 44
    .line 45
    sub-float v12, v2, v1

    .line 46
    .line 47
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_JDM_HAL:Z

    .line 48
    .line 49
    const/4 v14, 0x1

    .line 50
    const/high16 v15, 0x3f800000    # 1.0f

    .line 51
    .line 52
    const-wide/16 v16, 0x3e8

    .line 53
    .line 54
    const/4 v9, 0x2

    .line 55
    const/high16 v18, 0x42c80000    # 100.0f

    .line 56
    .line 57
    const/4 v8, 0x3

    .line 58
    const/high16 v19, 0x40000000    # 2.0f

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0, v10, v3, v4}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v10, v3, v4}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawPreviewMask(Landroid/graphics/Canvas;FF)V

    .line 66
    .line 67
    .line 68
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    .line 69
    .line 70
    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    .line 71
    .line 72
    cmpl-float v2, v2, v18

    .line 73
    .line 74
    if-nez v2, :cond_1

    .line 75
    .line 76
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    .line 77
    .line 78
    add-float/2addr v2, v1

    .line 79
    div-float v2, v2, v19

    .line 80
    .line 81
    invoke-virtual {v10, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v10, v11, v12}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawCompletedEffect(Landroid/graphics/Canvas;FF)V

    .line 85
    .line 86
    .line 87
    :cond_1
    move v14, v8

    .line 88
    move v13, v9

    .line 89
    goto/16 :goto_a

    .line 90
    .line 91
    :cond_2
    invoke-virtual {v0, v10, v11, v12}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 95
    .line 96
    .line 97
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    .line 98
    .line 99
    add-float/2addr v2, v1

    .line 100
    div-float v2, v2, v19

    .line 101
    .line 102
    invoke-virtual {v10, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v10, v11, v12}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawPreviewMask(Landroid/graphics/Canvas;FF)V

    .line 106
    .line 107
    .line 108
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 109
    .line 110
    const/16 v2, 0xff

    .line 111
    .line 112
    const-wide/16 v3, 0x0

    .line 113
    .line 114
    if-ne v1, v14, :cond_3

    .line 115
    .line 116
    iget-boolean v5, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsBlurMask:Z

    .line 117
    .line 118
    if-eqz v5, :cond_4

    .line 119
    .line 120
    :cond_3
    if-ne v1, v9, :cond_6

    .line 121
    .line 122
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    .line 123
    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorFinished:Z

    .line 131
    .line 132
    if-nez v1, :cond_4

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    div-float v1, v1, v19

    .line 140
    .line 141
    iget v5, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 142
    .line 143
    if-ne v5, v14, :cond_5

    .line 144
    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 146
    .line 147
    .line 148
    move-result-wide v5

    .line 149
    iget-wide v13, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    .line 150
    .line 151
    sub-long/2addr v5, v13

    .line 152
    sub-long v5, v5, v16

    .line 153
    .line 154
    const-wide/16 v13, 0x190

    .line 155
    .line 156
    cmp-long v7, v5, v13

    .line 157
    .line 158
    if-gtz v7, :cond_5

    .line 159
    .line 160
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 161
    .line 162
    .line 163
    move-result-wide v5

    .line 164
    long-to-float v5, v5

    .line 165
    const/high16 v6, 0x437f0000    # 255.0f

    .line 166
    .line 167
    mul-float/2addr v5, v6

    .line 168
    const/high16 v6, 0x43c80000    # 400.0f

    .line 169
    .line 170
    div-float/2addr v5, v6

    .line 171
    float-to-int v5, v5

    .line 172
    goto :goto_0

    .line 173
    :cond_5
    move v5, v2

    .line 174
    :goto_0
    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    .line 175
    .line 176
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    .line 178
    .line 179
    div-float v5, v11, v19

    .line 180
    .line 181
    div-float v6, v12, v19

    .line 182
    .line 183
    iget v7, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_INNER_CIRCLE_AREA_PERCENT:F

    .line 184
    .line 185
    mul-float/2addr v1, v7

    .line 186
    iget-object v7, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    .line 187
    .line 188
    invoke-virtual {v10, v5, v6, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    :goto_1
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 192
    .line 193
    const/4 v5, 0x4

    .line 194
    if-eq v1, v8, :cond_b

    .line 195
    .line 196
    if-ne v1, v5, :cond_7

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    div-float v1, v1, v19

    .line 204
    .line 205
    iget v6, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 206
    .line 207
    const/4 v7, 0x1

    .line 208
    if-ne v6, v7, :cond_a

    .line 209
    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 211
    .line 212
    .line 213
    move-result-wide v6

    .line 214
    iget-wide v13, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    .line 215
    .line 216
    sub-long/2addr v6, v13

    .line 217
    const-wide/16 v13, 0x258

    .line 218
    .line 219
    cmp-long v2, v6, v13

    .line 220
    .line 221
    if-gez v2, :cond_8

    .line 222
    .line 223
    long-to-float v2, v6

    .line 224
    long-to-float v13, v13

    .line 225
    div-float/2addr v2, v13

    .line 226
    const v13, 0x3e99999a    # 0.3f

    .line 227
    .line 228
    .line 229
    mul-float/2addr v13, v1

    .line 230
    sget-object v14, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_STARTING_ANIMATION:Landroid/view/animation/PathInterpolator;

    .line 231
    .line 232
    invoke-virtual {v14, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    mul-float/2addr v2, v1

    .line 237
    const v1, 0x3f3d70a4    # 0.74f

    .line 238
    .line 239
    .line 240
    mul-float/2addr v2, v1

    .line 241
    add-float v1, v2, v13

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_8
    const-wide/16 v20, 0x4b0

    .line 245
    .line 246
    cmp-long v2, v6, v20

    .line 247
    .line 248
    if-gez v2, :cond_9

    .line 249
    .line 250
    sub-long v8, v6, v13

    .line 251
    .line 252
    long-to-float v2, v8

    .line 253
    long-to-float v8, v13

    .line 254
    div-float/2addr v2, v8

    .line 255
    const v8, 0x3f851eb8    # 1.04f

    .line 256
    .line 257
    .line 258
    mul-float/2addr v8, v1

    .line 259
    sget-object v9, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_STARTING_ANIMATION:Landroid/view/animation/PathInterpolator;

    .line 260
    .line 261
    invoke-virtual {v9, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    mul-float/2addr v2, v1

    .line 266
    const v1, 0x3d23d70a    # 0.04f

    .line 267
    .line 268
    .line 269
    mul-float/2addr v2, v1

    .line 270
    sub-float v1, v8, v2

    .line 271
    .line 272
    :cond_9
    :goto_2
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 273
    .line 274
    .line 275
    move-result-wide v2

    .line 276
    const-wide/16 v6, 0x64

    .line 277
    .line 278
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 279
    .line 280
    .line 281
    move-result-wide v2

    .line 282
    long-to-float v2, v2

    .line 283
    const v3, 0x40233333    # 2.55f

    .line 284
    .line 285
    .line 286
    mul-float/2addr v2, v3

    .line 287
    float-to-int v2, v2

    .line 288
    :cond_a
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    .line 289
    .line 290
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getErrorSizeDiff(F)F

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    add-float/2addr v2, v1

    .line 298
    div-float v1, v11, v19

    .line 299
    .line 300
    div-float v3, v12, v19

    .line 301
    .line 302
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    .line 303
    .line 304
    invoke-virtual {v10, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 305
    .line 306
    .line 307
    :cond_b
    :goto_3
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 308
    .line 309
    if-eq v1, v5, :cond_f

    .line 310
    .line 311
    const/4 v2, 0x1

    .line 312
    if-eq v1, v2, :cond_f

    .line 313
    .line 314
    const/4 v8, 0x3

    .line 315
    if-ne v1, v8, :cond_c

    .line 316
    .line 317
    move v14, v8

    .line 318
    const/4 v13, 0x2

    .line 319
    goto :goto_6

    .line 320
    :cond_c
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    .line 321
    .line 322
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    .line 323
    .line 324
    sub-float/2addr v1, v2

    .line 325
    const/high16 v2, 0x41200000    # 10.0f

    .line 326
    .line 327
    div-float/2addr v1, v2

    .line 328
    const/4 v2, 0x0

    .line 329
    cmpg-float v2, v1, v2

    .line 330
    .line 331
    const v3, 0x3e4ccccd    # 0.2f

    .line 332
    .line 333
    .line 334
    if-gez v2, :cond_d

    .line 335
    .line 336
    const v2, -0x41b33333    # -0.2f

    .line 337
    .line 338
    .line 339
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    goto :goto_4

    .line 344
    :cond_d
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    :goto_4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    cmpg-float v2, v2, v3

    .line 353
    .line 354
    if-gtz v2, :cond_e

    .line 355
    .line 356
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_e
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    .line 360
    .line 361
    add-float/2addr v1, v2

    .line 362
    :goto_5
    iput v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    .line 363
    .line 364
    const/high16 v2, 0x43b40000    # 360.0f

    .line 365
    .line 366
    mul-float/2addr v1, v2

    .line 367
    div-float v7, v1, v18

    .line 368
    .line 369
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getErrorSizeDiff(F)F

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    div-float v1, v1, v19

    .line 378
    .line 379
    neg-float v3, v1

    .line 380
    add-float v4, v11, v1

    .line 381
    .line 382
    add-float v5, v12, v1

    .line 383
    .line 384
    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    .line 385
    .line 386
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 387
    .line 388
    const/4 v13, 0x0

    .line 389
    move-object/from16 v1, p1

    .line 390
    .line 391
    move v2, v3

    .line 392
    move v14, v8

    .line 393
    move v8, v13

    .line 394
    const/4 v13, 0x2

    .line 395
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 396
    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_f
    const/4 v13, 0x2

    .line 400
    const/4 v14, 0x3

    .line 401
    :goto_6
    invoke-virtual {v0, v10, v11, v12}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->drawCompletedEffect(Landroid/graphics/Canvas;FF)V

    .line 402
    .line 403
    .line 404
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    .line 405
    .line 406
    if-eqz v1, :cond_15

    .line 407
    .line 408
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    .line 409
    .line 410
    if-eqz v1, :cond_10

    .line 411
    .line 412
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorFinished:Z

    .line 413
    .line 414
    if-nez v1, :cond_10

    .line 415
    .line 416
    goto/16 :goto_9

    .line 417
    .line 418
    :cond_10
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_14

    .line 425
    .line 426
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    .line 433
    .line 434
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-eq v1, v2, :cond_11

    .line 439
    .line 440
    goto :goto_8

    .line 441
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 442
    .line 443
    .line 444
    move-result-wide v1

    .line 445
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 450
    .line 451
    .line 452
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_INNER_CIRCLE_AREA_PERCENT:F

    .line 453
    .line 454
    sub-float v4, v15, v4

    .line 455
    .line 456
    mul-float/2addr v4, v3

    .line 457
    div-float v4, v4, v19

    .line 458
    .line 459
    invoke-virtual {v10, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 460
    .line 461
    .line 462
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    iget-wide v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanStartTimestamp:J

    .line 469
    .line 470
    sub-long/2addr v1, v4

    .line 471
    int-to-long v4, v3

    .line 472
    mul-long/2addr v1, v4

    .line 473
    const-wide/16 v4, 0x708

    .line 474
    .line 475
    div-long/2addr v1, v4

    .line 476
    long-to-int v1, v1

    .line 477
    rem-int/2addr v1, v3

    .line 478
    const/16 v2, 0x32

    .line 479
    .line 480
    move v4, v1

    .line 481
    :goto_7
    add-int/lit8 v5, v1, -0x32

    .line 482
    .line 483
    if-lt v4, v5, :cond_13

    .line 484
    .line 485
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntTraceLine:Landroid/graphics/Paint;

    .line 486
    .line 487
    const/4 v6, 0x0

    .line 488
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 489
    .line 490
    .line 491
    move-result v7

    .line 492
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 493
    .line 494
    .line 495
    if-ltz v4, :cond_12

    .line 496
    .line 497
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    .line 498
    .line 499
    add-int v6, v4, v3

    .line 500
    .line 501
    rem-int/2addr v6, v3

    .line 502
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    check-cast v5, Landroid/graphics/Path;

    .line 507
    .line 508
    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntTraceLine:Landroid/graphics/Paint;

    .line 509
    .line 510
    invoke-virtual {v10, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 511
    .line 512
    .line 513
    :cond_12
    add-int/lit8 v4, v4, -0x1

    .line 514
    .line 515
    add-int/lit8 v2, v2, -0x1

    .line 516
    .line 517
    goto :goto_7

    .line 518
    :cond_13
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    check-cast v1, Landroid/graphics/Path;

    .line 525
    .line 526
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntScanLine:Landroid/graphics/Paint;

    .line 527
    .line 528
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 532
    .line 533
    .line 534
    goto :goto_9

    .line 535
    :cond_14
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string v2, "Path is not ready ("

    .line 538
    .line 539
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v2, ", "

    .line 552
    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    const-string v2, ")"

    .line 566
    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    const-string v2, "BSS_FaceRegisterEffectView"

    .line 575
    .line 576
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .line 578
    .line 579
    :cond_15
    :goto_9
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsBlurMask:Z

    .line 580
    .line 581
    if-eqz v1, :cond_16

    .line 582
    .line 583
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    div-float v1, v1, v19

    .line 588
    .line 589
    div-float v11, v11, v19

    .line 590
    .line 591
    div-float v12, v12, v19

    .line 592
    .line 593
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBlurMask:Landroid/graphics/Paint;

    .line 594
    .line 595
    invoke-virtual {v10, v11, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 596
    .line 597
    .line 598
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 599
    .line 600
    .line 601
    :goto_a
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 602
    .line 603
    const/4 v2, 0x1

    .line 604
    if-ne v1, v2, :cond_18

    .line 605
    .line 606
    iget-wide v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    .line 607
    .line 608
    const-wide/16 v5, 0x578

    .line 609
    .line 610
    invoke-static {v3, v4, v5, v6, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getTimePos(JJI)F

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    cmpl-float v1, v1, v15

    .line 615
    .line 616
    if-nez v1, :cond_18

    .line 617
    .line 618
    iput v13, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 619
    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->startScanEffect()V

    .line 621
    .line 622
    .line 623
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    .line 624
    .line 625
    if-eqz v1, :cond_18

    .line 626
    .line 627
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    .line 628
    .line 629
    if-eqz v1, :cond_17

    .line 630
    .line 631
    iput-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    .line 632
    .line 633
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 634
    .line 635
    if-eq v1, v2, :cond_17

    .line 636
    .line 637
    const/4 v1, 0x0

    .line 638
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    .line 639
    .line 640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 641
    .line 642
    .line 643
    move-result-wide v1

    .line 644
    iput-wide v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewMaskTimestamp:J

    .line 645
    .line 646
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 647
    .line 648
    .line 649
    :cond_18
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 650
    .line 651
    if-ne v1, v13, :cond_19

    .line 652
    .line 653
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    .line 654
    .line 655
    cmpl-float v1, v1, v18

    .line 656
    .line 657
    if-nez v1, :cond_19

    .line 658
    .line 659
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 660
    .line 661
    .line 662
    move-result-wide v1

    .line 663
    iput-wide v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCompletionTimestamp:J

    .line 664
    .line 665
    iput v14, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 666
    .line 667
    const/4 v1, 0x0

    .line 668
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    .line 669
    .line 670
    :cond_19
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    .line 671
    .line 672
    if-eqz v1, :cond_1d

    .line 673
    .line 674
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 675
    .line 676
    .line 677
    move-result-wide v1

    .line 678
    iget v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    .line 679
    .line 680
    if-nez v3, :cond_1a

    .line 681
    .line 682
    iget-wide v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    .line 683
    .line 684
    sub-long v4, v1, v4

    .line 685
    .line 686
    const-wide/16 v6, 0x1c2

    .line 687
    .line 688
    cmp-long v4, v4, v6

    .line 689
    .line 690
    if-lez v4, :cond_1a

    .line 691
    .line 692
    iput-wide v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    .line 693
    .line 694
    const/4 v4, 0x1

    .line 695
    iput v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    .line 696
    .line 697
    goto :goto_b

    .line 698
    :cond_1a
    const/4 v4, 0x1

    .line 699
    if-ne v3, v4, :cond_1b

    .line 700
    .line 701
    iget-wide v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    .line 702
    .line 703
    sub-long v4, v1, v4

    .line 704
    .line 705
    const-wide/16 v6, 0x96

    .line 706
    .line 707
    cmp-long v4, v4, v6

    .line 708
    .line 709
    if-lez v4, :cond_1b

    .line 710
    .line 711
    iput-wide v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    .line 712
    .line 713
    iput v13, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    .line 714
    .line 715
    goto :goto_b

    .line 716
    :cond_1b
    if-ne v3, v13, :cond_1d

    .line 717
    .line 718
    iget-wide v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    .line 719
    .line 720
    sub-long/2addr v1, v3

    .line 721
    cmp-long v5, v1, v16

    .line 722
    .line 723
    if-lez v5, :cond_1d

    .line 724
    .line 725
    iget-boolean v5, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorFinished:Z

    .line 726
    .line 727
    if-eqz v5, :cond_1c

    .line 728
    .line 729
    const/4 v5, 0x0

    .line 730
    iput-boolean v5, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    .line 731
    .line 732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 733
    .line 734
    .line 735
    move-result-wide v1

    .line 736
    iput-wide v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanStartTimestamp:J

    .line 737
    .line 738
    goto :goto_b

    .line 739
    :cond_1c
    const-wide/16 v5, 0x7d0

    .line 740
    .line 741
    cmp-long v1, v1, v5

    .line 742
    .line 743
    if-lez v1, :cond_1d

    .line 744
    .line 745
    add-long/2addr v3, v5

    .line 746
    iput-wide v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    .line 747
    .line 748
    :cond_1d
    :goto_b
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 749
    .line 750
    const/4 v2, 0x1

    .line 751
    if-eq v1, v2, :cond_1e

    .line 752
    .line 753
    if-eq v1, v14, :cond_1e

    .line 754
    .line 755
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    .line 756
    .line 757
    if-nez v1, :cond_1e

    .line 758
    .line 759
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    .line 760
    .line 761
    if-nez v1, :cond_1e

    .line 762
    .line 763
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    .line 764
    .line 765
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    .line 766
    .line 767
    cmpg-float v1, v1, v2

    .line 768
    .line 769
    if-gez v1, :cond_1f

    .line 770
    .line 771
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 772
    .line 773
    .line 774
    :cond_1f
    return-void
.end method

.method public final setErrorState()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorState:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorFinished:Z

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_ERROR_PREVIEW_AREA_PERCENT:F

    .line 17
    .line 18
    sub-float/2addr v0, v1

    .line 19
    neg-float v0, v0

    .line 20
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mErrorTimestamp:J

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->startScanEffect()V

    .line 14
    .line 15
    .line 16
    :cond_0
    int-to-float p1, p1

    .line 17
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetProgress:F

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    cmpl-float p1, p1, v0

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mProgress:F

    .line 25
    .line 26
    :cond_1
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTargetPreviewExpandSize:F

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorFinished:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final startScanEffect()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsBlurMask:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanStartTimestamp:J

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    .line 14
    .line 15
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    .line 20
    .line 21
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PREVIEW_MASK:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 29
    .line 30
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 31
    .line 32
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final stopScanEffect()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsScanning:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsErrorStarted:Z

    .line 5
    .line 6
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    .line 16
    .line 17
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_BACKGROUND:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 25
    .line 26
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 27
    .line 28
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
