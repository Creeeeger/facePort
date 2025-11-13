.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;
.super Landroid/widget/FrameLayout;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field static final ASSET_NAME_OPTICAL_GREEN:Ljava/lang/String; = "indisplay_fingerprint_touch_effect_green_circle.json"

.field static final ASSET_NAME_OPTICAL_WHITE:Ljava/lang/String; = "indisplay_fingerprint_touch_effect_white_circle.json"

.field static final ASSET_NAME_ULTRASONIC:Ljava/lang/String; = "indisplay_fingerprint_touch_effect_ripple.json"


# instance fields
.field public mAnimationDuration:J

.field public mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$Callback;

.field public final mContext:Landroid/content/Context;

.field mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mEffectViews:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public mIsReadTouchMap:Z

.field public mReadTouchMapThread:Ljava/lang/Thread;

.field public mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

.field public final mStartCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

.field public final mStopCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

.field public final mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

.field public mTouchMapStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMapStartTime:J

    .line 7
    .line 8
    const-wide/16 v0, 0x3e8

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mAnimationDuration:J

    .line 11
    .line 12
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;I)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStartCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;I)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    new-instance p2, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    .line 42
    .line 43
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    .line 47
    .line 48
    new-instance p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->updateLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final init(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$Callback;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    .line 13
    .line 14
    check-cast v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    invoke-virtual {v1, v2}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    array-length v3, v1

    .line 49
    if-lez v3, :cond_0

    .line 50
    .line 51
    array-length v3, v1

    .line 52
    move v4, v2

    .line 53
    :goto_0
    if-ge v4, v3, :cond_0

    .line 54
    .line 55
    aget-object v5, v1, v4

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 58
    .line 59
    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 64
    .line 65
    .line 66
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$Callback;

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    new-instance v0, Ljava/io/File;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const-string v1, "user_fingerprint_touch_effect.png"

    .line 82
    .line 83
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    const/4 v1, 0x0

    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move-object p2, v1

    .line 103
    :goto_1
    if-nez p2, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    new-instance v0, Landroid/widget/ImageView;

    .line 107
    .line 108
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 117
    .line 118
    new-instance v3, Landroid/util/Pair;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const v5, 0x7f010018

    .line 125
    .line 126
    .line 127
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    check-cast p2, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 140
    .line 141
    new-instance v3, Landroid/util/Pair;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    const v5, 0x7f010019

    .line 148
    .line 149
    .line 150
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    check-cast p2, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 163
    .line 164
    check-cast p2, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    const/4 v0, 0x4

    .line 171
    if-eqz p2, :cond_b

    .line 172
    .line 173
    new-instance p2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 174
    .line 175
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    invoke-direct {p2, v3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 181
    .line 182
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    const-string v3, "BSS_InDisplayCustom"

    .line 185
    .line 186
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    const-string v6, "user_fingerprint_touch_effect.json"

    .line 193
    .line 194
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->readFile(Ljava/io/File;)[B

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    if-eqz v4, :cond_4

    .line 202
    .line 203
    new-instance v5, Ljava/lang/String;

    .line 204
    .line 205
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 206
    .line 207
    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    .line 210
    goto :goto_7

    .line 211
    :catch_0
    move-exception v4

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v6, "getCustomTouchEffect error : "

    .line 215
    .line 216
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    const v4, 0x7f0f0002

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 237
    .line 238
    .line 239
    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    new-array v5, v4, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    .line 246
    if-nez v4, :cond_5

    .line 247
    .line 248
    :goto_3
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 249
    .line 250
    .line 251
    :goto_4
    move-object v5, v1

    .line 252
    goto :goto_7

    .line 253
    :catch_1
    move-exception p2

    .line 254
    goto :goto_6

    .line 255
    :cond_5
    :try_start_4
    invoke-virtual {p2, v5}, Ljava/io/InputStream;->read([B)I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-gtz v4, :cond_6

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_6
    new-instance v4, Ljava/lang/String;

    .line 263
    .line 264
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 265
    .line 266
    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 267
    .line 268
    .line 269
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 270
    .line 271
    .line 272
    move-object v5, v4

    .line 273
    goto :goto_7

    .line 274
    :catchall_0
    move-exception v4

    .line 275
    if-eqz p2, :cond_7

    .line 276
    .line 277
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 278
    .line 279
    .line 280
    goto :goto_5

    .line 281
    :catchall_1
    move-exception p2

    .line 282
    :try_start_7
    invoke-virtual {v4, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    :cond_7
    :goto_5
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 286
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v5, "IOException = e "

    .line 289
    .line 290
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 304
    .line 305
    .line 306
    goto :goto_4

    .line 307
    :goto_7
    if-eqz v5, :cond_8

    .line 308
    .line 309
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 310
    .line 311
    invoke-virtual {p1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-wide/16 p1, 0x1b58

    .line 315
    .line 316
    iput-wide p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mAnimationDuration:J

    .line 317
    .line 318
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 319
    .line 320
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;

    .line 321
    .line 322
    invoke-direct {p2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_8
    sget-boolean p2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 330
    .line 331
    if-eqz p2, :cond_a

    .line 332
    .line 333
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mLightColor:Ljava/lang/String;

    .line 334
    .line 335
    if-eqz p1, :cond_9

    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    const/4 v3, 0x6

    .line 342
    if-lt p2, v3, :cond_9

    .line 343
    .line 344
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    const/4 v3, 0x2

    .line 349
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-ne p2, v3, :cond_9

    .line 354
    .line 355
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 356
    .line 357
    .line 358
    move-result p2

    .line 359
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-ne p2, p1, :cond_9

    .line 364
    .line 365
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 366
    .line 367
    const-string p2, "indisplay_fingerprint_touch_effect_white_circle.json"

    .line 368
    .line 369
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 374
    .line 375
    const-string p2, "indisplay_fingerprint_touch_effect_green_circle.json"

    .line 376
    .line 377
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 381
    .line 382
    const p2, 0x3f333333    # 0.7f

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 386
    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 390
    .line 391
    const-string p2, "indisplay_fingerprint_touch_effect_ripple.json"

    .line 392
    .line 393
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    :goto_8
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 397
    .line 398
    new-instance p2, Landroid/util/Pair;

    .line 399
    .line 400
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 401
    .line 402
    invoke-direct {p2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    check-cast p1, Ljava/util/ArrayList;

    .line 406
    .line 407
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    :cond_b
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 411
    .line 412
    .line 413
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    .line 414
    .line 415
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    const/high16 p2, 0x43c80000    # 400.0f

    .line 420
    .line 421
    const/4 v1, 0x1

    .line 422
    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    float-to-int p1, p1

    .line 427
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 428
    .line 429
    check-cast p2, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_c

    .line 440
    .line 441
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    check-cast v1, Landroid/util/Pair;

    .line 446
    .line 447
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v1, Landroid/view/View;

    .line 450
    .line 451
    invoke-virtual {p0, v1, p1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 452
    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;

    .line 460
    .line 461
    invoke-direct {p2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->updateLayout()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 471
    .line 472
    .line 473
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaHeight:I

    .line 10
    .line 11
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginBottom:I

    .line 12
    .line 13
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginLeft:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    int-to-float v3, v3

    .line 24
    const/high16 v5, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr v3, v5

    .line 27
    int-to-float v0, v0

    .line 28
    add-float/2addr v3, v0

    .line 29
    int-to-float v0, v4

    .line 30
    int-to-float v2, v2

    .line 31
    int-to-float v1, v1

    .line 32
    div-float/2addr v1, v5

    .line 33
    add-float/2addr v1, v2

    .line 34
    sub-float/2addr v0, v1

    .line 35
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 36
    .line 37
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/util/Pair;

    .line 54
    .line 55
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Landroid/view/View;

    .line 58
    .line 59
    float-to-int v6, v3

    .line 60
    int-to-float v6, v6

    .line 61
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    int-to-float v7, v7

    .line 66
    div-float/2addr v7, v5

    .line 67
    sub-float/2addr v6, v7

    .line 68
    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 69
    .line 70
    .line 71
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Landroid/view/View;

    .line 74
    .line 75
    float-to-int v4, v0

    .line 76
    int-to-float v4, v4

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    int-to-float v6, v6

    .line 82
    div-float/2addr v6, v5

    .line 83
    sub-float/2addr v4, v6

    .line 84
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mEffectPath:Landroid/graphics/Path;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_3

    .line 105
    .line 106
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mEffectPath:Landroid/graphics/Path;

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_2
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$Callback;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStartCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->stopVI()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 25
    .line 26
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final stopVI()V
    .locals 3

    .line 1
    const-string v0, "BSS_VisualEffectContainer"

    .line 2
    .line 3
    const-string v1, "stop()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/airbnb/lottie/RenderMode;->SOFTWARE:Lcom/airbnb/lottie/RenderMode;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v1, 0x4

    .line 21
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$Callback;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardSensorWindow;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;->onVisualEffectFinished()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final updateLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaHeight:I

    .line 7
    .line 8
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginBottom:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 17
    .line 18
    int-to-float v3, v2

    .line 19
    const/high16 v4, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float/2addr v3, v4

    .line 22
    int-to-float v0, v0

    .line 23
    add-float/2addr v3, v0

    .line 24
    int-to-float v0, v1

    .line 25
    div-float/2addr v0, v4

    .line 26
    add-float/2addr v0, v3

    .line 27
    float-to-int v0, v0

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    .line 34
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 35
    .line 36
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 37
    .line 38
    const/16 v0, 0x51

    .line 39
    .line 40
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x1

    .line 55
    const/high16 v2, 0x43c80000    # 400.0f

    .line 56
    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    float-to-int v0, v0

    .line 62
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 63
    .line 64
    check-cast p0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/util/Pair;

    .line 81
    .line 82
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    .line 92
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    .line 94
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method
