.class public final Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sget-object v4, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->INTP_STARTING_ANIMATION:Landroid/view/animation/PathInterpolator;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    int-to-float v4, v4

    .line 34
    const/high16 v5, 0x40200000    # 2.5f

    .line 35
    .line 36
    mul-float/2addr v5, v4

    .line 37
    const/high16 v6, 0x42c80000    # 100.0f

    .line 38
    .line 39
    div-float/2addr v5, v6

    .line 40
    iput v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    .line 41
    .line 42
    const/high16 v5, 0x3f000000    # 0.5f

    .line 43
    .line 44
    mul-float/2addr v4, v5

    .line 45
    div-float/2addr v4, v6

    .line 46
    iget-object v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    .line 47
    .line 48
    iget v7, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_BACKGROUND:I

    .line 49
    .line 50
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBackground:Landroid/graphics/Paint;

    .line 54
    .line 55
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 56
    .line 57
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    .line 59
    .line 60
    iget-object v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    .line 61
    .line 62
    iget v8, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PREVIEW_MASK:I

    .line 63
    .line 64
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntPreviewMask:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    .line 71
    .line 72
    iget-object v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    .line 73
    .line 74
    iget v8, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_INNER_GUIDE_LINE:I

    .line 75
    .line 76
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    .line 80
    .line 81
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 82
    .line 83
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    .line 85
    .line 86
    iget-object v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntInnerCircle:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    .line 90
    .line 91
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    .line 92
    .line 93
    iget v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PROGRESS_BASE_LINE:I

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    .line 99
    .line 100
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    .line 101
    .line 102
    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 103
    .line 104
    const/high16 v10, 0x3f800000    # 1.0f

    .line 105
    .line 106
    invoke-direct {v5, v10, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 110
    .line 111
    .line 112
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    .line 113
    .line 114
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    .line 116
    .line 117
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressBaseLine:Landroid/graphics/Paint;

    .line 118
    .line 119
    iget v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    .line 123
    .line 124
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    .line 125
    .line 126
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    .line 127
    .line 128
    invoke-direct {v5, v10, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 132
    .line 133
    .line 134
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    .line 135
    .line 136
    iget v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_PROGRESS_LINE:I

    .line 137
    .line 138
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    .line 142
    .line 143
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    .line 145
    .line 146
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    .line 147
    .line 148
    iget v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    .line 149
    .line 150
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    .line 152
    .line 153
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntProgressLine:Landroid/graphics/Paint;

    .line 154
    .line 155
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 158
    .line 159
    .line 160
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntGreenMask:Landroid/graphics/Paint;

    .line 161
    .line 162
    iget v11, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_GREEN_MASK:I

    .line 163
    .line 164
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    .line 166
    .line 167
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    .line 168
    .line 169
    new-instance v11, Landroid/graphics/BlurMaskFilter;

    .line 170
    .line 171
    invoke-direct {v11, v10, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 175
    .line 176
    .line 177
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    .line 178
    .line 179
    iget v11, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_CHECK_ICON:I

    .line 180
    .line 181
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    .line 183
    .line 184
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    .line 185
    .line 186
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    .line 188
    .line 189
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    .line 190
    .line 191
    iget v8, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    .line 192
    .line 193
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    .line 195
    .line 196
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntCheckIcon:Landroid/graphics/Paint;

    .line 197
    .line 198
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 199
    .line 200
    .line 201
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBlurMask:Landroid/graphics/Paint;

    .line 202
    .line 203
    iget v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->COLOR_BLUR_MASK:I

    .line 204
    .line 205
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    .line 207
    .line 208
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntBlurMask:Landroid/graphics/Paint;

    .line 209
    .line 210
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    const/4 v5, 0x1

    .line 222
    const/high16 v7, 0x40400000    # 3.0f

    .line 223
    .line 224
    invoke-static {v5, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    iput v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mCheckIconMoveDp:F

    .line 229
    .line 230
    int-to-float v2, v2

    .line 231
    const v4, 0x3f428f5c    # 0.76f

    .line 232
    .line 233
    .line 234
    div-float v4, v2, v4

    .line 235
    .line 236
    const v8, 0x3e8f5c29    # 0.28f

    .line 237
    .line 238
    .line 239
    mul-float/2addr v4, v8

    .line 240
    const/high16 v8, 0x42340000    # 45.0f

    .line 241
    .line 242
    div-float v8, v4, v8

    .line 243
    .line 244
    const/high16 v11, 0x40000000    # 2.0f

    .line 245
    .line 246
    div-float/2addr v2, v11

    .line 247
    mul-float/2addr v4, v11

    .line 248
    div-float/2addr v4, v7

    .line 249
    sub-float/2addr v2, v4

    .line 250
    int-to-float v3, v3

    .line 251
    div-float/2addr v3, v11

    .line 252
    sub-float/2addr v3, v4

    .line 253
    new-instance v4, Landroid/graphics/Matrix;

    .line 254
    .line 255
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 262
    .line 263
    .line 264
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPathCheckIcon:Landroid/graphics/Path;

    .line 265
    .line 266
    invoke-virtual {v1, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 270
    .line 271
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 276
    .line 277
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    int-to-float v2, v2

    .line 282
    const v4, 0x3f666666    # 0.9f

    .line 283
    .line 284
    .line 285
    mul-float/2addr v2, v4

    .line 286
    iget v8, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStrokeWidth:F

    .line 287
    .line 288
    sub-float/2addr v2, v8

    .line 289
    iget v12, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->WIDTH_INNER_CIRCLE_AREA_PERCENT:F

    .line 290
    .line 291
    mul-float/2addr v2, v12

    .line 292
    float-to-int v2, v2

    .line 293
    int-to-float v3, v3

    .line 294
    mul-float/2addr v3, v4

    .line 295
    sub-float/2addr v3, v8

    .line 296
    mul-float/2addr v3, v12

    .line 297
    float-to-int v3, v3

    .line 298
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntScanLine:Landroid/graphics/Paint;

    .line 299
    .line 300
    const/4 v8, -0x1

    .line 301
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    .line 303
    .line 304
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntScanLine:Landroid/graphics/Paint;

    .line 305
    .line 306
    new-instance v8, Landroid/graphics/BlurMaskFilter;

    .line 307
    .line 308
    invoke-direct {v8, v10, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 312
    .line 313
    .line 314
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPntTraceLine:Landroid/graphics/Paint;

    .line 315
    .line 316
    const v8, -0x2f1f30

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    .line 321
    .line 322
    new-instance v4, Landroid/view/animation/PathInterpolator;

    .line 323
    .line 324
    const v8, 0x3ee66666    # 0.45f

    .line 325
    .line 326
    .line 327
    const/4 v9, 0x0

    .line 328
    const v12, 0x3f0ccccd    # 0.55f

    .line 329
    .line 330
    .line 331
    invoke-direct {v4, v8, v9, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 332
    .line 333
    .line 334
    int-to-float v8, v2

    .line 335
    const/high16 v9, 0x3fc00000    # 1.5f

    .line 336
    .line 337
    mul-float/2addr v9, v8

    .line 338
    div-float/2addr v9, v6

    .line 339
    float-to-int v9, v9

    .line 340
    mul-float/2addr v7, v8

    .line 341
    div-float/2addr v7, v6

    .line 342
    float-to-int v6, v7

    .line 343
    div-int/lit8 v7, v6, 0x5

    .line 344
    .line 345
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    new-instance v7, Landroid/graphics/Matrix;

    .line 350
    .line 351
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 352
    .line 353
    .line 354
    div-float/2addr v8, v11

    .line 355
    int-to-float v3, v3

    .line 356
    div-float v10, v3, v11

    .line 357
    .line 358
    const/high16 v11, 0x42b40000    # 90.0f

    .line 359
    .line 360
    invoke-virtual {v7, v11, v8, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 361
    .line 362
    .line 363
    new-instance v8, Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .line 367
    .line 368
    new-instance v10, Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .line 372
    .line 373
    new-instance v11, Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .line 377
    .line 378
    new-instance v15, Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .line 382
    .line 383
    const/4 v13, 0x0

    .line 384
    :goto_0
    add-int v12, v2, v6

    .line 385
    .line 386
    if-ge v13, v12, :cond_0

    .line 387
    .line 388
    new-instance v14, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;

    .line 389
    .line 390
    move-object/from16 v17, v15

    .line 391
    .line 392
    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    .line 393
    .line 394
    .line 395
    move-result v15

    .line 396
    invoke-direct {v14, v4, v15, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;-><init>(Landroid/view/animation/PathInterpolator;II)V

    .line 397
    .line 398
    .line 399
    iget v15, v14, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->angle:F

    .line 400
    .line 401
    iget v0, v14, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->ex:I

    .line 402
    .line 403
    iget v14, v14, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->sx:I

    .line 404
    .line 405
    move-object/from16 v20, v1

    .line 406
    .line 407
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;

    .line 408
    .line 409
    move/from16 v21, v5

    .line 410
    .line 411
    sub-int v5, v13, v9

    .line 412
    .line 413
    move/from16 v22, v9

    .line 414
    .line 415
    const/4 v9, 0x0

    .line 416
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    invoke-direct {v1, v4, v5, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;-><init>(Landroid/view/animation/PathInterpolator;II)V

    .line 421
    .line 422
    .line 423
    new-instance v5, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;

    .line 424
    .line 425
    move-object/from16 v23, v11

    .line 426
    .line 427
    sub-int v11, v13, v6

    .line 428
    .line 429
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 430
    .line 431
    .line 432
    move-result v11

    .line 433
    invoke-direct {v5, v4, v11, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;-><init>(Landroid/view/animation/PathInterpolator;II)V

    .line 434
    .line 435
    .line 436
    mul-int/lit8 v11, v13, 0x32

    .line 437
    .line 438
    int-to-float v11, v11

    .line 439
    int-to-float v12, v12

    .line 440
    div-float/2addr v11, v12

    .line 441
    const/high16 v12, 0x41c80000    # 25.0f

    .line 442
    .line 443
    sub-float/2addr v11, v12

    .line 444
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 445
    .line 446
    .line 447
    move-result v11

    .line 448
    new-instance v12, Landroid/graphics/Path;

    .line 449
    .line 450
    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 451
    .line 452
    .line 453
    int-to-float v9, v14

    .line 454
    move/from16 v18, v14

    .line 455
    .line 456
    int-to-float v14, v0

    .line 457
    add-float v19, v15, v11

    .line 458
    .line 459
    const/16 v24, 0x0

    .line 460
    .line 461
    const/high16 v25, 0x43340000    # 180.0f

    .line 462
    .line 463
    const/16 v26, 0x0

    .line 464
    .line 465
    move-object/from16 v27, v12

    .line 466
    .line 467
    move/from16 v28, v13

    .line 468
    .line 469
    move v13, v9

    .line 470
    move/from16 v16, v14

    .line 471
    .line 472
    move/from16 v9, v18

    .line 473
    .line 474
    move/from16 v14, v24

    .line 475
    .line 476
    move/from16 v24, v15

    .line 477
    .line 478
    move-object/from16 v29, v17

    .line 479
    .line 480
    move/from16 v15, v16

    .line 481
    .line 482
    move/from16 v16, v3

    .line 483
    .line 484
    move/from16 v17, v19

    .line 485
    .line 486
    move/from16 v18, v25

    .line 487
    .line 488
    move/from16 v19, v26

    .line 489
    .line 490
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 491
    .line 492
    .line 493
    iget v12, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->sx:I

    .line 494
    .line 495
    int-to-float v13, v12

    .line 496
    iget v12, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->ex:I

    .line 497
    .line 498
    int-to-float v15, v12

    .line 499
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->angle:F

    .line 500
    .line 501
    add-float/2addr v1, v11

    .line 502
    const/high16 v25, 0x43340000    # 180.0f

    .line 503
    .line 504
    add-float v17, v1, v25

    .line 505
    .line 506
    const/4 v14, 0x0

    .line 507
    const/high16 v18, -0x3ccc0000    # -180.0f

    .line 508
    .line 509
    const/16 v19, 0x0

    .line 510
    .line 511
    move-object/from16 v12, v27

    .line 512
    .line 513
    move/from16 v16, v3

    .line 514
    .line 515
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 516
    .line 517
    .line 518
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Path;->close()V

    .line 519
    .line 520
    .line 521
    move-object/from16 v1, v27

    .line 522
    .line 523
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    new-instance v12, Landroid/graphics/Path;

    .line 527
    .line 528
    invoke-direct {v12, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v12, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    new-instance v1, Landroid/graphics/Path;

    .line 538
    .line 539
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 540
    .line 541
    .line 542
    int-to-float v13, v9

    .line 543
    int-to-float v15, v0

    .line 544
    add-float v17, v24, v11

    .line 545
    .line 546
    const/4 v14, 0x0

    .line 547
    const/high16 v18, 0x43340000    # 180.0f

    .line 548
    .line 549
    const/16 v19, 0x0

    .line 550
    .line 551
    move-object v12, v1

    .line 552
    move/from16 v16, v3

    .line 553
    .line 554
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 555
    .line 556
    .line 557
    iget v0, v5, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->sx:I

    .line 558
    .line 559
    int-to-float v13, v0

    .line 560
    iget v0, v5, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->ex:I

    .line 561
    .line 562
    int-to-float v15, v0

    .line 563
    iget v0, v5, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->angle:F

    .line 564
    .line 565
    add-float/2addr v0, v11

    .line 566
    add-float v17, v0, v25

    .line 567
    .line 568
    const/4 v14, 0x0

    .line 569
    const/high16 v18, -0x3ccc0000    # -180.0f

    .line 570
    .line 571
    const/16 v19, 0x0

    .line 572
    .line 573
    move-object v12, v1

    .line 574
    move/from16 v16, v3

    .line 575
    .line 576
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 580
    .line 581
    .line 582
    move-object/from16 v0, v23

    .line 583
    .line 584
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    new-instance v5, Landroid/graphics/Path;

    .line 588
    .line 589
    invoke-direct {v5, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v5, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 593
    .line 594
    .line 595
    move-object/from16 v1, v29

    .line 596
    .line 597
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    add-int v13, v28, v21

    .line 601
    .line 602
    move-object v11, v0

    .line 603
    move-object v15, v1

    .line 604
    move-object/from16 v1, v20

    .line 605
    .line 606
    move/from16 v5, v21

    .line 607
    .line 608
    move/from16 v9, v22

    .line 609
    .line 610
    move-object/from16 v0, p0

    .line 611
    .line 612
    goto/16 :goto_0

    .line 613
    .line 614
    :cond_0
    move-object v5, v1

    .line 615
    move-object v0, v11

    .line 616
    move-object v1, v15

    .line 617
    iget-object v2, v5, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    .line 618
    .line 619
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 620
    .line 621
    .line 622
    iget-object v2, v5, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mScanPathList:Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 625
    .line 626
    .line 627
    iget-object v2, v5, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    .line 628
    .line 629
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 630
    .line 631
    .line 632
    iget-object v0, v5, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mTracePathList:Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 635
    .line 636
    .line 637
    invoke-virtual {v5}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->stopScanEffect()V

    .line 638
    .line 639
    .line 640
    move-object/from16 v0, p0

    .line 641
    .line 642
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 643
    .line 644
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 645
    .line 646
    .line 647
    return-void
.end method
