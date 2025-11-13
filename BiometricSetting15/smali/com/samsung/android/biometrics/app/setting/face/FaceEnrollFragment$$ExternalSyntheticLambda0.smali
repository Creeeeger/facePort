.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

.field private mFacePreview:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    move-object v8, p0

    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mFacePreview:Landroid/view/View;

    const-string v2, "BSS_FaceEnrollFragment"

    const-wide/16 v3, 0x64

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gtz v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mFacePreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->context:Landroid/content/Context;

    .line 11
    .line 12
    :goto_0
    if-nez v2, :cond_1

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_1
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    move-object v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->context:Landroid/content/Context;

    .line 23
    .line 24
    :goto_1
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 28
    .line 29
    iput-object v1, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchCutView:Landroid/view/View;

    .line 30
    .line 31
    iput-object v0, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    .line 34
    .line 35
    invoke-direct {v4, v0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->initialize()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const-string v6, "BSS_PunchHoleVIView"

    .line 43
    .line 44
    if-nez v5, :cond_3

    .line 45
    .line 46
    const-string v0, "Punch hole initialize failed."

    .line 47
    .line 48
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_3
    const-string v5, "start initialize"

    .line 54
    .line 55
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const-string v5, "layout_inflater"

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Landroid/view/LayoutInflater;

    .line 65
    .line 66
    const v6, 0x7f0d002a

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchCutView:Landroid/view/View;

    .line 74
    .line 75
    const v5, 0x7f0a0160

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 83
    .line 84
    iput-object v1, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    invoke-virtual {v4, v5}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->getAnimationName(Z)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 95
    .line 96
    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 100
    .line 101
    sget-object v6, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    .line 102
    .line 103
    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->getPunchHoleVIRect()Landroid/graphics/Rect;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v4, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 111
    .line 112
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 113
    .line 114
    int-to-float v6, v6

    .line 115
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 116
    .line 117
    .line 118
    iget-object v4, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 119
    .line 120
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 121
    .line 122
    int-to-float v6, v6

    .line 123
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 124
    .line 125
    .line 126
    iget-object v4, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 145
    .line 146
    iget-object v1, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 152
    .line 153
    const/16 v4, 0x7d8

    .line 154
    .line 155
    const/16 v6, 0x128

    .line 156
    .line 157
    const/4 v7, -0x3

    .line 158
    invoke-direct {v1, v4, v6, v7}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 159
    .line 160
    .line 161
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 162
    .line 163
    const/16 v4, 0x30

    .line 164
    .line 165
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    .line 167
    const-string v4, "window"

    .line 168
    .line 169
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/view/WindowManager;

    .line 174
    .line 175
    iput-object v0, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mWindowManager:Landroid/view/WindowManager;

    .line 176
    .line 177
    iget-object v4, v3, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchCutView:Landroid/view/View;

    .line 178
    .line 179
    invoke-interface {v0, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 183
    .line 184
    const-string v0, "sensor_privacy"

    .line 185
    .line 186
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    .line 191
    .line 192
    const/4 v1, 0x2

    .line 193
    invoke-virtual {v0, v1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_5

    .line 198
    .line 199
    const-string v1, "BSS_FaceEnrollFragment"

    .line 200
    .line 201
    const-string v2, "Camera access is blocked."

    .line 202
    .line 203
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 207
    .line 208
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isColorThemeEnabled(Landroid/content/Context;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    const/4 v2, 0x0

    .line 213
    if-eqz v1, :cond_4

    .line 214
    .line 215
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 216
    .line 217
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_4

    .line 222
    .line 223
    move v1, v2

    .line 224
    goto :goto_3

    .line 225
    :cond_4
    const v1, 0x10302d1

    .line 226
    .line 227
    .line 228
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 229
    .line 230
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 231
    .line 232
    invoke-direct {v3, v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 233
    .line 234
    .line 235
    const v1, 0x7f100051

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 239
    .line 240
    .line 241
    const v1, 0x7f100050

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 245
    .line 246
    .line 247
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;

    .line 248
    .line 249
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;Landroid/hardware/SensorPrivacyManager;)V

    .line 250
    .line 251
    .line 252
    const v0, 0x7f10004f

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    .line 257
    .line 258
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda2;

    .line 259
    .line 260
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;)V

    .line 261
    .line 262
    .line 263
    const/high16 p0, 0x1040000

    .line 264
    .line 265
    invoke-virtual {v3, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 280
    .line 281
    if-eqz v0, :cond_6

    .line 282
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mFacePreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startEnrollment(Landroid/view/View;)V

    .line 284
    .line 285
    .line 286
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 287
    .line 288
    if-eqz p0, :cond_6

    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->play()V

    .line 291
    .line 292
    .line 293
    :cond_6
    :goto_4
    return-void

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    const-string v5, "Face preview not ready; retrying startEnrollment"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void
.end method
