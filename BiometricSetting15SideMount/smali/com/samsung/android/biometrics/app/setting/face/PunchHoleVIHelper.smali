.class public final Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final PUNCH_HOLE_VI_INFO:Ljava/lang/String;


# instance fields
.field public mCameraLocPercent:Landroid/graphics/PointF;

.field public final mContext:Landroid/content/Context;

.field public final mDisplay:Landroid/view/Display;

.field public final mDm:Landroid/hardware/display/DisplayManager;

.field public mFaceVISizePercent:Landroid/graphics/PointF;

.field public mIsBasedOnType:Z

.field public final mIsFolderOpened:Z

.field public final mIsSupportDualDisplay:Z

.field public mVIFileName:Ljava/lang/String;

.field public mVIType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_PUNCHHOLE_VI"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->PUNCH_HOLE_VI_INFO:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mIsSupportDualDisplay:Z

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mIsFolderOpened:Z

    .line 27
    .line 28
    const-string v0, "display"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDm:Landroid/hardware/display/DisplayManager;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDisplay:Landroid/view/Display;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final getAnimationName(Z)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mVIFileName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "_whitebg.json"

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const-string p0, ".json"

    .line 22
    .line 23
    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "Punch hole name : "

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "BSS_PunchHoleVIHelper"

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public final getPunchHoleVIRect()Landroid/graphics/Rect;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mIsBasedOnType:Z

    .line 4
    .line 5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x3

    .line 9
    if-eqz v1, :cond_d

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v7, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDisplay:Landroid/view/Display;

    .line 17
    .line 18
    invoke-virtual {v7}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    const-string v8, "BSS_PunchHoleVIHelper"

    .line 23
    .line 24
    if-nez v7, :cond_0

    .line 25
    .line 26
    const-string v0, "getCutout is NULL!"

    .line 27
    .line 28
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto/16 :goto_b

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_c

    .line 46
    .line 47
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/graphics/Rect;

    .line 52
    .line 53
    new-instance v9, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v10, "BoundingRect = "

    .line 56
    .line 57
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mVIType:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    const/4 v11, 0x2

    .line 77
    const-string v12, "vcut"

    .line 78
    .line 79
    sparse-switch v10, :sswitch_data_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :sswitch_0
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_1

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    goto :goto_2

    .line 91
    :sswitch_1
    const-string v10, "ucut"

    .line 92
    .line 93
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_1

    .line 98
    .line 99
    move v9, v4

    .line 100
    goto :goto_2

    .line 101
    :sswitch_2
    const-string v10, "infinity-ucut"

    .line 102
    .line 103
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_1

    .line 108
    .line 109
    move v9, v11

    .line 110
    goto :goto_2

    .line 111
    :sswitch_3
    const-string v10, "circle"

    .line 112
    .line 113
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_1

    .line 118
    .line 119
    move v9, v5

    .line 120
    goto :goto_2

    .line 121
    :cond_1
    :goto_1
    const/4 v9, -0x1

    .line 122
    :goto_2
    const-string v10, "viViewLocation = "

    .line 123
    .line 124
    if-eqz v9, :cond_8

    .line 125
    .line 126
    if-eq v9, v4, :cond_8

    .line 127
    .line 128
    if-eq v9, v11, :cond_8

    .line 129
    .line 130
    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    new-instance v11, Landroid/graphics/Rect;

    .line 137
    .line 138
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 139
    .line 140
    .line 141
    const v12, 0x1050563

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimension(I)F

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    iget-object v13, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    const-string v14, "config_enableDisplayCutoutProtection"

    .line 155
    .line 156
    const-string v15, "bool"

    .line 157
    .line 158
    const-string v6, "com.android.systemui"

    .line 159
    .line 160
    invoke-virtual {v13, v14, v15, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    const/4 v14, 0x0

    .line 165
    if-eqz v13, :cond_2

    .line 166
    .line 167
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    if-eqz v13, :cond_2

    .line 172
    .line 173
    iget-object v13, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    .line 174
    .line 175
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    const-string v15, "camera_protection_stroke_width"

    .line 180
    .line 181
    const-string v2, "dimen"

    .line 182
    .line 183
    invoke-virtual {v13, v15, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_2

    .line 188
    .line 189
    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    goto :goto_3

    .line 194
    :cond_2
    move v2, v14

    .line 195
    :goto_3
    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDisplay:Landroid/view/Display;

    .line 196
    .line 197
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    new-instance v9, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v13, "rotation = "

    .line 204
    .line 205
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v13, " cameraTopMargin = "

    .line 212
    .line 213
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v13, " cameraProtectionStroke = "

    .line 220
    .line 221
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    if-nez v6, :cond_3

    .line 235
    .line 236
    iget v9, v1, Landroid/graphics/Rect;->right:I

    .line 237
    .line 238
    iget v13, v1, Landroid/graphics/Rect;->left:I

    .line 239
    .line 240
    sub-int/2addr v9, v13

    .line 241
    div-int/2addr v9, v5

    .line 242
    goto :goto_4

    .line 243
    :cond_3
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    .line 244
    .line 245
    iget v13, v1, Landroid/graphics/Rect;->top:I

    .line 246
    .line 247
    sub-int/2addr v9, v13

    .line 248
    div-int/2addr v9, v5

    .line 249
    :goto_4
    cmpl-float v13, v2, v14

    .line 250
    .line 251
    if-nez v13, :cond_4

    .line 252
    .line 253
    move v15, v14

    .line 254
    goto :goto_5

    .line 255
    :cond_4
    const/high16 v15, 0x40000000    # 2.0f

    .line 256
    .line 257
    div-float v15, v2, v15

    .line 258
    .line 259
    add-float/2addr v15, v3

    .line 260
    :goto_5
    float-to-int v15, v15

    .line 261
    float-to-int v14, v12

    .line 262
    sub-int/2addr v14, v15

    .line 263
    sub-int/2addr v14, v9

    .line 264
    if-nez v13, :cond_5

    .line 265
    .line 266
    const/4 v2, 0x0

    .line 267
    goto :goto_6

    .line 268
    :cond_5
    sub-float/2addr v2, v12

    .line 269
    int-to-float v12, v14

    .line 270
    sub-float/2addr v2, v12

    .line 271
    :goto_6
    float-to-int v2, v2

    .line 272
    new-instance v12, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v13, "rect = "

    .line 275
    .line 276
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v13, " viStroke = "

    .line 283
    .line 284
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v13, " gap = "

    .line 291
    .line 292
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v13, " cameraStroke = "

    .line 299
    .line 300
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v13, " topCameraStroke = "

    .line 307
    .line 308
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    if-eq v6, v4, :cond_7

    .line 322
    .line 323
    if-eq v6, v5, :cond_6

    .line 324
    .line 325
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 326
    .line 327
    sub-int/2addr v6, v9

    .line 328
    sub-int/2addr v6, v15

    .line 329
    iput v6, v11, Landroid/graphics/Rect;->left:I

    .line 330
    .line 331
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 332
    .line 333
    sub-int/2addr v6, v2

    .line 334
    iput v6, v11, Landroid/graphics/Rect;->top:I

    .line 335
    .line 336
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 337
    .line 338
    add-int/2addr v2, v9

    .line 339
    add-int/2addr v2, v15

    .line 340
    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 341
    .line 342
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 343
    .line 344
    add-int/2addr v1, v9

    .line 345
    sub-int/2addr v1, v14

    .line 346
    add-int/2addr v1, v15

    .line 347
    iput v1, v11, Landroid/graphics/Rect;->bottom:I

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_6
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 351
    .line 352
    sub-int/2addr v6, v9

    .line 353
    sub-int/2addr v6, v15

    .line 354
    iput v6, v11, Landroid/graphics/Rect;->left:I

    .line 355
    .line 356
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 357
    .line 358
    sub-int/2addr v6, v9

    .line 359
    sub-int/2addr v6, v15

    .line 360
    iput v6, v11, Landroid/graphics/Rect;->top:I

    .line 361
    .line 362
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 363
    .line 364
    add-int/2addr v6, v2

    .line 365
    iput v6, v11, Landroid/graphics/Rect;->right:I

    .line 366
    .line 367
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 368
    .line 369
    add-int/2addr v1, v9

    .line 370
    add-int/2addr v1, v15

    .line 371
    iput v1, v11, Landroid/graphics/Rect;->bottom:I

    .line 372
    .line 373
    goto :goto_7

    .line 374
    :cond_7
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 375
    .line 376
    sub-int/2addr v6, v2

    .line 377
    iput v6, v11, Landroid/graphics/Rect;->left:I

    .line 378
    .line 379
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 380
    .line 381
    sub-int/2addr v2, v9

    .line 382
    sub-int/2addr v2, v15

    .line 383
    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 384
    .line 385
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 386
    .line 387
    add-int/2addr v2, v9

    .line 388
    sub-int/2addr v2, v14

    .line 389
    add-int/2addr v2, v15

    .line 390
    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 391
    .line 392
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 393
    .line 394
    add-int/2addr v1, v9

    .line 395
    add-int/2addr v1, v15

    .line 396
    iput v1, v11, Landroid/graphics/Rect;->bottom:I

    .line 397
    .line 398
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    move-object v1, v11

    .line 414
    goto/16 :goto_a

    .line 415
    .line 416
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    .line 417
    .line 418
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 419
    .line 420
    .line 421
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mVIType:Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-eqz v2, :cond_9

    .line 428
    .line 429
    new-instance v2, Landroid/graphics/PointF;

    .line 430
    .line 431
    const v6, 0x3c75c28f    # 0.015f

    .line 432
    .line 433
    .line 434
    const/high16 v9, 0x3f000000    # 0.5f

    .line 435
    .line 436
    invoke-direct {v2, v9, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 437
    .line 438
    .line 439
    new-instance v6, Landroid/graphics/PointF;

    .line 440
    .line 441
    const/high16 v11, 0x3e800000    # 0.25f

    .line 442
    .line 443
    const v12, 0x3d8ccccd    # 0.06875f

    .line 444
    .line 445
    .line 446
    invoke-direct {v6, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 447
    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_9
    const/high16 v9, 0x3f000000    # 0.5f

    .line 451
    .line 452
    new-instance v2, Landroid/graphics/PointF;

    .line 453
    .line 454
    const v6, 0x3ce075f7    # 0.0274f

    .line 455
    .line 456
    .line 457
    invoke-direct {v2, v9, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 458
    .line 459
    .line 460
    new-instance v6, Landroid/graphics/PointF;

    .line 461
    .line 462
    const v9, 0x3e50e560    # 0.204f

    .line 463
    .line 464
    .line 465
    const v11, 0x3d4ccccd    # 0.05f

    .line 466
    .line 467
    .line 468
    invoke-direct {v6, v9, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 469
    .line 470
    .line 471
    :goto_8
    new-instance v9, Landroid/graphics/Point;

    .line 472
    .line 473
    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 474
    .line 475
    .line 476
    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDm:Landroid/hardware/display/DisplayManager;

    .line 477
    .line 478
    const/4 v12, 0x0

    .line 479
    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 480
    .line 481
    .line 482
    move-result-object v11

    .line 483
    invoke-virtual {v11, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 484
    .line 485
    .line 486
    iget v11, v9, Landroid/graphics/Point;->x:I

    .line 487
    .line 488
    iget v9, v9, Landroid/graphics/Point;->y:I

    .line 489
    .line 490
    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDisplay:Landroid/view/Display;

    .line 491
    .line 492
    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    .line 493
    .line 494
    .line 495
    move-result v12

    .line 496
    if-eq v12, v4, :cond_b

    .line 497
    .line 498
    if-eq v12, v5, :cond_a

    .line 499
    .line 500
    int-to-float v11, v11

    .line 501
    iget v12, v2, Landroid/graphics/PointF;->x:F

    .line 502
    .line 503
    iget v13, v6, Landroid/graphics/PointF;->x:F

    .line 504
    .line 505
    const/high16 v14, 0x3f000000    # 0.5f

    .line 506
    .line 507
    mul-float v15, v13, v14

    .line 508
    .line 509
    sub-float/2addr v12, v15

    .line 510
    mul-float/2addr v12, v11

    .line 511
    float-to-int v12, v12

    .line 512
    iput v12, v1, Landroid/graphics/Rect;->left:I

    .line 513
    .line 514
    int-to-float v9, v9

    .line 515
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 516
    .line 517
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 518
    .line 519
    mul-float v15, v6, v14

    .line 520
    .line 521
    sub-float/2addr v2, v15

    .line 522
    mul-float/2addr v2, v9

    .line 523
    float-to-int v2, v2

    .line 524
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 525
    .line 526
    int-to-float v12, v12

    .line 527
    mul-float/2addr v11, v13

    .line 528
    add-float/2addr v11, v12

    .line 529
    float-to-int v11, v11

    .line 530
    iput v11, v1, Landroid/graphics/Rect;->right:I

    .line 531
    .line 532
    int-to-float v2, v2

    .line 533
    mul-float/2addr v9, v6

    .line 534
    add-float/2addr v9, v2

    .line 535
    float-to-int v2, v9

    .line 536
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 537
    .line 538
    goto :goto_9

    .line 539
    :cond_a
    int-to-float v11, v11

    .line 540
    iget v12, v2, Landroid/graphics/PointF;->y:F

    .line 541
    .line 542
    sub-float v12, v3, v12

    .line 543
    .line 544
    mul-float/2addr v12, v11

    .line 545
    int-to-float v9, v9

    .line 546
    iget v13, v6, Landroid/graphics/PointF;->x:F

    .line 547
    .line 548
    mul-float/2addr v13, v9

    .line 549
    const/high16 v14, 0x3f000000    # 0.5f

    .line 550
    .line 551
    mul-float v15, v13, v14

    .line 552
    .line 553
    sub-float/2addr v12, v15

    .line 554
    float-to-int v12, v12

    .line 555
    iput v12, v1, Landroid/graphics/Rect;->left:I

    .line 556
    .line 557
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 558
    .line 559
    mul-float/2addr v9, v2

    .line 560
    iget v2, v6, Landroid/graphics/PointF;->y:F

    .line 561
    .line 562
    mul-float/2addr v11, v2

    .line 563
    mul-float v2, v11, v14

    .line 564
    .line 565
    sub-float/2addr v9, v2

    .line 566
    float-to-int v2, v9

    .line 567
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 568
    .line 569
    int-to-float v6, v12

    .line 570
    add-float/2addr v13, v6

    .line 571
    float-to-int v6, v13

    .line 572
    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 573
    .line 574
    int-to-float v2, v2

    .line 575
    add-float/2addr v11, v2

    .line 576
    float-to-int v2, v11

    .line 577
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 578
    .line 579
    goto :goto_9

    .line 580
    :cond_b
    int-to-float v11, v11

    .line 581
    iget v12, v2, Landroid/graphics/PointF;->y:F

    .line 582
    .line 583
    mul-float/2addr v12, v11

    .line 584
    int-to-float v9, v9

    .line 585
    iget v13, v6, Landroid/graphics/PointF;->x:F

    .line 586
    .line 587
    mul-float/2addr v13, v9

    .line 588
    const/high16 v14, 0x3f000000    # 0.5f

    .line 589
    .line 590
    mul-float v15, v13, v14

    .line 591
    .line 592
    sub-float/2addr v12, v15

    .line 593
    float-to-int v12, v12

    .line 594
    iput v12, v1, Landroid/graphics/Rect;->left:I

    .line 595
    .line 596
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 597
    .line 598
    sub-float v2, v3, v2

    .line 599
    .line 600
    mul-float/2addr v2, v9

    .line 601
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 602
    .line 603
    mul-float/2addr v11, v6

    .line 604
    mul-float v6, v11, v14

    .line 605
    .line 606
    sub-float/2addr v2, v6

    .line 607
    float-to-int v2, v2

    .line 608
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 609
    .line 610
    int-to-float v6, v12

    .line 611
    add-float/2addr v13, v6

    .line 612
    float-to-int v6, v13

    .line 613
    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 614
    .line 615
    int-to-float v2, v2

    .line 616
    add-float/2addr v11, v2

    .line 617
    float-to-int v2, v11

    .line 618
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 619
    .line 620
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .line 634
    .line 635
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .line 649
    .line 650
    goto/16 :goto_0

    .line 651
    .line 652
    :cond_c
    :goto_b
    return-object v1

    .line 653
    :cond_d
    new-instance v1, Landroid/graphics/Rect;

    .line 654
    .line 655
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 656
    .line 657
    .line 658
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 659
    .line 660
    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mFaceVISizePercent:Landroid/graphics/PointF;

    .line 661
    .line 662
    new-instance v7, Landroid/graphics/Point;

    .line 663
    .line 664
    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 665
    .line 666
    .line 667
    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDm:Landroid/hardware/display/DisplayManager;

    .line 668
    .line 669
    const/4 v9, 0x0

    .line 670
    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 671
    .line 672
    .line 673
    move-result-object v8

    .line 674
    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 675
    .line 676
    .line 677
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDisplay:Landroid/view/Display;

    .line 678
    .line 679
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    if-eq v0, v4, :cond_f

    .line 684
    .line 685
    if-eq v0, v5, :cond_e

    .line 686
    .line 687
    iget v0, v7, Landroid/graphics/Point;->x:I

    .line 688
    .line 689
    int-to-float v0, v0

    .line 690
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 691
    .line 692
    iget v4, v6, Landroid/graphics/PointF;->x:F

    .line 693
    .line 694
    const/high16 v5, 0x3f000000    # 0.5f

    .line 695
    .line 696
    mul-float v8, v4, v5

    .line 697
    .line 698
    sub-float/2addr v3, v8

    .line 699
    mul-float/2addr v3, v0

    .line 700
    float-to-int v3, v3

    .line 701
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 702
    .line 703
    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 704
    .line 705
    int-to-float v7, v7

    .line 706
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 707
    .line 708
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 709
    .line 710
    mul-float/2addr v5, v6

    .line 711
    sub-float/2addr v2, v5

    .line 712
    mul-float/2addr v2, v7

    .line 713
    float-to-int v2, v2

    .line 714
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 715
    .line 716
    int-to-float v3, v3

    .line 717
    mul-float/2addr v0, v4

    .line 718
    add-float/2addr v0, v3

    .line 719
    float-to-int v0, v0

    .line 720
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 721
    .line 722
    int-to-float v0, v2

    .line 723
    mul-float/2addr v7, v6

    .line 724
    add-float/2addr v7, v0

    .line 725
    float-to-int v0, v7

    .line 726
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 727
    .line 728
    goto :goto_c

    .line 729
    :cond_e
    iget v0, v7, Landroid/graphics/Point;->x:I

    .line 730
    .line 731
    int-to-float v0, v0

    .line 732
    iget v4, v2, Landroid/graphics/PointF;->y:F

    .line 733
    .line 734
    sub-float/2addr v3, v4

    .line 735
    mul-float/2addr v3, v0

    .line 736
    iget v4, v7, Landroid/graphics/Point;->y:I

    .line 737
    .line 738
    int-to-float v4, v4

    .line 739
    iget v5, v6, Landroid/graphics/PointF;->x:F

    .line 740
    .line 741
    mul-float/2addr v5, v4

    .line 742
    const/high16 v7, 0x3f000000    # 0.5f

    .line 743
    .line 744
    mul-float v8, v5, v7

    .line 745
    .line 746
    sub-float/2addr v3, v8

    .line 747
    float-to-int v3, v3

    .line 748
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 749
    .line 750
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 751
    .line 752
    mul-float/2addr v4, v2

    .line 753
    iget v2, v6, Landroid/graphics/PointF;->y:F

    .line 754
    .line 755
    mul-float/2addr v0, v2

    .line 756
    mul-float v2, v0, v7

    .line 757
    .line 758
    sub-float/2addr v4, v2

    .line 759
    float-to-int v2, v4

    .line 760
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 761
    .line 762
    int-to-float v3, v3

    .line 763
    add-float/2addr v5, v3

    .line 764
    float-to-int v3, v5

    .line 765
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 766
    .line 767
    int-to-float v2, v2

    .line 768
    add-float/2addr v0, v2

    .line 769
    float-to-int v0, v0

    .line 770
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 771
    .line 772
    goto :goto_c

    .line 773
    :cond_f
    iget v0, v7, Landroid/graphics/Point;->x:I

    .line 774
    .line 775
    int-to-float v0, v0

    .line 776
    iget v4, v2, Landroid/graphics/PointF;->y:F

    .line 777
    .line 778
    mul-float/2addr v4, v0

    .line 779
    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 780
    .line 781
    int-to-float v5, v5

    .line 782
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 783
    .line 784
    mul-float/2addr v7, v5

    .line 785
    const/high16 v8, 0x3f000000    # 0.5f

    .line 786
    .line 787
    mul-float v9, v7, v8

    .line 788
    .line 789
    sub-float/2addr v4, v9

    .line 790
    float-to-int v4, v4

    .line 791
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 792
    .line 793
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 794
    .line 795
    sub-float/2addr v3, v2

    .line 796
    mul-float/2addr v3, v5

    .line 797
    iget v2, v6, Landroid/graphics/PointF;->y:F

    .line 798
    .line 799
    mul-float/2addr v0, v2

    .line 800
    mul-float v2, v0, v8

    .line 801
    .line 802
    sub-float/2addr v3, v2

    .line 803
    float-to-int v2, v3

    .line 804
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 805
    .line 806
    int-to-float v3, v4

    .line 807
    add-float/2addr v7, v3

    .line 808
    float-to-int v3, v7

    .line 809
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 810
    .line 811
    int-to-float v2, v2

    .line 812
    add-float/2addr v0, v2

    .line 813
    float-to-int v0, v0

    .line 814
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 815
    .line 816
    :goto_c
    return-object v1

    .line 817
    :sswitch_data_0
    .sparse-switch
        -0x51134330 -> :sswitch_3
        -0x3e6d7dce -> :sswitch_2
        0x36b1ad -> :sswitch_1
        0x37260c -> :sswitch_0
    .end sparse-switch
.end method

.method public final initialize()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->PUNCH_HOLE_VI_INFO:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const-string v0, "BSS_PunchHoleVIHelper"

    .line 13
    .line 14
    const-string v1, "There is no punch hole info!"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return v3

    .line 20
    :cond_0
    const-string v2, ","

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    array-length v4, v2

    .line 27
    move v5, v3

    .line 28
    :goto_0
    const-string v6, "size"

    .line 29
    .line 30
    const-string v7, "pos"

    .line 31
    .line 32
    const/4 v8, 0x1

    .line 33
    if-ge v5, v4, :cond_f

    .line 34
    .line 35
    aget-object v9, v2, v5

    .line 36
    .line 37
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    iget-boolean v11, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mIsFolderOpened:Z

    .line 42
    .line 43
    iget-boolean v13, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mIsSupportDualDisplay:Z

    .line 44
    .line 45
    const/4 v14, 0x3

    .line 46
    const/4 v15, 0x2

    .line 47
    const-string v3, ":"

    .line 48
    .line 49
    if-eqz v7, :cond_6

    .line 50
    .line 51
    if-eqz v13, :cond_1

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v7, v14

    .line 56
    :goto_1
    invoke-static {v9, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    array-length v12, v10

    .line 61
    if-eq v12, v7, :cond_2

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_2
    if-eqz v13, :cond_5

    .line 65
    .line 66
    new-instance v7, Landroid/graphics/PointF;

    .line 67
    .line 68
    if-eqz v11, :cond_3

    .line 69
    .line 70
    move v12, v8

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move v12, v14

    .line 73
    :goto_2
    aget-object v12, v10, v12

    .line 74
    .line 75
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-eqz v11, :cond_4

    .line 80
    .line 81
    move/from16 v17, v15

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const/16 v17, 0x4

    .line 85
    .line 86
    :goto_3
    aget-object v10, v10, v17

    .line 87
    .line 88
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    invoke-direct {v7, v12, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 93
    .line 94
    .line 95
    iput-object v7, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_5
    new-instance v7, Landroid/graphics/PointF;

    .line 99
    .line 100
    aget-object v12, v10, v8

    .line 101
    .line 102
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    aget-object v10, v10, v15

    .line 107
    .line 108
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    invoke-direct {v7, v12, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 113
    .line 114
    .line 115
    iput-object v7, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 116
    .line 117
    :cond_6
    :goto_4
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_c

    .line 122
    .line 123
    invoke-static {v9, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    if-eqz v13, :cond_7

    .line 128
    .line 129
    const/4 v12, 0x5

    .line 130
    goto :goto_5

    .line 131
    :cond_7
    move v12, v14

    .line 132
    :goto_5
    array-length v7, v6

    .line 133
    if-eq v7, v12, :cond_8

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_8
    if-eqz v13, :cond_b

    .line 137
    .line 138
    new-instance v7, Landroid/graphics/PointF;

    .line 139
    .line 140
    if-eqz v11, :cond_9

    .line 141
    .line 142
    move v14, v8

    .line 143
    :cond_9
    aget-object v10, v6, v14

    .line 144
    .line 145
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-eqz v11, :cond_a

    .line 150
    .line 151
    move/from16 v16, v15

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_a
    const/16 v16, 0x4

    .line 155
    .line 156
    :goto_6
    aget-object v6, v6, v16

    .line 157
    .line 158
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-direct {v7, v10, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 163
    .line 164
    .line 165
    iput-object v7, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mFaceVISizePercent:Landroid/graphics/PointF;

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_b
    new-instance v7, Landroid/graphics/PointF;

    .line 169
    .line 170
    aget-object v10, v6, v8

    .line 171
    .line 172
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    aget-object v6, v6, v15

    .line 177
    .line 178
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    invoke-direct {v7, v10, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 183
    .line 184
    .line 185
    iput-object v7, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mFaceVISizePercent:Landroid/graphics/PointF;

    .line 186
    .line 187
    :cond_c
    :goto_7
    const-string v6, "type"

    .line 188
    .line 189
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_e

    .line 194
    .line 195
    invoke-static {v9, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    array-length v6, v3

    .line 200
    if-ge v6, v15, :cond_d

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v7, "punch_hole_ic_"

    .line 206
    .line 207
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    aget-object v7, v3, v8

    .line 211
    .line 212
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    iput-object v6, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mVIFileName:Ljava/lang/String;

    .line 220
    .line 221
    aget-object v3, v3, v8

    .line 222
    .line 223
    iput-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mVIType:Ljava/lang/String;

    .line 224
    .line 225
    :cond_e
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 226
    .line 227
    const/4 v3, 0x0

    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_f
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-nez v2, :cond_10

    .line 235
    .line 236
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_10

    .line 241
    .line 242
    move v1, v8

    .line 243
    goto :goto_9

    .line 244
    :cond_10
    const/4 v1, 0x0

    .line 245
    :goto_9
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mIsBasedOnType:Z

    .line 246
    .line 247
    if-eqz v1, :cond_12

    .line 248
    .line 249
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mVIFileName:Ljava/lang/String;

    .line 250
    .line 251
    if-eqz v0, :cond_11

    .line 252
    .line 253
    move v3, v8

    .line 254
    goto :goto_a

    .line 255
    :cond_11
    const/4 v3, 0x0

    .line 256
    :goto_a
    return v3

    .line 257
    :cond_12
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 258
    .line 259
    if-eqz v1, :cond_13

    .line 260
    .line 261
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mFaceVISizePercent:Landroid/graphics/PointF;

    .line 262
    .line 263
    if-eqz v1, :cond_13

    .line 264
    .line 265
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mVIFileName:Ljava/lang/String;

    .line 266
    .line 267
    if-eqz v0, :cond_13

    .line 268
    .line 269
    move v3, v8

    .line 270
    goto :goto_b

    .line 271
    :cond_13
    const/4 v3, 0x0

    .line 272
    :goto_b
    return v3
.end method
