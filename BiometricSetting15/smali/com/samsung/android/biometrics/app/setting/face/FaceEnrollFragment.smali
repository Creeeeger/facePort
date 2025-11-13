.class public Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

.field public mEnrollView:Landroid/view/View;

.field public mHandler:Landroid/os/Handler;

.field public mFacePreview:Landroid/view/View;


.field public mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mFacePreview:Landroid/view/View;


    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 8
    .line 9
    iget v1, v0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 10
    .line 11
    if-lt v1, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 15
    .line 16
    .line 17
    :goto_0
    const-string p1, "BSS_FaceEnrollFragment"

    .line 18
    .line 19
    const-string v0, "onCreate"

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    new-instance p1, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 1
    const-string v0, "BSS_FaceEnrollFragment"

    .line 2
    .line 3
    const-string v1, "onCreateView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->activity:Landroid/app/Activity;

    .line 15
    .line 16
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    :goto_0
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const v0, 0x7f0d0028

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;
    const/4 v9, 0x0

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mFacePreview:Landroid/view/View;


    .line 38
    .line 39
    if-eqz p2, :cond_c

    .line 40
    .line 41
    if-eqz p1, :cond_c

    .line 42
    .line 43
    const p2, 0x7f0a00d6

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/Button;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 56
    .line 57
    .line 58
    :cond_2
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    const-wide/16 v2, 0x7d0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const-wide/16 v2, 0x3e8

    .line 75
    .line 76
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mHandler:Landroid/os/Handler;

    .line 77
    .line 78
    invoke-virtual {v4, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    const-string v3, "BSS_FaceEnrollActivity"

    .line 89
    .line 90
    const-string v4, "initFaceEnroll"

    .line 91
    .line 92
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const v3, 0x7f0a00df

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object v3, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 105
    .line 106
    const v3, 0x7f0a015e

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object v3, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Landroid/widget/Button;

    .line 122
    .line 123
    iput-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    .line 124
    .line 125
    const p2, 0x7f0a00d7

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 133
    .line 134
    iput-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 135
    .line 136
    const p2, 0x7f0a00e0

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    check-cast p2, Landroid/widget/TextView;

    .line 144
    .line 145
    iput-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 146
    .line 147
    const p2, 0x7f0a0180

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    check-cast p2, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 155
    .line 156
    iput-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 157
    .line 158
    const p2, 0x7f0a0122

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    iput-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;

    .line 166
    .line 167
    if-eqz p2, :cond_4

    .line 168
    .line 169
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    :cond_4
    sget-boolean p2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FACE_FEATURE_POSE_ENROLL:Z

    .line 173
    .line 174
    if-eqz p2, :cond_5

    .line 175
    .line 176
    const p2, 0x7f0a0159

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 184
    .line 185
    iput-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 186
    .line 187
    :cond_5
    sget-boolean p2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    .line 188
    .line 189
    if-eqz p2, :cond_5a

    const v9, 0x7f0a00ca

    goto :goto_face_preview

    :cond_5a
    const v9, 0x7f0a007a

    :goto_face_preview
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    iput-object v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mFacePreview:Landroid/view/View;

    .line 194
    .line 195
    .line 196
    if-eqz p2, :cond_6

    .line 197
    const p2, 0x7f0a007a

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    check-cast p2, Landroid/widget/ImageView;

    .line 205
    .line 206
    iput-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCameraPreview:Landroid/widget/ImageView;

    .line 207
    .line 208
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    :cond_6
    sget-boolean p2, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 206
    .line 207
    if-nez p2, :cond_7

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    const/16 v2, 0x2000

    .line 214
    .line 215
    invoke-virtual {p2, v2}, Landroid/view/Window;->addFlags(I)V

    .line 216
    .line 217
    .line 218
    :cond_7
    sget-boolean p2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    .line 219
    .line 220
    if-eqz p2, :cond_8

    .line 221
    .line 222
    iget-boolean p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSupportDualDisplay:Z

    .line 223
    .line 224
    invoke-static {p1, p2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getFolderOpenState(Landroid/content/Context;Z)Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-nez p2, :cond_8

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showFolderOpenDialog()V

    .line 231
    .line 232
    .line 233
    :cond_8
    iget-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    .line 234
    .line 235
    if-eqz p2, :cond_9

    .line 236
    .line 237
    const v2, 0x7f10006d

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    new-array v3, v0, [Ljava/lang/CharSequence;

    .line 245
    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    const-string v5, "%d"

    .line 255
    .line 256
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    aput-object v4, v3, v1

    .line 261
    .line 262
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    :cond_9
    iget-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 270
    .line 271
    if-eqz p2, :cond_a

    .line 272
    .line 273
    const v2, 0x7f10007b

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 277
    .line 278
    .line 279
    iget-boolean p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 280
    .line 281
    if-eqz p2, :cond_a

    .line 282
    .line 283
    iget-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 284
    .line 285
    invoke-virtual {p1, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getPositionGuideText(Z)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    iget-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 293
    .line 294
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    :cond_a
    iget-object p2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    .line 298
    .line 299
    if-eqz p2, :cond_b

    .line 300
    .line 301
    iget-boolean v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    .line 302
    .line 303
    if-eqz v1, :cond_b

    .line 304
    .line 305
    const/16 v1, 0x8

    .line 306
    .line 307
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    :cond_b
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 311
    .line 312
    if-eqz p1, :cond_c

    .line 313
    .line 314
    iput v0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 315
    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 317
    .line 318
    .line 319
    move-result-wide v1

    .line 320
    iput-wide v1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mStartingTimestamp:J

    .line 321
    .line 322
    iput-boolean v0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->stopScanEffect()V

    .line 325
    .line 326
    .line 327
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    .line 328
    .line 329
    return-object p0
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    const-string v0, "onDestroy"

    .line 2
    .line 3
    const-string v1, "BSS_FaceEnrollFragment"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v0, "remove PunchHoleVIView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->pause()V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mWindowManager:Landroid/view/WindowManager;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchCutView:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchCutView:Landroid/view/View;

    .line 42
    .line 43
    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "BSS_PunchHoleVIView"

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 57
    .line 58
    :cond_2
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 60
    .line 61
    return-void
.end method
